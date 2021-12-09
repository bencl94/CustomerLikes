enumextension 50200 "BSCL_Book Type" extends "BSB_Book Type"
{
    value(50200; eBook)
    {
        Caption = 'E-Book';
        Implementation = "BSB_Book Type Evaluation" = "BSCL_Book Type eBook Impl.";
    }
}