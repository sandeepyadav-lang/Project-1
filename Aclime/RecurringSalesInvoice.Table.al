table 50103 "Recurring Sales Invoice"
{
    Caption = 'Recurring Sales Invoice';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;
            DataClassification = SystemMetadata;
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer;
            DataClassification = CustomerContent;
        }
        field(3; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Customer.Name where("No." = field("Customer No.")));
            Editable = false;
        }
        field(4; "Business Status"; Enum "Renewal Business Status")
        {
            Caption = 'Business Status';
            DataClassification = CustomerContent;
        }
        field(5; "Relationship Manager"; Code[20])
        {
            Caption = 'Relationship Manager';
            TableRelation = "Salesperson/Purchaser";
            DataClassification = CustomerContent;
        }
        field(6; "Start Date"; Date)
        {
            Caption = 'Start Date';
            DataClassification = CustomerContent;
        }
        field(7; "License Renewal Frequency"; Enum "Renewal Frequency")
        {
            Caption = 'License Renewal Frequency';
            DataClassification = CustomerContent;
        }
        field(8; "License Renewal Date"; Date)
        {
            Caption = 'License Renewal Date';
            DataClassification = CustomerContent;
        }
        field(9; "Last Posted Sales Invoice No."; Code[20])
        {
            Caption = 'Last Posted Sales Invoice No.';
            TableRelation = "Sales Invoice Header"."No." where("Sell-to Customer No." = field("Customer No."));
            DataClassification = CustomerContent;
        }
        field(10; "Last Quotation No."; Code[20])
        {
            Caption = 'Last Quotation No.';
            TableRelation = "Sales Header"."No." where("Document Type" = const(Quote));
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(11; "Renewal Frequency"; Enum "Renewal Frequency")
        {
            Caption = 'Renewal Frequency';
            DataClassification = CustomerContent;
        }
        field(12; "Renewal Date"; Date)
        {
            Caption = 'Renewal Date';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(DueRenewals; "Business Status", "Renewal Date")
        {
        }
    }
}
