tableextension 50201 "BSCL_Customer" extends Customer
{
    procedure ShowFavoriteBook()
    var
        BSB_Book: Record BSB_Book;
    begin
        if Rec."BSB_Favorite Book No." <> '' then begin
            BSB_Book.Get(rec."BSB_Favorite Book No.");
            BSB_Book.ShowCard();
        end;
    end;
}