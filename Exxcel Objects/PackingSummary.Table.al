table 50109 "Purchase Order Packing Line"
{
    Caption = 'Purchase Order Packing Line';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Purchase Order No."; Code[20])
        {
            Caption = 'Purchase Order No.';
            TableRelation = "Purchase Header"."No." where("Document Type" = const(Order));
            DataClassification = CustomerContent;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(3; "Box No."; Code[20])
        {
            Caption = 'Box #';
            DataClassification = CustomerContent;
        }
        field(4; "Weight KG"; Decimal)
        {
            Caption = 'Weight KG';
            DecimalPlaces = 0 : 3;
            MinValue = 0;
            DataClassification = CustomerContent;
        }
        field(5; "Dimensions (Cm)"; Text[100])
        {
            Caption = 'Dimensions (Cm)';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Purchase Order No.", "Line No.")
        {
            Clustered = true;
        }
    }
}
