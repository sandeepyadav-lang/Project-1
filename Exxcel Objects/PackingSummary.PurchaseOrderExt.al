pageextension 50111 "Purchase Order Packing Summary" extends "Purchase Order"
{
    layout
    {
        addlast(Content)
        {
            group(PackingSummary)
            {
                Caption = 'Packing Summary';

                part(PackingLines; "Purchase Order Packing Lines")
                {
                    ApplicationArea = All;
                    SubPageLink = "Purchase Order No." = field("No.");
                    UpdatePropagation = Both;
                }
            }
        }
    }
}
