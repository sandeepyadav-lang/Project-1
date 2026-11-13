codeunit 50105 "Recurring Sales Quote Mgt."
{
    trigger OnRun()
    var
        RecurringSalesInvoice: Record "Recurring Sales Invoice";
    begin
        RecurringSalesInvoice.SetRange("Business Status", RecurringSalesInvoice."Business Status"::Active);
        RecurringSalesInvoice.SetFilter("Renewal Date", '<>%1&<=%2', 0D, WorkDate());
        if RecurringSalesInvoice.FindSet(true) then
            repeat
                CreateQuote(RecurringSalesInvoice);
            until RecurringSalesInvoice.Next() = 0;
    end;

    procedure CreateQuote(var RecurringSalesInvoice: Record "Recurring Sales Invoice")
    var
        SalesHeader: Record "Sales Header";
        CopyDocumentMgt: Codeunit "Copy Document Mgt.";
        PaymentTerms: Record "Payment Terms";
        RenewalDateFormula: DateFormula;
        LicenseRenewalDateFormula: DateFormula;
    begin
        RecurringSalesInvoice.TestField("Customer No.");
        RecurringSalesInvoice.TestField("Last Posted Sales Invoice No.");
        RecurringSalesInvoice.TestField("Renewal Date");
        RecurringSalesInvoice.TestField("License Renewal Date");

        SalesHeader.Init();
        SalesHeader."Document Type" := SalesHeader."Document Type"::Quote;
        SalesHeader.Insert(true);
        CopyDocumentMgt.CopySalesDoc(
            "Sales Document Type From"::"Posted Invoice",
            RecurringSalesInvoice."Last Posted Sales Invoice No.",
            SalesHeader);

        SalesHeader.Validate("Recurring Sales Entry No.", RecurringSalesInvoice."Entry No.");
        SalesHeader.Validate("Order Date", RecurringSalesInvoice."Renewal Date");
        SalesHeader.Validate("Document Date", RecurringSalesInvoice."Renewal Date");
        if RecurringSalesInvoice."Relationship Manager" <> '' then
            SalesHeader.Validate("Salesperson Code", RecurringSalesInvoice."Relationship Manager");
        if SalesHeader."Payment Terms Code" <> '' then begin
            PaymentTerms.Get(SalesHeader."Payment Terms Code");
            SalesHeader.Validate("Due Date", CalcDate(PaymentTerms."Due Date Calculation", SalesHeader."Document Date"));
        end else
            SalesHeader.Validate("Due Date", RecurringSalesInvoice."Renewal Date");
        SalesHeader.Modify(true);

        RecurringSalesInvoice."Last Quotation No." := SalesHeader."No.";
        Evaluate(RenewalDateFormula, GetDateFormula(RecurringSalesInvoice."Renewal Frequency"));
        Evaluate(LicenseRenewalDateFormula, GetDateFormula(RecurringSalesInvoice."License Renewal Frequency"));
        RecurringSalesInvoice."Renewal Date" := CalcDate(RenewalDateFormula, RecurringSalesInvoice."Renewal Date");
        RecurringSalesInvoice."License Renewal Date" := CalcDate(LicenseRenewalDateFormula, RecurringSalesInvoice."License Renewal Date");
        RecurringSalesInvoice.Modify(true);
    end;

    local procedure GetDateFormula(Frequency: Enum "Renewal Frequency"): Text[2]
    begin
        case Frequency of
            Frequency::Day:
                exit('1D');
            Frequency::Month:
                exit('1M');
            Frequency::Year:
                exit('1Y');
            else
                Error('Unsupported renewal frequency.');
        end;
    end;
}
