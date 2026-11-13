page 50101 "Staging Reversal Queue Log"
{
    ApplicationArea = All;
    Caption = 'Staging Reversal Queue Log';
    PageType = List;
    SourceTable = "Staging Reversal Selection";
    UsageCategory = History;
    Editable = false;
    layout
    {
        area(content)
        {
            repeater(Results)
            {
                field("Queue ID"; Rec."Queue ID") { ApplicationArea = All; ToolTip = 'Specifies the reversal request.'; }
                field("Staging System ID"; Rec."Staging System ID") { ApplicationArea = All; ToolTip = 'Identifies the selected staging line.'; }
                field("Document No."; Rec."Document No.") { ApplicationArea = All; ToolTip = 'Specifies the selected document number.'; }
                field(Status; Rec.Status) { ApplicationArea = All; ToolTip = 'Specifies the result for this selected line.'; }
                field("Error Message"; Rec."Error Message") { ApplicationArea = All; ToolTip = 'Specifies why the line was not marked as reversed.'; }
            }
        }
    }
    actions
    {
        area(processing)
        {
            action(Entries)
            {
                ApplicationArea = All;
                Caption = 'G/L Entry Results';
                Image = Entries;
                ToolTip = 'Shows the G/L entry results for this reversal request.';
                trigger OnAction()
                var
                    QueueEntry: Record "Staging Reversal G/L Entry";
                begin
                    QueueEntry.SetRange("Queue ID", Rec."Queue ID");
                    Page.Run(Page::"Staging Reversal Entry Log", QueueEntry);
                end;
            }
        }
    }
}
