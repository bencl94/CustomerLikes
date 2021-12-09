pageextension 50200 "BSCL_Book Factbox" extends "BSB_Book Factbox"
{
    layout
    {
        addafter("No. of Pages")
        {
            field("BSCL_NoofCustomerLikes"; Rec."BSCL_No. of Customer Likes")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the No. of Customer Likes field.';
            }
        }
    }
}