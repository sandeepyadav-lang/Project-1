codeunit 50103 "Staging Reverse Transaction"
{
    TableNo = "G/L Entry";

    trigger OnRun()
    var
        GLEntry: Record "G/L Entry";
        ReversalEntry: Record "Reversal Entry";
    begin
        Rec.TestField("Transaction No.");
        GLEntry.Get(Rec."Entry No.");
        GLEntry.TestField("Document No.", Rec."Document No.");
        GLEntry.TestField("Transaction No.", Rec."Transaction No.");
        if GLEntry.Reversed then
            ReversalEntry.AlreadyReversedEntry(GLEntry.TableCaption(), GLEntry."Entry No.");
        if GLEntry."Journal Batch Name" = '' then
            ReversalEntry.TestFieldError();

        ReversalEntry.SetHideWarningDialogs();
        ReversalEntry.ReverseTransaction(Rec."Transaction No.");
        GLEntry.Get(Rec."Entry No.");
        GLEntry.TestField(Reversed, true);
    end;
}
