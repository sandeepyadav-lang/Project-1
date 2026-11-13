page 50100 "Staging Reversal Schedule"
{
    Caption = 'Schedule G/L Reversal';
    PageType = StandardDialog;
    layout
    {
        area(content)
        {
            field(StartTime; StartTime)
            {
                ApplicationArea = All;
                Caption = 'Earliest Start Date/Time';
                ToolTip = 'Specifies the earliest date and time the job queue can start the reversal.';
            }
        }
    }
    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        if CloseAction = Action::OK then
            if (StartTime = 0DT) or (StartTime < CurrentDateTime()) then
                Error(StartTimeErr);
        exit(true);
    end;

    procedure GetStartTime(): DateTime
    begin
        exit(StartTime);
    end;

    var
        StartTime: DateTime;
        StartTimeErr: Label 'Enter a start date and time that is not in the past.';
}
