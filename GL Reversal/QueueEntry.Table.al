table 50104 "Staging Reversal G/L Entry"
{
    Caption = 'Staging Reversal G/L Entry';
    DataClassification = CustomerContent;
    fields
    {
        field(1; "Queue ID"; Guid) { Caption = 'Queue ID'; TableRelation = "Staging Reversal Queue".ID; }
        field(2; "G/L Entry No."; Integer) { Caption = 'G/L Entry No.'; }
        field(3; "Document No."; Code[20]) { Caption = 'Document No.'; }
        field(4; "Transaction No."; Integer) { Caption = 'Transaction No.'; }
        field(5; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Waiting,Processing,Reversed,Failed;
            OptionCaption = 'Waiting,Processing,Reversed,Failed';
        }
        field(6; "Error Message"; Text[2048]) { Caption = 'Error Message'; }
    }
    keys
    {
        key(PK; "Queue ID", "G/L Entry No.") { Clustered = true; }
        key(Document; "Queue ID", "Document No.") { }
    }
}
