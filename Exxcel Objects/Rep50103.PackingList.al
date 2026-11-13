report 50103 "Exxel Packing List"
{
    ApplicationArea = All;
    Caption = 'Packing List';
    DefaultLayout = RDLC;
    RDLCLayout = 'src/Layouts/PackingList.rdl';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            DataItemTableView = sorting("Document Type", "No.") where("Document Type" = const(Order));
            RequestFilterFields = "No.";

            column(CompanyPicture; CompanyInformation.Picture) { }
            column(CompanyName; CompanyInformation.Name) { }
            column(CompanyAddress; CompanyInformation.Address) { }
            column(CompanyAddress2; CompanyInformation."Address 2") { }
            column(CompanyCity; CompanyInformation.City) { }
            column(CompanyPostCode; CompanyInformation."Post Code") { }
            column(CompanyCountry; CompanyInformation."Country/Region Code") { }
            column(CompanyVATNo; CompanyInformation."VAT Registration No.") { }
            column(CompanyPhone; CompanyInformation."Phone No.") { }
            column(CompanyEmail; CompanyInformation."E-Mail") { }
            column(CompanyHomePage; CompanyInformation."Home Page") { }
            column(DocumentTitle; DocumentTitleLbl) { }
            column(DocNo; "No.") { }
            column(HeaderReferenceLabel; HeaderReferenceLabelLbl) { }
            column(HeaderReference; "Your Reference") { }
            column(ShipToCaption; ShipToCaptionLbl) { }
            column(DocDateLabel; DateLabelLbl) { }
            column(DocDate; "Order Date") { }
            column(DueDateLabel; '') { }
            column(DueDate; '') { }
            column(PaymentTerms; '') { }
            column(ReferenceLabel; OrderReferenceLabelLbl) { }
            column(Reference; "No.") { }
            column(BuyFromVendorAddress; "Buy-from Address") { }
            column(BuyFromVendorCity; "Buy-from City") { }
            column(BuyFromVendorPostCode; "Buy-from Post Code") { }
            column(BuyFromVendorCountry; "Buy-from Country/Region Code") { }
            column(BuyFromVendorContact; "Buy-from Contact") { }
            column(BuyFromVendorPhone; VendorRecord."Phone No.") { }
            column(BuyFromVendorEmail; VendorRecord."E-Mail") { }
            column(ShipToAddress; "Ship-to Address") { }
            column(ShipToAddress2; "Ship-to Address 2") { }
            column(ShipToCity; "Ship-to City") { }
            column(ShipToPostCode; "Ship-to Post Code") { }
            column(ShipToCountry; "Ship-to Country/Region Code") { }
            column(ShipToContact; "Ship-to Contact") { }
            column(ShipToPhone; "Ship-to Phone No.") { }
            column(ShipToEmail; LocationRecord."E-Mail") { }

            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemTableView = sorting("Document Type", "Document No.", "Line No.");
                DataItemLink = "Document Type" = field("Document Type"), "Document No." = field("No.");

                column(LineNumber; "Line No." / 10000) { }
                column(ItemNo; "No.") { }
                column(Description; Description) { }
                column(Remarks; "Description 2") { }
                column(HSCode; HSCode) { }
                column(Quantity; Quantity) { }
                column(UOM; "Unit of Measure Code") { }

                trigger OnAfterGetRecord()
                begin
                    Clear(ItemRecord);
                    Clear(HSCode);
                    if (Type = Type::Item) and ("No." <> '') then
                        if ItemRecord.Get("No.") then
                            HSCode := ItemRecord."Tariff No.";
                end;
            }

            dataitem(PackingSummaryLine; "Purchase Order Packing Line")
            {
                DataItemLink = "Purchase Order No." = field("No.");
                DataItemTableView = sorting("Purchase Order No.", "Line No.");

                column(PackingLineNo; "Line No.") { }
                column(PackingBoxNo; "Box No.") { }
                column(PackingWeightKG; "Weight KG") { }
                column(PackingDimensions; "Dimensions (Cm)") { }
            }

            trigger OnAfterGetRecord()
            begin
                Clear(LocationRecord);
                if not LocationRecord.Get("Location Code") then
                    Clear(LocationRecord);
                Clear(VendorRecord);
                if not VendorRecord.Get("Buy-from Vendor No.") then
                    Clear(VendorRecord);
            end;
        }
    }

    trigger OnPreReport()
    begin
        if not CompanyInformation.Get() then
            Error(CompanyInformationNotFoundErr);
        CompanyInformation.CalcFields(Picture);
    end;

    var
        CompanyInformation: Record "Company Information";
        LocationRecord: Record Location;
        VendorRecord: Record Vendor;
        ItemRecord: Record Item;
        HSCode: Code[20];
        DocumentTitleLbl: Label 'Packing List';
        ShipToCaptionLbl: Label 'To';
        HeaderReferenceLabelLbl: Label 'Ref:';
        DateLabelLbl: Label 'Date:';
        OrderReferenceLabelLbl: Label 'PO:';
        CompanyInformationNotFoundErr: Label 'Company Information is not set up.';
}
