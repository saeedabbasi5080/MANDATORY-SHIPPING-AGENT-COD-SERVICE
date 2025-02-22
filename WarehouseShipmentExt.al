tableextension 50200 WarehouseShipmentExt extends "Warehouse Shipment Header"
{
    fields
    {
        field(50100; "Mandatory Shipping Agent"; Code[20])
        {
            Caption = 'Mandatory Shipping Agent';
            TableRelation = "Shipping Agent";
            NotBlank = true; // مقدار این فیلد الزامی است
        }
    }
}
