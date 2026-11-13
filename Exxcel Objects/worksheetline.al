table 50108 "RFQ Comparision Worksheet Line"
{
    // TDD 2.6 - comparison worksheet line: selected vendor / reply, landed cost and sales price calculation.
    Caption = 'RFQ Comparison Worksheet Line';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Document No."; Code[20]) { Caption = 'RFQ No.'; Editable = false; }
        field(2; Type; Enum "Purchase Line Type") { Caption = 'Type'; Editable = false; }
        field(3; "Line Number"; Integer) { Caption = 'Line No.'; Editable = false; }
        field(5; "Item Number"; Code[20]) { Caption = 'Item No.'; Editable = false; }
        field(6; "Product Name"; Text[100]) { Caption = 'Item Description'; Editable = false; }
        field(11; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(14; "Gen. Prod. Posting Group"; Code[20]) { Caption = 'Gen. Prod. Posting Group'; TableRelation = "Gen. Product Posting Group"; Editable = false; }
        field(15; "Unit of Measure"; Text[50]) { Caption = 'Unit of Measure'; Editable = false; }
        field(16; "VAT Prod. Posting Group"; Code[20]) { Caption = 'VAT Prod. Posting Group'; TableRelation = "VAT Product Posting Group"; Editable = false; }
        field(17; "Dimension Set ID"; Integer) { Caption = 'Dimension Set ID'; TableRelation = "Dimension Set Entry"; Editable = false; }
        field(18; "Shortcut Dimension 1 Code"; Code[20]) { Caption = 'Shortcut Dimension 1 Code'; CaptionClass = '1,2,1'; Editable = false; }
        field(19; "Shortcut Dimension 2 Code"; Code[20]) { Caption = 'Shortcut Dimension 2 Code'; CaptionClass = '1,2,2'; Editable = false; }
        field(20; "Currency Code"; Code[10]) { Caption = 'Currency Code'; TableRelation = Currency; Editable = false; }
        field(25; "PR Line No."; Integer) { Caption = 'PR Line No.'; Editable = false; }
        field(26; "PR Document No."; Code[20]) { Caption = 'PR Document No.'; Editable = false; }
        field(50100; "Option Code"; Code[20]) { Caption = 'Option Code'; Editable = false; }
        field(50101; "Vendor No."; Code[20])
        {
            Caption = 'Vendor';
            // TableRelation = "Vendor Table"."Vendor Account" where("No." = field("Document No."));
            // ValidateTableRelation = false;

            // trigger OnValidate()
            // var
            //     // RFQMgt: Codeunit "RFQ Mgt.";
            // begin
            //     if "Vendor No." = '' then begin
            //         ClearVendorReply();
            //         RecalculateFromHeader();
            //         exit;
            //     end;
            //     Validate("Vendor Reply No.", RFQMgt.FindBestReplyForLine(Rec, "Vendor No."));
            // end;
        }
        field(50102; "Vendor Reply No."; Code[20])
        {
            Caption = 'Vendor Reply';
            // TableRelation = "Vendor Replay Header"."No." where("Request for Quotation Case" = field("Document No."), "Vendor Account" = field("Vendor No."));

            // trigger OnValidate()
            // var
            //     // RFQMgt: Codeunit "RFQ Mgt.";
            // begin
            //     if "Vendor Reply No." = '' then
            //         ClearVendorReply()
            //     else
            //         RFQMgt.ApplyVendorReply(Rec, "Vendor Reply No.");
            //     RecalculateFromHeader();
            // end;
        }
        field(50103; "Expected Delivery Date"; Date) { Caption = 'Expected Delivery Date'; }
        field(50104; "Vendor Currency Code"; Code[10]) { Caption = 'Vendor Currency Code'; TableRelation = Currency; Editable = false; }
        field(50105; "Vendor Unit Cost"; Decimal)
        {
            Caption = 'Vendor Unit Cost';
            AutoFormatType = 2;
            AutoFormatExpression = "Vendor Currency Code";
            Editable = false;
        }
        field(50106; "Unit Cost"; Decimal)
        {
            Caption = 'Unit Cost';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(50107; "Cost of Materials"; Decimal) { Caption = 'Cost of Materials'; AutoFormatType = 1; AutoFormatExpression = "Currency Code"; Editable = false; }
        field(50108; "Shipping Charge"; Code[20])
        {
            Caption = 'Shipping Charge';
            TableRelation = "Item Charge";
        }
        field(50109; "Shipping Vendor"; Code[20])
        {
            Caption = 'Shipping Vendor';
            TableRelation = Vendor;
        }
        field(50110; Shipping; Decimal) { Caption = 'Shipping'; AutoFormatType = 2; AutoFormatExpression = "Currency Code"; Editable = false; }
        field(50111; "Duty Charge"; Code[20])
        {
            Caption = 'Duty Charge';
            TableRelation = "Item Charge";
        }
        field(50112; "Duty Vendor"; Code[20])
        {
            Caption = 'Duty Vendor';
            TableRelation = Vendor;
        }
        field(50113; Duties; Decimal) { Caption = 'Duties'; AutoFormatType = 2; AutoFormatExpression = "Currency Code"; Editable = false; }
        field(50114; "Total S & D"; Decimal) { Caption = 'Total S & D'; AutoFormatType = 1; AutoFormatExpression = "Currency Code"; Editable = false; }
        field(50115; "Cost per Unit"; Decimal) { Caption = 'Cost per Unit'; AutoFormatType = 2; AutoFormatExpression = "Currency Code"; Editable = false; }
        field(50116; "Total Cost"; Decimal) { Caption = 'Total Cost'; AutoFormatType = 1; AutoFormatExpression = "Currency Code"; Editable = false; }
        field(50117; "Unit Price Excl. WHT"; Decimal) { Caption = 'Unit Price Excl. of WHT'; AutoFormatType = 2; AutoFormatExpression = "Currency Code"; Editable = false; }
        field(50118; "Amount Excl. WHT"; Decimal) { Caption = 'Amount Excl. of WHT'; AutoFormatType = 1; AutoFormatExpression = "Currency Code"; Editable = false; }
        field(50119; "Withholding Tax"; Decimal) { Caption = 'Withholding Tax'; AutoFormatType = 2; AutoFormatExpression = "Currency Code"; Editable = false; }
        field(50120; "Unit Price Incl. WHT"; Decimal) { Caption = 'Unit Price Incl. of WHT'; AutoFormatType = 2; AutoFormatExpression = "Currency Code"; Editable = false; }
        field(50121; "Amount Incl. WHT"; Decimal) { Caption = 'Amount Incl. of WHT'; AutoFormatType = 1; AutoFormatExpression = "Currency Code"; Editable = false; }
        field(50122; "GM Excl. WHT"; Decimal) { Caption = 'GM Excl. of WHT'; AutoFormatType = 1; AutoFormatExpression = "Currency Code"; Editable = false; }
        field(50123; "GM Excl. WHT %"; Decimal) { Caption = 'GM Excl. of WHT %'; DecimalPlaces = 0 : 2; Editable = false; }
        field(50124; "GM Incl. WHT"; Decimal) { Caption = 'GM Incl. of WHT'; AutoFormatType = 1; AutoFormatExpression = "Currency Code"; Editable = false; }
        field(50125; "GM Incl. WHT %"; Decimal) { Caption = 'GM Incl. of WHT %'; DecimalPlaces = 0 : 2; Editable = false; }
        field(50126; "RFQ Line No."; Integer) { Caption = 'RFQ Line No.'; Editable = false; }
        field(50150; "Long Description"; Blob) { Caption = 'Long Description'; }
    }

    keys
    {
        key(Key1; "Document No.", "Option Code", "Line Number")
        {
            Clustered = true;
        }
    }

    procedure Calculate(Header: Record RFQComparisionWorksheetHeader)
    begin
        // TDD 2.6 formulas (all per-unit values in the option currency)
        "Cost of Materials" := "Unit Cost" * Quantity;
        Shipping := "Unit Cost" * (Header."Shipping Charges %" / 100);
        Duties := "Unit Cost" * (Header."Duties Charges %" / 100);
        "Total S & D" := (Shipping + Duties) * Quantity;
        "Cost per Unit" := "Unit Cost" + Shipping + Duties;
        "Total Cost" := "Cost per Unit" * Quantity;
        "Unit Price Excl. WHT" := Round("Unit Cost" * Header."Unit Price Factor", 0.01);
        "Amount Excl. WHT" := "Unit Price Excl. WHT" * Quantity;
        "Withholding Tax" := "Unit Price Excl. WHT" * (Header."Withholding Tax %" / 100);
        "Unit Price Incl. WHT" := "Unit Price Excl. WHT" + "Withholding Tax";
        "Amount Incl. WHT" := "Unit Price Incl. WHT" * Quantity;
        "GM Excl. WHT" := "Amount Excl. WHT" - "Total Cost";
        "GM Excl. WHT %" := SafePct("GM Excl. WHT", "Amount Excl. WHT");
        "GM Incl. WHT" := "Amount Incl. WHT" - "Total Cost";
        "GM Incl. WHT %" := SafePct("GM Incl. WHT", "Amount Incl. WHT");
    end;

    procedure RecalculateFromHeader()
    var
        Header: Record RFQComparisionWorksheetHeader;
    begin
        if Header.Get("Document No.", "Option Code") then
            Calculate(Header);
    end;

    local procedure ClearVendorReply()
    begin
        "Vendor Reply No." := '';
        "Vendor Currency Code" := '';
        "Vendor Unit Cost" := 0;
        "Unit Cost" := 0;
        "Expected Delivery Date" := 0D;
    end;

    local procedure SafePct(Numerator: Decimal; Denominator: Decimal): Decimal
    begin
        if Denominator = 0 then
            exit(0);
        exit(Round(Numerator / Denominator * 100, 0.01));
    end;
}
