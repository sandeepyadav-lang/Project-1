page 50110 "Purchase Order Packing Lines"
{
    Caption = 'Packing Summary';
    PageType = ListPart;
    SourceTable = "Purchase Order Packing Line";
    AutoSplitKey = true;
    DelayedInsert = true;
    UsageCategory = None;

    layout
    {
        area(content)
        {
            repeater(Lines)
            {
                field("Box No."; Rec."Box No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the box or package number.';
                }
                field("Weight KG"; Rec."Weight KG")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the package weight in kilograms.';
                }
                field("Dimensions (Cm)"; Rec."Dimensions (Cm)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the package dimensions in centimeters.';
                }
            }
        }
    }
}
