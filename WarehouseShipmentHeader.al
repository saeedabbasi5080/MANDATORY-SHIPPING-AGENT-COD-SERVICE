// tableextension 50202 MyWarehouseSetupExt extends "Warehouse Setup"
// {
//     fields
//     {
//         field(50100; "Default Dimension"; Boolean)
//         {
//             Caption = 'Default Dimension';
//             trigger OnValidate()
//             begin
//                 if "Default Dimension" then
//                     "Require Put-away" := false;

//                 // بروزرسانی فیلد در Warehouse Shipment Header
//                 UpdateWarehouseShipmentHeaderDefaultDimension(Rec."Default Dimension");
//             end;
//         }
//     }

//     local procedure UpdateWarehouseShipmentHeaderDefaultDimension(DefaultDimensionValue: Boolean)
//     var
//         WarehouseShipmentHeader: Record "Warehouse Shipment Header";
//     begin
//         WarehouseShipmentHeader.Reset();
//         if WarehouseShipmentHeader.FindSet() then
//             repeat
//                 WarehouseShipmentHeader."Default Dimension From Setup" := DefaultDimensionValue;
//                 WarehouseShipmentHeader.Modify();
//             until WarehouseShipmentHeader.Next() = 0;
//     end;
// }