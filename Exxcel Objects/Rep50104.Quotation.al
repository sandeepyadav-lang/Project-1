report 50104 "Exxel Quotation"
{
    ApplicationArea = All;
    Caption = 'Quotation';
    DefaultLayout = RDLC;
    RDLCLayout = 'Exxcel Objects/Layouts/50104.rdl';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = sorting("Document Type", "No.") where("Document Type" = const(Quote));
            RequestFilterFields = "No.";

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
            column(CompanyBankName; CompanyInformation."Bank Name") { }
            column(CompanyBankBranchNo; CompanyInformation."Bank Branch No.") { }
            column(CompanyBankAccountNo; CompanyInformation."Bank Account No.") { }
            column(CompanyIBAN; CompanyInformation.IBAN) { }
            column(CompanySWIFTCode; CompanyInformation."SWIFT Code") { }
            column(DocumentTitle; DocumentTitleLbl) { }
            column(DocNo; "No.") { }
            column(DocNoLabel; DocNoLabelLbl) { }
            column(SellToCaption; SellToCaptionLbl) { }
            column(DocDateLabel; DateLabelLbl) { }
            column(DocDate; "Document Date") { }
            column(DueDateLabel; ValidUntilLabelLbl) { }
            column(DueDate; Format("Quote Valid Until Date")) { }
            column(PaymentTerms; "Payment Terms Code") { }
            column(PaymentTermsLabel; PaymentTermsLabelLbl) { }
            column(ReferenceLabel; ReferenceLabelLbl) { }
            column(Reference; "Your Reference") { }
            column(SellToName; "Sell-to Customer Name") { }
            column(SellToAddress; "Sell-to Address") { }
            column(SellToAddress2; "Sell-to Address 2") { }
            column(SellToCity; "Sell-to City") { }
            column(SellToPostCode; "Sell-to Post Code") { }
            column(SellToCountry; "Sell-to Country/Region Code") { }
            column(SellToVATNo; "VAT Registration No.") { }
            column(SellToContact; "Sell-to Contact") { }
            column(SellToEmail; "Sell-to E-Mail") { }
            column(ExtraLabel; RevisionLabelLbl) { }
            column(ExtraValue; '') { }
            column(DocSubtotal; Amount) { }
            column(DocVAT; "Amount Including VAT" - Amount) { }
            column(DocTotal; "Amount Including VAT") { }
            column(CurrencyCode; GetCurrencyCode()) { }
            column(AmountInWords; AmountInWordsMgt.GetAmountInWords("Amount Including VAT", GetCurrencyCode())) { }

            dataitem("Sales Line"; "Sales Line")
            {
                DataItemTableView = sorting("Document Type", "Document No.", "Line No.");
                DataItemLink = "Document Type" = field("Document Type"), "Document No." = field("No.");

                column(LineNumber; "Line No." / 10000) { }
                column(ItemNo; "No.") { }
                column(Description; Description) { }
                column(Quantity; Quantity) { }
                column(UOM; "Unit of Measure Code") { }
                column(UnitPrice; "Unit Price") { }
                column(LineAmount; Amount) { }
                column(VATAmount; "Amount Including VAT" - Amount) { }
                column(LineAmountIncludingVAT; "Amount Including VAT") { }
                column(VATPercent; "VAT %") { }
            }

            trigger OnAfterGetRecord()
            begin
                CalcFields(Amount, "Amount Including VAT");
            end;
        }
    }

    trigger OnPreReport()
    begin
        if not CompanyInformation.Get() then
            Error(CompanyInformationNotFoundErr);
        if not GeneralLedgerSetup.Get() then
            Error(GeneralLedgerSetupNotFoundErr);
        if GeneralLedgerSetup."LCY Code" = '' then
            Error(LocalCurrencyCodeNotFoundErr);
    end;

    local procedure GetCurrencyCode(): Code[10]
    begin
        if "Sales Header"."Currency Code" <> '' then
            exit("Sales Header"."Currency Code");

        exit(GeneralLedgerSetup."LCY Code");
    end;

    var
        CompanyInformation: Record "Company Information";
        GeneralLedgerSetup: Record "General Ledger Setup";
        AmountInWordsMgt: Codeunit "Exxel Amount In Words";
        DocumentTitleLbl: Label 'Quotation';
        SellToCaptionLbl: Label 'Send To';
        RevisionLabelLbl: Label 'Revision #:';
        DocNoLabelLbl: Label 'Quotation #:';
        DateLabelLbl: Label 'Date:';
        ValidUntilLabelLbl: Label 'Quotation Exp. On:';
        PaymentTermsLabelLbl: Label 'Payment Terms:';
        ReferenceLabelLbl: Label 'Reference:';
        CompanyInformationNotFoundErr: Label 'Company Information is not set up.';
        GeneralLedgerSetupNotFoundErr: Label 'General Ledger Setup is not set up.';
        LocalCurrencyCodeNotFoundErr: Label 'The local currency code is not set up in General Ledger Setup.';
}
