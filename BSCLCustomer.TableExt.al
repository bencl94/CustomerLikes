tableextension 50201 "BSCL_Customer" extends Customer
{
    procedure ShowFavoriteBook()
    var
        Book: Record BSB_Book;
    begin
        if Rec."BSB_Favorite Book No." <> '' then begin
            Book.Get(rec."BSB_Favorite Book No.");
            Page.Run(Page::"BSB_Book Card", Book);
        end;
    end;
}