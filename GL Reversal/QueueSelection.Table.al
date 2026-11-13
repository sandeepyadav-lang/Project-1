table 50101 "Staging Reversal Selection"
{
    Caption = 'Staging Reversal Selection';
    DataClassification = CustomerContent;
    fields
    {
        field(1; "Queue ID"; Guid) { Caption = 'Queue ID'; TableRelation = "Staging Reversal Queue".ID; }
        field(2; "Staging System ID"; Guid) { Caption = 'Staging System ID'; }
        field(3; "Document No."; Code[20]) { Caption = 'Document No.'; }
        field(4; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Waiting,Reversed,Failed;
            OptionCaption = 'Waiting,Reversed,Failed';
        }
        field(5; "Error Message"; Text[2048]) { Caption = 'Error Message'; }
    }
    keys
    {
        key(PK; "Queue ID", "Staging System ID") { Clustered = true; }
        key(Document; "Queue ID", "Document No.") { }
    }
}
