pageextension 50200 WarehouseShipmentPageExt extends "Warehouse Shipment"
{
    layout
    {
        addlast(General)
        {
            field("Mandatory Shipping Agent"; Rec."Mandatory Shipping Agent")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        modify("Post")
        {
            trigger OnBeforeAction()
            begin
                if Rec."Mandatory Shipping Agent" = '' then
                    Error('Shipping Agent selection is mandatory.');
            end;
        }
    }
}
