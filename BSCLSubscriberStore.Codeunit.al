codeunit 50200 "BSCL_Subscriber Store"
{
    [EventSubscriber(ObjectType::Table, Database::BSB_Book, 'OnBeforeDeleteBook', '', true, true)]
    local procedure OnBeforeDeleteBook(Rec: Record BSB_Book; var isHandled: Boolean)
    var
        DeletingErr: Label '%1 %2 is marked as favorite book. Deleting not allowed.', Comment = '"DEU"= %1 %2 is marked as favorite book. Deleting not allowed.';
    begin
        if isHandled then
            exit;

        Rec.CalcFields("BSCL_No. of Customer Likes");
        if Rec."BSCL_No. of Customer Likes" > 0 then
            Error(DeletingErr, Rec.TableCaption, Rec."No.");

        isHandled := true;
    end;
}