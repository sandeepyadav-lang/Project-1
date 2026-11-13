table 50100 "Staging Reversal Queue"
{
    Caption = 'Staging Reversal Queue';
    DataClassification = CustomerContent;
    fields
    {
        field(1; ID; Guid) { Caption = 'ID'; }
        field(2; "Created By"; Code[50]) { Caption = 'Created By'; }
        field(3; "Scheduled For"; DateTime) { Caption = 'Scheduled For'; }
        field(4; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Scheduled,Running,Completed;
            OptionCaption = 'Scheduled,Running,Completed';
        }
        field(5; "Job Queue Entry ID"; Guid) { Caption = 'Job Queue Entry ID'; }
        field(6; "Finished At"; DateTime) { Caption = 'Finished At'; }
    }
    keys
    {
        key(PK; ID) { Clustered = true; }
    }
}
