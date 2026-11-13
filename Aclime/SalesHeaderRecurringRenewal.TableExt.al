tableextension 50106 "Sales Header Recurring Renewal" extends "Sales Header"
{
    fields
    {
        field(50100; "Recurring Sales Entry No."; Integer)
        {
            Caption = 'Recurring Sales Entry No.';
            TableRelation = "Recurring Sales Invoice";
            DataClassification = CustomerContent;
        }
    }
}
