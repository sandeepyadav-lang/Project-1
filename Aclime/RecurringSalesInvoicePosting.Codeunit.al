codeunit 50107 "Recurring Invoice Posting"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", OnAfterPostSalesDoc, '', false, false)]
    local procedure OnAfterPostSalesDoc(var SalesHeader: Record "Sales Header"; var GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line"; SalesShptHdrNo: Code[20]; RetRcpHdrNo: Code[20]; SalesInvHdrNo: Code[20]; SalesCrMemoHdrNo: Code[20]; CommitIsSuppressed: Boolean; InvtPickPutaway: Boolean; var CustLedgerEntry: Record "Cust. Ledger Entry"; WhseShip: Boolean; WhseReceiv: Boolean; PreviewMode: Boolean)
    var
        RecurringSalesInvoice: Record "Recurring Sales Invoice";
    begin
        if PreviewMode or (SalesInvHdrNo = '') or (SalesHeader."Recurring Sales Entry No." = 0) then
            exit;

        RecurringSalesInvoice.Get(SalesHeader."Recurring Sales Entry No.");
        RecurringSalesInvoice."Last Posted Sales Invoice No." := SalesInvHdrNo;
        RecurringSalesInvoice.Modify(true);
    end;
}
