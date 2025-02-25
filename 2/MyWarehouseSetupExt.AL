tableextension 50202 MyWarehouseSetupExt extends "Warehouse Setup"
{
    fields
    {
        field(50100; "Default Dimension"; Code[20])
        {
            Caption = 'Default Dimension';
            TableRelation = Dimension;
        }
    }
}
