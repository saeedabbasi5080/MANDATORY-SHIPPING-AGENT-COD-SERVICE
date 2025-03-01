codeunit 50200 "MyWhShipEventSub"
{
    [EventSubscriber(ObjectType::Table, Database::"Warehouse Shipment Header", 'OnAfterInsertEvent', '', false, false)]
    local procedure MyOnInsertHandler(var Rec: Record "Warehouse Shipment Header")
    begin
        // کد مربوط به رویداد
    end;
}
