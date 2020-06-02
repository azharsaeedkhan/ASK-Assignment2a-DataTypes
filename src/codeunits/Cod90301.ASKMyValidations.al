codeunit 90301 MyValidations
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Page, Page::"Customer Card", 'OnAfterValidateEvent', 'Address', false, false)]
    local procedure OnCustomerPageAddressValidate(var Rec: Record customer; var xRec: Record customer)
    begin
        CheckForPlusSign(Rec.Address);
    end;

    local procedure CheckForPlusSign(TextToVerify: Text)
    var

    begin
        if StrPos(TextToVerify, '+') > 0 then
            Message('A + sign cannot be used');
    end;

    var
        myInt: Integer;
}