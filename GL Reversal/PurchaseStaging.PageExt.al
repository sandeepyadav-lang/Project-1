// pageextension 50100 "Staging Reversal Actions" extends "Purchase Line - Staging"
// {
//     layout
//     {
//         addlast(Group)
//         {
//             field(Reversed; Rec.Reversed)
//             {
//                 ApplicationArea = All;
//                 Editable = false;
//                 ToolTip = 'Specifies whether all matching G/L transactions were reversed for this selected line.';
//             }
//         }
//     }

//     actions
//     {
//         addlast(Processing)
//         {
//             action(ReverseGLEntries)
//             {
//                 ApplicationArea = All;
//                 Caption = 'Reverse G/L Transactions';
//                 Image = ReverseRegister;
//                 Scope = Repeater;
//                 ToolTip = 'Reverse complete G/L transactions matching the selected document numbers.';

//                 trigger OnAction()
//                 var
//                     SelectedLines: Record "Purchase Line - Staging";
//                     ReversalManagement: Codeunit "Staging Reversal Management";
//                 begin
//                     CurrPage.SetSelectionFilter(SelectedLines);
//                     ReversalManagement.ReverseSelected(SelectedLines);
//                     CurrPage.Update(false);
//                 end;
//             }
//             action(ScheduleGLEntries)
//             {
//                 ApplicationArea = All;
//                 Caption = 'Schedule G/L Reversal';
//                 Image = Job;
//                 Scope = Repeater;
//                 ToolTip = 'Schedule reversal of complete G/L transactions matching the selected document numbers.';

//                 trigger OnAction()
//                 var
//                     SelectedLines: Record "Purchase Line - Staging";
//                     Scheduler: Codeunit "Staging Reversal Scheduler";
//                 begin
//                     CurrPage.SetSelectionFilter(SelectedLines);
//                     Scheduler.Schedule(SelectedLines);
//                 end;
//             }
//             action(ReversalQueueLog)
//             {
//                 ApplicationArea = All;
//                 Caption = 'Scheduled Reversal Results';
//                 Image = Entries;
//                 RunObject = page "Staging Reversal Queue Log";
//                 ToolTip = 'View scheduled reversal results and errors.';
//             }
//         }
//     }
// }
