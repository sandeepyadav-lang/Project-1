report 50107 "Exxel Budgetary Quotation 1"
{
    ApplicationArea = All;
    Caption = 'Budgetary Quotation (Contract Period)';
    DefaultLayout = RDLC;
    RDLCLayout = 'Exxcel Objects/Layouts/50107.rdl';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(RequestForQuotation; "Request For Quotation")
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
            column(CompanyBankName; BankAccount.Name) { }
            column(CompanyBankBranchNo; BankAccount."Bank Branch No.") { }
            column(CompanyBankAccountNo; BankAccount."Bank Account No.") { }
            column(CompanyIBAN; BankAccount.IBAN) { }
            column(CompanySWIFTCode; BankAccount."SWIFT Code") { }
            column(DocumentTitle; DocumentTitleLbl) { }
            column(DocNo; "No.") { }
            column(DocNoLabel; DocNoLabelLbl) { }
            column(SellToCaption; SellToCaptionLbl) { }
            column(DocDateLabel; DateLabelLbl) { }
            column(DocDate; "Document Date") { }
            column(DueDateLabel; ValidUntilLabelLbl) { }
            column(DueDate; Format(SalesHeader."Quote Valid Until Date")) { }
            column(PaymentTerms; CustomerRecord."Payment Terms Code") { }
            column(PaymentTermsLabel; PaymentTermsLabelLbl) { }
            column(ReferenceLabel; ReferenceLabelLbl) { }
            column(Reference; SalesHeader."Your Reference") { }
            column(SellToName; CustomerRecord.Name) { }
            column(SellToAddress; CustomerRecord.Address) { }
            column(SellToAddress2; CustomerRecord."Address 2") { }
            column(SellToCity; CustomerRecord.City) { }
            column(SellToPostCode; CustomerRecord."Post Code") { }
            column(SellToCountry; CustomerRecord."Country/Region Code") { }
            column(SellToVATNo; CustomerRecord."VAT Registration No.") { }
            column(SellToContact; CustomerRecord.Contact) { }
            column(SellToEmail; CustomerRecord."E-Mail") { }
            column(ExtraLabel; RevisionLabelLbl) { }
            column(ExtraValue; RevisionNo) { }
            column(CurrencyCode; GetCurrencyCode()) { }

            // Only the approved comparison worksheet (option) is quoted.
            dataitem(ApprovedWorksheet; RFQComparisionWorksheetHeader)
            {
                DataItemLink = "RFQ No." = field("No.");
                DataItemTableView = sorting("RFQ No.", "Option Code");

                column(OptionCode; "Option Code") { }
                column(AmountInWords; WorksheetAmountInWords) { }

                dataitem(WorksheetLine; "RFQ Comparision Worksheet Line")
                {
                    DataItemLink = "Document No." = field("RFQ No."), "Option Code" = field("Option Code");
                    DataItemTableView = sorting("Document No.", "Option Code", "Line Number");

                    column(LineNumber; LineSeq) { }
                    column(ItemNo; "Item Number") { }
                    column(Description; LineDescription) { }
                    column(Quantity; Quantity) { }
                    column(UOM; "Unit of Measure") { }
                    column(ContractYears; ContractYears) { }

                    // One row per contract year, so every year's price and amount is printed.
                    dataitem(ContractYear; Integer)
                    {
                        DataItemTableView = sorting(Number);

                        column(YearNo; Number) { }
                        column(UnitPrice; YearUnitPrice) { }
                        column(LineAmount; YearAmount) { }

                        trigger OnPreDataItem()
                        begin
                            SetRange(Number, 1, ContractYears);
                        end;

                        trigger OnAfterGetRecord()
                        begin
                            GetYearValues(WorksheetLine, ContractLine, HasContractLine, Number, YearUnitPrice, YearAmount);
                        end;
                    }

                    trigger OnAfterGetRecord()
                    begin
                        LineSeq += 1;
                        LineDescription := CopyStr(ReadLongDescription(WorksheetLine), 1, MaxStrLen(LineDescription));
                        if LineDescription = '' then
                            LineDescription := "Product Name";

                        HasContractLine := ContractLine.Get("Document No.", "Option Code", "Line Number");
                        ContractYears := 1;
                        if HasContractLine and (ApprovedWorksheet."Contract Period" > 1) then
                            ContractYears := ApprovedWorksheet."Contract Period";
                    end;
                }

                trigger OnPreDataItem()
                begin
                    ApplyApprovedFilter(ApprovedWorksheet, RequestForQuotation);
                end;

                trigger OnAfterGetRecord()
                begin
                    LineSeq := 0;
                    WorksheetAmountInWords := AmountInWordsMgt.GetAmountInWords(GetWorksheetTotal(ApprovedWorksheet), GetCurrencyCode());
                end;
            }

            // trigger OnAfterGetRecord()
            // begin
            //     Clear(CustomerRecord);
            //     Clear(Project);
            //     Clear(SalesHeader);
            //     Clear(PurchaseRequisition);
            //     LineSeq := 0;

            //     if not PurchaseRequisition.Get("PR Document No.") then
            //         exit;

            //     if PurchaseRequisition."Sales Quote No." <> '' then
            //         if not SalesHeader.Get(SalesHeader."Document Type"::Quote, PurchaseRequisition."Sales Quote No.") then
            //             Clear(SalesHeader);

            //     // First priority: Project customer
            //     if PurchaseRequisition."Project No." <> '' then
            //         if Project.Get(PurchaseRequisition."Project No.") then
            //             if Project."Bill-to Customer No." <> '' then
            //                 if not CustomerRecord.Get(Project."Bill-to Customer No.") then
            //                     Clear(CustomerRecord);

            //     // Second priority: Sales Quote customer
            //     if (CustomerRecord."No." = '') and (SalesHeader."Sell-to Customer No." <> '') then
            //         if not CustomerRecord.Get(SalesHeader."Sell-to Customer No.") then
            //             Clear(CustomerRecord);
            // end;
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';

                    field(SelectedBankAccountCode; SelectedBankAccountCode)
                    {
                        ApplicationArea = All;
                        Caption = 'Bank Account';
                        ToolTip = 'Select the bank account to print on the quotation.';
                        TableRelation = "Bank Account";
                    }
                    field(OptionCodeFilter; OptionCodeFilter)
                    {
                        ApplicationArea = All;
                        Caption = 'Worksheet Option Codes';
                        ToolTip = 'Enter one or more comparison worksheet option codes, separated by | (for example OPT1|OPT2). Each worksheet prints on its own page. Leave blank to print the approved worksheet.';
                    }
                    field(RevisionNo; RevisionNo)
                    {
                        ApplicationArea = All;
                        Caption = 'Revision No.';
                    }
                }
            }
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

        if SelectedBankAccountCode = '' then
            Error(SelectBankAccountErr);

        if not BankAccount.Get(SelectedBankAccountCode) then
            Error(BankAccountNotFoundErr, SelectedBankAccountCode);
    end;

    local procedure GetCurrencyCode(): Code[10]
    begin
        if RequestForQuotation."Currency Code" <> '' then
            exit(RequestForQuotation."Currency Code");
        // if (PurchaseRequisition."Sales Quote No." <> '') and (SalesHeader."Currency Code" <> '') then
        exit(SalesHeader."Currency Code");
        // if (PurchaseRequisition."Project No." <> '') and (Project."Currency Code" <> '') then
        exit(Project."Currency Code");
        exit(GeneralLedgerSetup."LCY Code");
    end;

    local procedure ApplyApprovedFilter(var WorksheetHeader: Record RFQComparisionWorksheetHeader; RFQ: Record "Request For Quotation")
    begin
        if OptionCodeFilter <> '' then
            WorksheetHeader.SetFilter("Option Code", OptionCodeFilter)
        else if RFQ."Approved Comparison Worksheet" <> '' then
            WorksheetHeader.SetRange("Option Code", RFQ."Approved Comparison Worksheet")
        else
            WorksheetHeader.SetRange(Status, WorksheetHeader.Status::Approved);
    end;

    local procedure ReadLongDescription(var WorksheetLn: Record "RFQ Comparision Worksheet Line"): Text
    var
        TypeHelper: Codeunit "Type Helper";
        InStr: InStream;
    begin
        WorksheetLn.CalcFields("Long Description");
        if not WorksheetLn."Long Description".HasValue() then
            exit('');
        WorksheetLn."Long Description".CreateInStream(InStr, TextEncoding::UTF8);
        exit(TypeHelper.ReadAsTextWithSeparator(InStr, TypeHelper.LFSeparator()));
    end;

    local procedure GetYearValues(WorksheetLn: Record "RFQ Comparision Worksheet Line"; ContractLn: Record "RFQ Contract Period Line"; HasContract: Boolean; Year: Integer; var UnitPrice: Decimal; var Amount: Decimal)
    begin
        if HasContract then begin
            UnitPrice := ContractLn.GetValue(Year, 1);
            Amount := ContractLn.GetValue(Year, 2);
        end else begin
            UnitPrice := WorksheetLn."Unit Price Incl. WHT";
            Amount := WorksheetLn."Amount Incl. WHT";
        end;
    end;

    // Sum of every year's amount of the approved worksheet, used for the amount in words.
    local procedure GetWorksheetTotal(WorksheetHeader: Record RFQComparisionWorksheetHeader): Decimal
    var
        WorksheetLn: Record "RFQ Comparision Worksheet Line";
        ContractLn: Record "RFQ Contract Period Line";
        Total: Decimal;
        UnitPrice: Decimal;
        Amount: Decimal;
        Year: Integer;
        Years: Integer;
        HasContract: Boolean;
    begin
        WorksheetLn.SetRange("Document No.", WorksheetHeader."RFQ No.");
        WorksheetLn.SetRange("Option Code", WorksheetHeader."Option Code");
        if WorksheetLn.FindSet() then
            repeat
                HasContract := ContractLn.Get(WorksheetLn."Document No.", WorksheetLn."Option Code", WorksheetLn."Line Number");
                Years := 1;
                if HasContract and (WorksheetHeader."Contract Period" > 1) then
                    Years := WorksheetHeader."Contract Period";
                for Year := 1 to Years do begin
                    GetYearValues(WorksheetLn, ContractLn, HasContract, Year, UnitPrice, Amount);
                    Total += Amount;
                end;
            until WorksheetLn.Next() = 0;
        exit(Total);
    end;

    var
        CompanyInformation: Record "Company Information";
        GeneralLedgerSetup: Record "General Ledger Setup";
        // PurchaseRequisition: Record "Purchase Requisition Header";
        CustomerRecord: Record Customer;
        Project: Record Job;
        SalesHeader: Record "Sales Header";
        BankAccount: Record "Bank Account";
        ContractLine: Record "RFQ Contract Period Line";
        AmountInWordsMgt: Codeunit "Exxel Amount In Words";
        SelectedBankAccountCode: Code[20];
        RevisionNo: Code[20];
        OptionCodeFilter: Text[250];
        WorksheetAmountInWords: Text[250];
        LineSeq: Integer;
        ContractYears: Integer;
        HasContractLine: Boolean;
        LineDescription: Text[2048];
        YearUnitPrice: Decimal;
        YearAmount: Decimal;
        DocumentTitleLbl: Label 'Budgetary Quotation';
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
        SelectBankAccountErr: Label 'Please select a bank account.';
        BankAccountNotFoundErr: Label 'Selected bank account %1 does not exist.', Comment = '%1 = bank account code';
}
