report 50102 "Exxel Delivery Note"
{
    ApplicationArea = All;
    Caption = 'Delivery Note';
    DefaultLayout = RDLC;
    RDLCLayout = 'src/Layouts/DeliveryNote.rdl';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem("Sales Shipment Header"; "Sales Shipment Header")
        {
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
            column(SellToCaption; SellToCaptionLbl) { }
            column(DocDateLabel; DateLabelLbl) { }
            column(DocDate; "Posting Date") { }
            column(DueDateLabel; '') { }
            column(DueDate; '') { }
            column(PaymentTerms; '') { }
            column(ReferenceLabel; OrderReferenceLabelLbl) { }
            column(Reference; "External Document No.") { }
            column(SellToName; "Sell-to Customer Name") { }
            column(SellToAddress; "Sell-to Address") { }
            column(SellToAddress2; "Sell-to Address 2") { }
            column(SellToCity; "Sell-to City") { }
            column(SellToPostCode; "Sell-to Post Code") { }
            column(SellToCountry; "Sell-to Country/Region Code") { }
            column(SellToContact; "Sell-to Contact") { }
            column(SellToPhone; "Sell-to Phone No.") { }
            column(SellToEmail; "Sell-to E-Mail") { }
            column(SellToVATNo; '') { }
            column(ExtraLabel; ContactLabelLbl) { }
            column(ExtraValue; "Sell-to Contact") { }

            dataitem("Sales Shipment Line"; "Sales Shipment Line")
            {
                DataItemTableView = sorting("Document No.", "Line No.");
                DataItemLink = "Document No." = field("No.");

                column(LineNumber; "Line No." / 10000) { }
                column(ItemNo; "No.") { }
                column(Description; Description) { }
                column(Remarks; GetShipmentLineComments("Sales Shipment Line")) { }
                column(Quantity; Quantity) { }
                column(UOM; "Unit of Measure Code") { }
            }
        }
    }

    trigger OnPreReport()
    begin
        if not CompanyInformation.Get() then
            Error(CompanyInformationNotFoundErr);
        CompanyInformation.CalcFields(Picture);
    end;

    local procedure GetShipmentLineComments(ShipmentLine: Record "Sales Shipment Line"): Text
    var
        SalesCommentLine: Record "Sales Comment Line";
        Comments: TextBuilder;
        FirstComment: Boolean;
    begin
        SalesCommentLine.SetRange("Document Type", SalesCommentLine."Document Type"::Shipment);
        SalesCommentLine.SetRange("No.", ShipmentLine."Document No.");
        SalesCommentLine.SetRange("Document Line No.", ShipmentLine."Line No.");

        FirstComment := true;
        if SalesCommentLine.FindSet() then
            repeat
                if not FirstComment then
                    Comments.AppendLine();
                Comments.Append(SalesCommentLine.Comment);
                FirstComment := false;
            until SalesCommentLine.Next() = 0;

        exit(Comments.ToText());
    end;

    var
        CompanyInformation: Record "Company Information";
        DocumentTitleLbl: Label 'Delivery Note';
        SellToCaptionLbl: Label 'To';
        HeaderReferenceLabelLbl: Label 'Ref:';
        DateLabelLbl: Label 'Date:';
        OrderReferenceLabelLbl: Label 'PO:';
        ContactLabelLbl: Label 'Contact:';
        CompanyInformationNotFoundErr: Label 'Company Information is not set up.';
}
