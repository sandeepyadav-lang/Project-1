page 50102 "Staging Reversal Entry Log"
{
    Caption = 'Staging Reversal G/L Entry Results';
    PageType = List;
    SourceTable = "Staging Reversal G/L Entry";
    Editable = false;
    layout
    {
        area(content)
        {
            repeater(Results)
            {
                field("Queue ID"; Rec."Queue ID") { ApplicationArea = All; ToolTip = 'Specifies the reversal request.'; }
                field("G/L Entry No."; Rec."G/L Entry No.") { ApplicationArea = All; ToolTip = 'Specifies the original G/L entry.'; }
                field("Document No."; Rec."Document No.") { ApplicationArea = All; ToolTip = 'Specifies the matched document number.'; }
                field("Transaction No."; Rec."Transaction No.") { ApplicationArea = All; ToolTip = 'Specifies the transaction that was selected for reversal.'; }
                field(Status; Rec.Status) { ApplicationArea = All; ToolTip = 'Specifies the result. Investigate Processing entries if a job was interrupted.'; }
                field("Error Message"; Rec."Error Message") { ApplicationArea = All; ToolTip = 'Specifies the error reported while reversing the transaction.'; }
            }
        }
    }
}
