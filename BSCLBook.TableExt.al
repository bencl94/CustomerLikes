tableextension 50200 "BSCL_Book" extends BSB_Book
{
    fields
    {
        field(50200; "BSCL_No. of Customer Likes"; Integer)
        {
            Caption = 'No. of Customer Likes';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count(Customer where("BSB_Favorite Book No." = field("No.")));
        }
    }
    trigger OnDelete()
    var
        OnDeleteErr: Label 'Deleting %1 %2 is not possible. It is selected as favorite book.', Comment = '"DEU"=Deleting %1 %2 is not possible. It is selected as favorite book.';
    begin
        if Rec."BSCL_No. of Customer Likes" > 0 then
            Error(OnDeleteErr, Rec.TableCaption, Rec."No.");
    end;
}