page 50104 "Recurring Sales Invoices"
{
    ApplicationArea = All;
    Caption = 'Recurring Sales Invoices';
    PageType = List;
    SourceTable = "Recurring Sales Invoice";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("Business Status"; Rec."Business Status")
                {
                    ApplicationArea = All;
                }
                field("Relationship Manager"; Rec."Relationship Manager")
                {
                    ApplicationArea = All;
                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                }
                field("License Renewal Frequency"; Rec."License Renewal Frequency")
                {
                    ApplicationArea = All;
                }
                field("License Renewal Date"; Rec."License Renewal Date")
                {
                    ApplicationArea = All;
                }
                field("Last Posted Sales Invoice No."; Rec."Last Posted Sales Invoice No.")
                {
                    ApplicationArea = All;
                }
                field("Last Quotation No."; Rec."Last Quotation No.")
                {
                    ApplicationArea = All;
                }
                field("Renewal Frequency"; Rec."Renewal Frequency")
                {
                    ApplicationArea = All;
                }
                field("Renewal Date"; Rec."Renewal Date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(CreateRenewalQuote)
            {
                ApplicationArea = All;
                Caption = 'Create Renewal Quote';
                Image = MakeOrder;
                ToolTip = 'Create a sales quote from the selected posted sales invoice.';

                trigger OnAction()
                var
                    RecurringSalesQuoteMgt: Codeunit "Recurring Sales Quote Mgt.";
                begin
                    RecurringSalesQuoteMgt.CreateQuote(Rec);
                    CurrPage.Update(false);
                end;
            }
        }
    }
}
