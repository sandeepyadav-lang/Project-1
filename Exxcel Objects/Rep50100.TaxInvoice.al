report 50100 "Tax Invoice"
{
    ApplicationArea = All;
    Caption = 'Tax Invoice';
    DefaultLayout = RDLC;
    RDLCLayout = 'Exxcel Objects/Layouts/50100.rdl';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemTableView = sorting("No.");
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
            column(BillToCaption; BillToCaptionLbl) { }
            column(DocDateLabel; InvoiceDateLabelLbl) { }
            column(DocDate; "Document Date") { }
            column(DueDateLabel; DueDateLabelLbl) { }
            column(DueDate; Format("Due Date")) { }
            column(PaymentTermsLabel; PaymentTermsLabelLbl) { }
            column(PaymentTerms; "Payment Terms Code") { }
            column(ReferenceLabel; PurchaseOrderLabelLbl) { }
            column(Reference; "Your Reference") { }
            column(BillToVATLabel; BillToVATLabelLbl) { }
            column(BillToName; "Bill-to Name") { }
            column(BillToAddress; "Bill-to Address") { }
            column(BillToAddress2; "Bill-to Address 2") { }
            column(BillToCity; "Bill-to City") { }
            column(BillToPostCode; "Bill-to Post Code") { }
            column(BillToCountry; "Bill-to Country/Region Code") { }
            column(BillToVATNo; "VAT Registration No.") { }
            column(ExtraLabel; PurchaseOrderLabelLbl) { }
            column(ExtraValue; "Your Reference") { }
            column(DocSubtotal; Amount) { }
            column(DocVAT; "Amount Including VAT" - Amount) { }
            column(DocTotal; "Amount Including VAT") { }
            column(CurrencyCode; "Currency Code") { }
            column(TaxSummaryCurrencyCode; GetTaxSummaryCurrencyCode()) { }
            column(AmountInWords; AmountInWordsMgt.GetAmountInWords("Amount Including VAT", GetTaxSummaryCurrencyCode())) { }

            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemTableView = sorting("Document No.", "Line No.");
                DataItemLink = "Document No." = field("No.");

                column(DocumentNo; "Document No.") { }
                column(LineNumber; LineSerialNumber) { }
                column(ItemNo; "No.") { }
                column(Description; Description) { }
                column(Quantity; Quantity) { }
                column(UOM; "Unit of Measure Code") { }
                column(UnitPrice; "Unit Price") { }
                column(LineAmount; Amount) { }
                column(VATAmount; "Amount Including VAT" - Amount) { }
                column(LineAmountIncludingVAT; "Amount Including VAT") { }
                column(VATPercent; "VAT %") { }
                column(VATProductPostingGroup; "VAT Prod. Posting Group") { }

                trigger OnAfterGetRecord()
                begin
                    LineSerialNumber += 1;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                LineSerialNumber := 0;
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

    local procedure GetTaxSummaryCurrencyCode(): Code[10]
    begin
        if "Sales Invoice Header"."Currency Code" <> '' then
            exit("Sales Invoice Header"."Currency Code");

        exit(GeneralLedgerSetup."LCY Code");
    end;

    var
        CompanyInformation: Record "Company Information";
        GeneralLedgerSetup: Record "General Ledger Setup";
        AmountInWordsMgt: Codeunit "Exxel Amount In Words";
        DocumentTitleLbl: Label 'Tax Invoice';
        BillToCaptionLbl: Label 'Bill To';
        InvoiceDateLabelLbl: Label 'Invoice Date:';
        DueDateLabelLbl: Label 'Due Date:';
        PaymentTermsLabelLbl: Label 'Terms:';
        PurchaseOrderLabelLbl: Label 'P.O. #:';
        BillToVATLabelLbl: Label 'VAT No.:';
        CompanyInformationNotFoundErr: Label 'Company Information is not set up.';
        GeneralLedgerSetupNotFoundErr: Label 'General Ledger Setup is not set up.';
        LocalCurrencyCodeNotFoundErr: Label 'The local currency code is not set up in General Ledger Setup.';
        LineSerialNumber: Integer;
}
