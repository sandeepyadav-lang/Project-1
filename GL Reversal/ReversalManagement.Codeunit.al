// codeunit 50101 "Staging Reversal Management"
// {
//     procedure ReverseSelected(var SelectedLines: Record "Purchase Line - Staging")
//     var
//         StagingLine: Record "Purchase Line - Staging";
//         GLEntry: Record "G/L Entry";
//         TempGLEntry: Record "G/L Entry" temporary;
//         DocumentNos: Dictionary of [Code[20], Boolean];
//         TransactionResults: Dictionary of [Integer, Boolean];
//         DocumentResults: Dictionary of [Code[20], Boolean];
//         DocumentNo: Code[20];
//         ErrorDetails: Text;
//         ErrorText: Text;
//         TransactionCount: Integer;
//         MarkedCount: Integer;
//         Success: Boolean;
//     begin
//         if not SelectedLines.FindSet() then
//             Error(NoSelectionErr);

//         repeat
//             SelectedLines.TestField("Document No.");
//             if not DocumentNos.ContainsKey(SelectedLines."Document No.") then
//                 DocumentNos.Add(SelectedLines."Document No.", true);
//         until SelectedLines.Next() = 0;

//         foreach DocumentNo in DocumentNos.Keys() do begin
//             GLEntry.Reset();
//             GLEntry.SetRange("Document No.", DocumentNo);
//             GLEntry.SetRange("Reversed Entry No.", 0);
//             DocumentResults.Add(DocumentNo, not GLEntry.IsEmpty());
//             if GLEntry.FindSet() then
//                 repeat
//                     TempGLEntry := GLEntry;
//                     TempGLEntry.Insert();
//                     if (GLEntry."Transaction No." <> 0) and not TransactionResults.ContainsKey(GLEntry."Transaction No.") then begin
//                         TransactionResults.Add(GLEntry."Transaction No.", false);
//                         TransactionCount += 1;
//                     end;
//                 until GLEntry.Next() = 0
//             else
//                 ErrorDetails += StrSubstNo(NoEntriesErr, DocumentNo) + '\';
//         end;

//         if not Confirm(ReverseConfirmQst, false, TransactionCount) then
//             exit;

//         Clear(TransactionResults);
//         if TempGLEntry.FindSet() then
//             repeat
//                 GLEntry.Get(TempGLEntry."Entry No.");
//                 if GLEntry."Transaction No." <> TempGLEntry."Transaction No." then begin
//                     DocumentResults.Set(TempGLEntry."Document No.", false);
//                     ErrorDetails += StrSubstNo(TransactionChangedErr, GLEntry."Entry No.", TempGLEntry."Document No.") + '\';
//                 end else
//                 if GLEntry."Transaction No." = 0 then begin
//                     DocumentResults.Set(TempGLEntry."Document No.", false);
//                     ErrorDetails += StrSubstNo(NoTransactionErr, GLEntry."Entry No.", TempGLEntry."Document No.") + '\';
//                 end else begin
//                     if not TransactionResults.ContainsKey(TempGLEntry."Transaction No.") then begin
//                         if GLEntry.Reversed then
//                             Success := true
//                         else begin
//                             Commit();
//                             ClearLastError();
//                             Success := Codeunit.Run(Codeunit::"Staging Reverse Transaction", GLEntry);
//                             if not Success then begin
//                                 ErrorText := GetLastErrorText();
//                                 ErrorDetails += StrSubstNo(ReversalFailedErr, TempGLEntry."Transaction No.", TempGLEntry."Document No.", ErrorText) + '\';
//                             end;
//                         end;
//                         TransactionResults.Add(TempGLEntry."Transaction No.", Success);
//                     end;

//                     TransactionResults.Get(TempGLEntry."Transaction No.", Success);
//                     GLEntry.Get(TempGLEntry."Entry No.");
//                     if not Success then
//                         DocumentResults.Set(TempGLEntry."Document No.", false)
//                     else
//                         if not GLEntry.Reversed then begin
//                             DocumentResults.Set(TempGLEntry."Document No.", false);
//                             ErrorDetails += StrSubstNo(NotReversedErr, GLEntry."Entry No.", TempGLEntry."Document No.") + '\';
//                         end;
//                 end;
//             until TempGLEntry.Next() = 0;

//         if SelectedLines.FindSet() then
//             repeat
//                 DocumentResults.Get(SelectedLines."Document No.", Success);
//                 if Success then begin
//                     StagingLine.Get(SelectedLines."Document Type", SelectedLines."Document No.", SelectedLines."Line No.");
//                     StagingLine.Reversed := true;
//                     StagingLine.Modify();
//                     MarkedCount += 1;
//                 end;
//             until SelectedLines.Next() = 0;
//         Commit();

//         if ErrorDetails = '' then
//             Message(CompleteMsg, MarkedCount)
//         else
//             Message(CompleteWithErrorsMsg, MarkedCount, ErrorDetails);
//     end;

//     var
//         NoSelectionErr: Label 'Select at least one staging line.';
//         NoEntriesErr: Label 'Document %1: no original G/L entries were found.', Comment = '%1 = document number';
//         NoTransactionErr: Label 'G/L entry %1, document %2: transaction number is blank.', Comment = '%1 = entry number, %2 = document number';
//         TransactionChangedErr: Label 'G/L entry %1, document %2: transaction number changed during processing.', Comment = '%1 = entry number, %2 = document number';
//         ReversalFailedErr: Label 'Transaction %1, document %2: %3', Comment = '%1 = transaction number, %2 = document number, %3 = error';
//         NotReversedErr: Label 'G/L entry %1, document %2 is not reversed.', Comment = '%1 = entry number, %2 = document number';
//         ReverseConfirmQst: Label 'Reverse up to %1 entire G/L transactions now? Each reversal affects the full transaction, including entries not shown on this page.', Comment = '%1 = number of distinct transactions';
//         CompleteMsg: Label 'Reversal processing completed. %1 selected staging lines were marked Reversed.', Comment = '%1 = line count';
//         CompleteWithErrorsMsg: Label 'Reversal processing completed. %1 selected staging lines were marked Reversed. Errors:\%2', Comment = '%1 = line count, %2 = errors';
// }
