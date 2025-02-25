tableextension 50243 MyWarehouseShipmentExt extends "Warehouse Shipment Header"
{
    fields
    {
        field(50101; "Default Dimension"; Code[20])
        {
            Caption = 'Default Dimension';
            TableRelation = Dimension;
        }
    }
}
