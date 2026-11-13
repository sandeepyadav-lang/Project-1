// codeunit 50102 "Staging Reversal Scheduler"
// {
//     procedure Schedule(var SelectedLines: Record "Purchase Line - Staging")
//     var
//         Queue: Record "Staging Reversal Queue";
//         Selection: Record "Staging Reversal Selection";
//         QueueEntry: Record "Staging Reversal G/L Entry";
//         GLEntry: Record "G/L Entry";
//         JobQueueEntry: Record "Job Queue Entry";
//         SchedulePage: Page "Staging Reversal Schedule";
//         DocumentNos: Dictionary of [Code[20], Boolean];
//         DocumentNo: Code[20];
//         TransactionNos: Dictionary of [Integer, Boolean];
//     begin
//         if not SelectedLines.FindSet() then
//             Error(NoSelectionErr);

//         if SchedulePage.RunModal() <> Action::OK then
//             exit;

//         Queue.Init();
//         Queue.ID := CreateGuid();
//         Queue."Created By" := CopyStr(UserId(), 1, MaxStrLen(Queue."Created By"));
//         Queue."Scheduled For" := SchedulePage.GetStartTime();
//         Queue.Insert();

//         repeat
//             SelectedLines.TestField("Document No.");
//             Selection.Init();
//             Selection."Queue ID" := Queue.ID;
//             Selection."Staging System ID" := SelectedLines.SystemId;
//             Selection."Document No." := SelectedLines."Document No.";
//             Selection.Insert();
//             if not DocumentNos.ContainsKey(SelectedLines."Document No.") then
//                 DocumentNos.Add(SelectedLines."Document No.", true);
//         until SelectedLines.Next() = 0;

//         foreach DocumentNo in DocumentNos.Keys() do begin
//             GLEntry.Reset();
//             GLEntry.SetRange("Document No.", DocumentNo);
//             GLEntry.SetRange("Reversed Entry No.", 0);
//             if GLEntry.FindSet() then
//                 repeat
//                     QueueEntry.Init();
//                     QueueEntry."Queue ID" := Queue.ID;
//                     QueueEntry."G/L Entry No." := GLEntry."Entry No.";
//                     QueueEntry."Document No." := DocumentNo;
//                     QueueEntry."Transaction No." := GLEntry."Transaction No.";
//                     QueueEntry.Insert();
//                     if (GLEntry."Transaction No." <> 0) and not TransactionNos.ContainsKey(GLEntry."Transaction No.") then
//                         TransactionNos.Add(GLEntry."Transaction No.", true);
//                 until GLEntry.Next() = 0;
//         end;

//         if not Confirm(ConfirmQst, false, TransactionNos.Count(), Queue."Scheduled For") then
//             Error(CancelledErr);

//         JobQueueEntry."Object Type to Run" := JobQueueEntry."Object Type to Run"::Codeunit;
//         JobQueueEntry."Object ID to Run" := Codeunit::"Staging Reversal Queue Job";
//         JobQueueEntry."Record ID to Process" := Queue.RecordId();
//         JobQueueEntry."Earliest Start Date/Time" := Queue."Scheduled For";
//         JobQueueEntry."Maximum No. of Attempts to Run" := 1;
//         JobQueueEntry.Description := JobDescriptionLbl;
//         Codeunit.Run(Codeunit::"Job Queue - Enqueue", JobQueueEntry);
//         Queue."Job Queue Entry ID" := JobQueueEntry.ID;
//         Queue.Modify();
//         Message(ScheduledMsg, Queue.ID);
//     end;

//     var
//         NoSelectionErr: Label 'Select at least one staging line.';
//         ConfirmQst: Label 'Schedule reversal of up to %1 entire G/L transactions at or after %2? Each reversal affects the full transaction, including entries not shown on this page.', Comment = '%1 = transaction count, %2 = earliest start time';
//         CancelledErr: Label 'The reversal request was cancelled.';
//         JobDescriptionLbl: Label 'Reverse staging G/L transactions';
//         ScheduledMsg: Label 'Reversal request %1 was scheduled. Open Staging Reversal Queue Log to review results.', Comment = '%1 = queue ID';
// }
