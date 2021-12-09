pageextension 50201 "BSCL_Customer Card" extends "Customer Card"
{
    layout
    {
        modify("BSB_Favorite Book No.")
        {
            trigger OnAfterValidate()
            begin
                if Rec."BSB_Favorite Book No." <> xRec."BSB_Favorite Book No." then
                    rec.Modify();
            end;
        }
    }

    actions
    {
        addafter("F&unctions")
        {
            action("BSCL_OpenBook")
            {
                Caption = 'Open Favorite Book';
                ToolTip = 'Executes the Open Favorite Book action.';
                ApplicationArea = All;
                Image = Card;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                Enabled = Rec."BSB_Favorite Book No." <> '';

                trigger OnAction()
                begin
                    Rec.ShowFavoriteBook();
                end;
            }
        }
    }
}