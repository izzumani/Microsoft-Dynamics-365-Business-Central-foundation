codeunit 65101 PrivateAddressProvider implements IAddressProvider
{
    procedure GetAddress(): Text;
    begin
        exit('My Home address \ Denmark 2800')
    end;
}