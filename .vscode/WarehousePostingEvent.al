codeunit 50200 MyCodeunit
{
    [EventSubscriber(ObjectType::Codeunit, 5764, 'OnBeforeConfirmWhseShipmentPost', '', true, true)]
    local procedure OnBeforeConfirmWhseShipmentPost(var WhseShptLine: Record "Warehouse Shipment Line"; var HideDialog: Boolean; var Invoice: Boolean; var IsPosted: Boolean; var Selection: Integer)
    begin
        Message('test');
    end;
}