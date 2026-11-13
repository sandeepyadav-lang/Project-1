table 50107 "RFQComparisionWorksheetHeader"
{
    // TDD 2.6 - RFQ Comparison Worksheet. One RFQ can have several worksheets ("options");
    // "Option Code" is the worksheet number. Only one option per RFQ can be Approved.
    Caption = 'RFQ Comparison Worksheet';
    DataClassification = CustomerContent;
    // LookupPageId = "RFQ Comparision Worksheets";
    // DrillDownPageId = "RFQ Comparision Worksheets";

    fields
    {
        field(1; "RFQ No."; Code[20])
        {
            Caption = 'RFQ No.';
            TableRelation = "Request For Quotation";
            Editable = false;
        }
        field(2; "Buyer Groupe"; Code[20]) { Caption = 'Buyer Group'; }
        field(3; Requester; Code[20]) { Caption = 'Requester'; }
        field(4; Language; Code[20]) { Caption = 'Language'; TableRelation = Language; }
        field(5; "Expiration Date And Time"; DateTime) { Caption = 'Expiration Date And Time'; }
        field(6; "Requesting department"; Text[50]) { Caption = 'Requesting Department'; }
        field(7; "Price Include Sales tex"; Boolean) { Caption = 'Price Include Sales Tax'; }
        field(8; "Delivery date"; Date) { Caption = 'Delivery Date'; }
        field(9; "Mode Of Delivey"; Code[20]) { Caption = 'Mode of Delivery'; }
        field(10; "Delivery Terms"; Code[20]) { Caption = 'Delivery Terms'; }
        field(11; "Document titel"; Text[50]) { Caption = 'Document Title'; }
        field(12; "Solicitation type"; Text[50]) { Caption = 'Solicitation Type'; }
        field(13; "Bid type"; Option) { Caption = 'Bid Type'; OptionMembers = Open,Close; OptionCaption = 'Open,Closed'; }
        field(14; "Allowalternatesonresponselines"; Boolean) { Caption = 'Allow Alternates on Response Lines'; }
        field(15; "Purchase Type"; Option) { Caption = 'Purchase Type'; OptionMembers = " Purchase Order","Purchase Invoice"; }
        field(16; "PR Document No."; Code[20]) { Caption = 'PR Document No.'; }
        field(17; "Bid Submitter"; Text[60]) { Caption = 'Bid Submitter'; }
        field(18; "Currency Code"; Code[10])
        {
            // Option currency
            Caption = 'Currency Code';
            TableRelation = Currency;
            Editable = false;
        }
        field(19; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            Editable = false;
        }
        field(20; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Open,Released,"Pending Approval",Approved,Closed;
            OptionCaption = 'Open,Released,Pending Approval,Approved,Closed';
            Editable = false;

            // trigger OnValidate()
            // var
            //     RFQMgt: Codeunit "RFQ Mgt.";
            // begin
            //     if (Status = Status::Approved) and (xRec.Status <> Status::Approved) then
            //         RFQMgt.OnWorksheetApproved(Rec);
            //     if (xRec.Status = xRec.Status::Approved) and (Status <> Status::Approved) then
            //         RFQMgt.OnWorksheetReopened(Rec);
            // end;
        }
        field(50100; "Option Code"; Code[20])
        {
            Caption = 'Option Code';
            NotBlank = true;
        }
        field(50101; "Option Description"; Text[100])
        {
            Caption = 'Option Description';
        }
        field(50102; "Shipping Charges %"; Decimal)
        {
            Caption = 'Shipping Charges %';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
            trigger OnValidate()
            begin
                RecalculateLines();
            end;
        }
        field(50103; "Duties Charges %"; Decimal)
        {
            Caption = 'Duties Charges %';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
            trigger OnValidate()
            begin
                RecalculateLines();
            end;
        }
        field(50104; "Withholding Tax %"; Decimal)
        {
            Caption = 'Withholding Tax %';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
            trigger OnValidate()
            begin
                RecalculateLines();
            end;
        }
        field(50105; "Unit Price Factor"; Decimal)
        {
            Caption = 'Unit Price Factor';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
            trigger OnValidate()
            begin
                RecalculateLines();
            end;
        }
        field(50106; "Contract Period"; Integer)
        {
            Caption = 'Contract Period (Years)';
            MinValue = 1;
            MaxValue = 15;
            InitValue = 1;
        }
        field(50107; "Expected Delivery Date"; Date)
        {
            Caption = 'Expected Delivery Date';
            FieldClass = FlowField;
            CalcFormula = max("RFQ Comparision Worksheet Line"."Expected Delivery Date" where("Document No." = field("RFQ No."), "Option Code" = field("Option Code")));
            Editable = false;
        }
        field(50108; "Total Sales Price"; Decimal)
        {
            Caption = 'Total Sales Price';
            FieldClass = FlowField;
            CalcFormula = sum("RFQ Comparision Worksheet Line"."Amount Incl. WHT" where("Document No." = field("RFQ No."), "Option Code" = field("Option Code")));
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(50109; "Total Cost"; Decimal)
        {
            Caption = 'Total Cost';
            FieldClass = FlowField;
            CalcFormula = sum("RFQ Comparision Worksheet Line"."Total Cost" where("Document No." = field("RFQ No."), "Option Code" = field("Option Code")));
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(50110; "Yearly Cost Incr. %"; Decimal) { Caption = 'Yearly Increment % for Cost'; DecimalPlaces = 0 : 5; }
        field(50111; "Yearly Unit Price Incr. %"; Decimal) { Caption = 'Yearly Increment % for Unit Price'; DecimalPlaces = 0 : 5; }
        field(50112; "Yearly Shipping Incr. %"; Decimal) { Caption = 'Yearly Increment % for Shipping'; DecimalPlaces = 0 : 5; }
        field(50113; "Yearly Duty Incr. %"; Decimal) { Caption = 'Yearly Increment % for Duties'; DecimalPlaces = 0 : 5; }
    }

    keys
    {
        key(Key1; "RFQ No.", "Option Code")
        {
            Clustered = true;
        }
    }

    trigger OnDelete()
    var
        WorksheetLine: Record "RFQ Comparision Worksheet Line";
        ContractLine: Record "RFQ Contract Period Line";
    begin
        TestField(Status, Status::Open);
        WorksheetLine.SetRange("Document No.", "RFQ No.");
        WorksheetLine.SetRange("Option Code", "Option Code");
        WorksheetLine.DeleteAll();
        ContractLine.SetRange("RFQ No.", "RFQ No.");
        ContractLine.SetRange("Option Code", "Option Code");
        ContractLine.DeleteAll();
    end;

    procedure RecalculateLines()
    var
        WorksheetLine: Record "RFQ Comparision Worksheet Line";
    begin
        if "Option Code" = '' then
            exit;
        WorksheetLine.SetRange("Document No.", "RFQ No.");
        WorksheetLine.SetRange("Option Code", "Option Code");
        if WorksheetLine.FindSet(true) then
            repeat
                WorksheetLine.Calculate(Rec);
                WorksheetLine.Modify();
            until WorksheetLine.Next() = 0;
    end;

    procedure ToLCY(Amount: Decimal): Decimal
    var
        CurrExchRate: Record "Currency Exchange Rate";
    begin
        if ("Currency Code" = '') or ("Currency Factor" = 0) then
            exit(Amount);
        exit(Round(CurrExchRate.ExchangeAmtFCYToLCY(WorkDate(), "Currency Code", Amount, "Currency Factor")));
    end;
}
