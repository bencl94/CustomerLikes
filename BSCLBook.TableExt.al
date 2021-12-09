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
}