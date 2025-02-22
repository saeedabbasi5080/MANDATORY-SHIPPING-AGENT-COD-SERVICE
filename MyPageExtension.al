pageextension 50240 WarehouseShipmentPageExt extends "Warehouse Setup"
{
    layout
    {
        addlast(General)
        {
            field("Default Dimension"; Rec."Default Dimension")
            {
                ApplicationArea = All;
                Caption = 'Default Dimension';
            }
        }
    }

    // actions
    // {
    //     addlast(processing)
    //     {
    //         action(UpdateDefaultDimension)
    //         {
    //             Caption = 'Fetch Default Dimension';
    //             ApplicationArea = All;
    //             trigger OnAction()
    //             var
    //                 WarehouseSetup: Record "Warehouse Setup Ext";
    //             begin
    //                 if WarehouseSetup.Get() then
    //                     Rec."Default Dimension" := WarehouseSetup."Default Dimension";
    //             end;
    //         }
    //     }
    // }
}