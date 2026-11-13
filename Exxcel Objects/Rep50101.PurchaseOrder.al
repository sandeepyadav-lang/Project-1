report 50101 "Exxel Purchase Order"
{
    ApplicationArea = All;
    Caption = 'Purchase Order';
    DefaultLayout = RDLC;
    RDLCLayout = 'src/Layouts/PurchaseOrder.rdl';
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
            column(BuyFromVendorCaption; BuyFromVendorCaptionLbl) { }
            column(DocDateLabel; OrderDateLabelLbl) { }
            column(DocDate; "Order Date") { }
            column(DueDateLabel; LeadTimeLabelLbl) { }
            column(DueDate; Format("Lead Time Calculation")) { }
            column(PaymentTermsLabel; PaymentTermsLabelLbl) { }
            column(PaymentTerms; "Payment Terms Code") { }
            column(ReferenceLabel; ReferenceLabelLbl) { }
            column(Reference; "Your Reference") { }
            column(BuyFromVendorName; "Buy-from Vendor Name") { }
            column(BuyFromVendorAddress; "Buy-from Address") { }
            column(BuyFromVendorAddress2; "Buy-from Address 2") { }
            column(BuyFromVendorCity; "Buy-from City") { }
            column(BuyFromVendorPostCode; "Buy-from Post Code") { }
            column(BuyFromVendorCountry; "Buy-from Country/Region Code") { }
            column(BuyFromVendorVATNo; "VAT Registration No.") { }
            column(ExtraLabel; IncotermsLabelLbl) { }
            column(ExtraValue; Incoterms) { }
            column(DocSubtotal; Amount) { }
            column(DocVAT; "Amount Including VAT" - Amount) { }
            column(DocTotal; "Amount Including VAT") { }
            column(CurrencyCode; GetCurrencyCode()) { }
            column(AmountInWords; AmountInWordsMgt.GetAmountInWords("Amount Including VAT", GetCurrencyCode())) { }

            dataitem("Purchase Line"; "Purchase Line")
            {
                DataItemTableView = sorting("Document Type", "Document No.", "Line No.");
                DataItemLink = "Document Type" = field("Document Type"), "Document No." = field("No.");

                column(LineNumber; "Line No." / 10000) { }
                column(ItemNo; "No.") { }
                column(Description; Description) { }
                column(Quantity; Quantity) { }
                column(UOM; "Unit of Measure Code") { }
                column(UnitPrice; "Direct Unit Cost") { }
                column(LineAmount; Amount) { }
                column(VATAmount; "Amount Including VAT" - Amount) { }
                column(LineAmountIncludingVAT; "Amount Including VAT") { }
                column(VATPercent; "VAT %") { }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(Incoterms; Incoterms)
                    {
                        ApplicationArea = All;
                        Caption = 'Incoterms';
                    }

                }
            }

        }
    }

    trigger OnPreReport()
    begin
        if not CompanyInformation.Get() then
            Error(CompanyInformationNotFoundErr);
        CompanyInformation.CalcFields(Picture);
        if not GeneralLedgerSetup.Get() then
            Error(GeneralLedgerSetupNotFoundErr);
        if GeneralLedgerSetup."LCY Code" = '' then
            Error(LocalCurrencyCodeNotFoundErr);
    end;

    local procedure GetCurrencyCode(): Code[10]
    begin
        if "Purchase Header"."Currency Code" <> '' then
            exit("Purchase Header"."Currency Code");

        exit(GeneralLedgerSetup."LCY Code");
    end;

    var
        CompanyInformation: Record "Company Information";
        GeneralLedgerSetup: Record "General Ledger Setup";
        AmountInWordsMgt: Codeunit "Exxel Amount In Words";
        Incoterms: Text[100];
        DocumentTitleLbl: Label 'Purchase Order';
        BuyFromVendorCaptionLbl: Label 'Vendor';
        OrderDateLabelLbl: Label 'P.O. Date:';
        LeadTimeLabelLbl: Label 'Lead time:';
        ReferenceLabelLbl: Label 'P.O.#:';
        IncotermsLabelLbl: Label 'Incoterms:';
        PaymentTermsLabelLbl: Label 'Payment Terms:';
        CompanyInformationNotFoundErr: Label 'Company Information is not set up.';
        GeneralLedgerSetupNotFoundErr: Label 'General Ledger Setup is not set up.';
        LocalCurrencyCodeNotFoundErr: Label 'The local currency code is not set up in General Ledger Setup.';
}
