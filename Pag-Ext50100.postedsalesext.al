pageextension 50100 "posted sales ext" extends "Posted Purchase Credit Memos"
{
    actions
    {
        modify(CancelCrMemo)
        {
            Visible = true;
        }
    }
}
