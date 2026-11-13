// codeunit 50104 "Staging Reversal Queue Job"
// {
//     TableNo = "Job Queue Entry";

//     trigger OnRun()
//     var
//         Queue: Record "Staging Reversal Queue";
//         QueueEntry: Record "Staging Reversal G/L Entry";
//         Selection: Record "Staging Reversal Selection";
//         RecordRef: RecordRef;
//         Results: Dictionary of [Integer, Boolean];
//         Errors: Dictionary of [Integer, Text];
//         ErrorText: Text;
//         Success: Boolean;
//     begin
//         Rec.TestField("Record ID to Process");
//         RecordRef.Get(Rec."Record ID to Process");
//         RecordRef.SetTable(Queue);
//         Queue.LockTable();
//         Queue.Get(Queue.ID);
//         Queue.TestField(Status, Queue.Status::Scheduled);
//         Queue.Status := Queue.Status::Running;
//         Queue.Modify();
//         Commit();

//         QueueEntry.SetRange("Queue ID", Queue.ID);
//         QueueEntry.SetRange(Status, QueueEntry.Status::Waiting);
//         while QueueEntry.FindFirst() do begin
//             QueueEntry.Status := QueueEntry.Status::Processing;
//             QueueEntry.Modify();
//             Commit();

//             if (QueueEntry."Transaction No." <> 0) and Results.ContainsKey(QueueEntry."Transaction No.") then begin
//                 Results.Get(QueueEntry."Transaction No.", Success);
//                 Errors.Get(QueueEntry."Transaction No.", ErrorText);
//                 if Success then
//                     CheckReversedEntry(QueueEntry, Success, ErrorText);
//             end else begin
//                 ReverseEntry(QueueEntry, Success, ErrorText);
//                 if QueueEntry."Transaction No." <> 0 then begin
//                     Results.Add(QueueEntry."Transaction No.", Success);
//                     Errors.Add(QueueEntry."Transaction No.", ErrorText);
//                 end;
//             end;
//             QueueEntry.Get(QueueEntry."Queue ID", QueueEntry."G/L Entry No.");
//             if Success then
//                 QueueEntry.Status := QueueEntry.Status::Reversed
//             else begin
//                 QueueEntry.Status := QueueEntry.Status::Failed;
//                 QueueEntry."Error Message" := CopyStr(ErrorText, 1, MaxStrLen(QueueEntry."Error Message"));
//             end;
//             QueueEntry.Modify();
//             Commit();
//         end;

//         Selection.SetRange("Queue ID", Queue.ID);
//         if Selection.FindSet() then
//             repeat
//                 FinishSelection(Selection);
//                 Commit();
//             until Selection.Next() = 0;

//         Queue.Get(Queue.ID);
//         Queue.Status := Queue.Status::Completed;
//         Queue."Finished At" := CurrentDateTime();
//         Queue.Modify();
//     end;

//     local procedure ReverseEntry(QueueEntry: Record "Staging Reversal G/L Entry"; var Success: Boolean; var ErrorText: Text)
//     var
//         GLEntry: Record "G/L Entry";
//     begin
//         Success := false;
//         Clear(ErrorText);
//         if not DocumentUnchanged(QueueEntry) then begin
//             ErrorText := EntriesChangedErr;
//             exit;
//         end;
//         if QueueEntry."Transaction No." = 0 then begin
//             ErrorText := NoTransactionErr;
//             exit;
//         end;
//         if not GLEntry.Get(QueueEntry."G/L Entry No.") then begin
//             ErrorText := EntryMissingErr;
//             exit;
//         end;
//         if (GLEntry."Document No." <> QueueEntry."Document No.") or
//            (GLEntry."Transaction No." <> QueueEntry."Transaction No.") then begin
//             ErrorText := EntryChangedErr;
//             exit;
//         end;
//         if GLEntry.Reversed then begin
//             Success := true;
//             exit;
//         end;

//         ClearLastError();
//         Success := Codeunit.Run(Codeunit::"Staging Reverse Transaction", GLEntry);
//         if not Success then
//             ErrorText := GetLastErrorText();
//     end;

//     local procedure DocumentUnchanged(QueueEntry: Record "Staging Reversal G/L Entry"): Boolean
//     var
//         SnapshotEntry: Record "Staging Reversal G/L Entry";
//         GLEntry: Record "G/L Entry";
//     begin
//         GLEntry.SetRange("Document No.", QueueEntry."Document No.");
//         GLEntry.SetRange("Reversed Entry No.", 0);
//         if not GLEntry.FindSet() then
//             exit(false);
//         repeat
//             if not SnapshotEntry.Get(QueueEntry."Queue ID", GLEntry."Entry No.") then
//                 exit(false);
//             if SnapshotEntry."Transaction No." <> GLEntry."Transaction No." then
//                 exit(false);
//         until GLEntry.Next() = 0;
//         exit(true);
//     end;

//     local procedure CheckReversedEntry(QueueEntry: Record "Staging Reversal G/L Entry"; var Success: Boolean; var ErrorText: Text)
//     var
//         GLEntry: Record "G/L Entry";
//     begin
//         Success := false;
//         if not GLEntry.Get(QueueEntry."G/L Entry No.") then begin
//             ErrorText := EntryMissingErr;
//             exit;
//         end;
//         if (GLEntry."Document No." <> QueueEntry."Document No.") or
//            (GLEntry."Transaction No." <> QueueEntry."Transaction No.") then begin
//             ErrorText := EntryChangedErr;
//             exit;
//         end;
//         if not GLEntry.Reversed then begin
//             ErrorText := NotReversedErr;
//             exit;
//         end;
//         Success := true;
//         Clear(ErrorText);
//     end;

//     local procedure FinishSelection(var Selection: Record "Staging Reversal Selection")
//     var
//         StagingLine: Record "Purchase Line - Staging";
//         QueueEntry: Record "Staging Reversal G/L Entry";
//         GLEntry: Record "G/L Entry";
//     begin
//         Selection.Status := Selection.Status::Failed;
//         if not StagingLine.GetBySystemId(Selection."Staging System ID") then
//             Selection."Error Message" := StagingMissingErr
//         else
//             if StagingLine."Document No." <> Selection."Document No." then
//                 Selection."Error Message" := StagingChangedErr
//             else begin
//                 QueueEntry.SetRange("Queue ID", Selection."Queue ID");
//                 QueueEntry.SetRange("Document No.", Selection."Document No.");
//                 if QueueEntry.IsEmpty() then
//                     Selection."Error Message" := NoEntriesErr
//                 else begin
//                     QueueEntry.SetFilter(Status, '<>%1', QueueEntry.Status::Reversed);
//                     if QueueEntry.FindFirst() then
//                         Selection."Error Message" := CopyStr(StrSubstNo(EntryFailedErr, QueueEntry."G/L Entry No.", QueueEntry."Error Message"), 1, MaxStrLen(Selection."Error Message"))
//                     else begin
//                         GLEntry.SetRange("Document No.", Selection."Document No.");
//                         GLEntry.SetRange("Reversed Entry No.", 0);
//                         if GLEntry.FindSet() then
//                             repeat
//                                 if not QueueEntry.Get(Selection."Queue ID", GLEntry."Entry No.") or not GLEntry.Reversed then
//                                     Selection."Error Message" := EntriesChangedErr;
//                             until GLEntry.Next() = 0;
//                         if Selection."Error Message" = '' then begin
//                             StagingLine.Reversed := true;
//                             StagingLine.Modify();
//                             Selection.Status := Selection.Status::Reversed;
//                         end;
//                     end;
//                 end;
//             end;
//         Selection.Modify();
//     end;

//     var
//         NoTransactionErr: Label 'The G/L entry has no transaction number.';
//         EntryMissingErr: Label 'The G/L entry no longer exists.';
//         EntryChangedErr: Label 'The G/L entry document or transaction number changed after scheduling.';
//         NotReversedErr: Label 'The G/L entry was not reversed.';
//         StagingMissingErr: Label 'The selected staging line no longer exists.';
//         StagingChangedErr: Label 'The selected staging line document number changed after scheduling.';
//         NoEntriesErr: Label 'No original G/L entries matched the document when the job was scheduled.';
//         EntryFailedErr: Label 'G/L entry %1 failed: %2', Comment = '%1 = G/L entry number, %2 = error message';
//         EntriesChangedErr: Label 'The document has an unqueued or unreversed G/L entry. Review it before marking this line reversed.';
// }
