tableextension 50202 MyWarehouseShipmentExt extends "Warehouse Setup"
{
    fields
    {
        field(50100; "Default Dimension"; Boolean)
        {
            Caption = 'Default Dimension';
            TableRelation = "Warehouse Setup Ext"."Default Dimension";
        }
    }
}
