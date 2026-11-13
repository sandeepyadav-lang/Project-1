table 50102 "Request For Quotation"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            // trigger OnValidate()
            // var
            // begin
            //     if "No." <> xRec."No." then begin
            //         PurchasesPayablesSetup.Get();
            //         NoSeriesMgt.TestManual(PurchasesPayablesSetup."Request For Quatation No.");
            //     end;
            // end;
        }
        field(2; "Buyer Groupe"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Buyer Group';
        }
        field(3; Requester; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(4; Language; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Language;
        }
        field(5; "Expiration Date And Time"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Requesting department"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Price Include Sales tex"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Price Include Sales tax';
        }
        field(8; "Delivery date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Mode Of Delivey"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Delivery Terms"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Document titel"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Document Title';
        }
        field(12; "Solicitation type"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Solicitation Type';
        }
        field(13; "Bid type"; Option)
        {
            OptionMembers = Open,Close;
            OptionCaption = 'Open,Closed';
            Caption = 'Bid Type';
        }
        field(14; "Allow alternates on response lines"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Allow Alternates on Response Lines';
        }
        field(15; "Purchase Type"; Option)
        {
            Caption = 'Purchase Type';
            OptionMembers = " Purchase Order";//,"Purchase Invoice";NG_16Dec
        }
        field(16; "PR Document No."; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Bid Submitter"; Text[60])
        {
            DataClassification = ToBeClassified;
        }
        field(18; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }

        field(19; "Currency Factor"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Currency Factor';
        }
        field(20; "Close RFQ"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Close RFQ';
        }
        field(50150; "PR Document Nos."; Text[250])
        {
            Caption = 'Purchase Requisition Nos.';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(50151; "Approved Comparison Worksheet"; Code[20])
        {
            Caption = 'Approved Comparison Worksheet';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(50152; "Document Date"; Date)
        {
            // Client answer Q29 - exchange rates in the comparison worksheet are taken at this date
            Caption = 'RFQ Date';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    // trigger OnInsert()
    // begin
    //     if "No." = '' then begin
    //         PurchasesPayablesSetup.Get();
    //         PurchasesPayablesSetup.TestField("Request For Quatation No.");
    //         "No." := NoSeriesMgt.GetNextNo(PurchasesPayablesSetup."Request For Quatation No.", WorkDate());
    //     end;
    //     if "Document Date" = 0D then
    //         "Document Date" := WorkDate();
    // end;

    // trigger OnDelete()
    // begin
    //     RFQLine.Reset();
    //     RFQLine.SetRange("Document No.", Rec."No.");
    //     if RFQLine.FindFirst() then
    //         repeat
    //             PRLine.Reset();
    //             PRLine.SetRange("Requisition Document No.", RFQLine."PR Document No.");
    //             if PRLine.FindFirst() then
    //                 repeat
    //                     PRLine."Created RFQ" := false;
    //                     if PRLine."Vendor No." <> '' then begin
    //                         PRLine."Vendor No." := '';
    //                         PRLine."Vendor Name" := '';
    //                     end;
    //                     PRLine.Modify(true);
    //                 until PRLine.Next() = 0;
    //             RFQLine.Delete();
    //         until RFQLine.Next() = 0;

    //     VendorTableRec.Reset();
    //     VendorTableRec.SetRange("No.", Rec."No.");
    //     if VendorTableRec.FindFirst() then
    //         VendorTableRec.DeleteAll();
    // end;

    // trigger OnRename()
    // begin

    // end;

    // procedure AssistEdit(RequestForQuotation: Record "Request For Quotation"): Boolean
    // var
    // begin
    //     PurchasesPayablesSetup.Get();
    //     PurchasesPayablesSetup.TestField("Request For Quatation No.");
    //     // DD - Updated To Version 27 - START
    //     // if NoSeriesMgt.SelectSeries(PurchasesPayablesSetup."Request For Quatation No.", '', PurchasesPayablesSetup."Request For Quatation No.") then begin
    //     if NoSeriesMgt.LookupRelatedNoSeries(PurchasesPayablesSetup."Request For Quatation No.", '', PurchasesPayablesSetup."Request For Quatation No.") then begin
    //         NoSeriesMgt.GetNextNo("No.");
    //         // DD - Updated To Version 27 - END
    //         exit(true);
    //     end;
    // end;

    // var
    //     PurchasesPayablesSetup: Record "Purchases & Payables Setup";
    //     // DD - Updated To Version 27 - START
    //     // NoSeriesMgt: Codeunit NoSeriesManagement;
    //     NoSeriesMgt: Codeunit "No. Series";
    //     // DD - Updated To Version 27 - END
    //     PRLine: Record "Purchase Requisition Line";
    //     RFQLine: Record "Request for Quatation Line";
    //     VendorTableRec: Record "Vendor Table";
}