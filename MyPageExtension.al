// pageextension 50240 WarehouseShipmentPageExt extends "Warehouse Shipment"
// {
//     layout
//     {
//         modify("Shipping Agent Code")
//         {
//             ApplicationArea = All;
//             Caption = 'Shipping Agent Code';
//             trigger OnAfterValidate()
//             var
//                 PreviousShippingAgentCode: Code[20];
//             begin
//                 // بررسی اجباری بودن فیلد
//                 PreviousShippingAgentCode := Rec.GetFilter("Shipping Agent Code");
//                 if Rec."Shipping Agent Code" <> PreviousShippingAgentCode then
//                     CheckShippingAgentCodeRequired();
//             end;
//         }
//     }
//     trigger on()
//     var
//         myInt: Integer;
//     begin

//     end;

//     local procedure CheckShippingAgentCodeRequired()
//     begin
//         if Rec."Default Dimension From Setup" then
//             if Rec."Shipping Agent Code" = '' then begin
//                 Error('Shipping Agent Code is required when Default Dimension is enabled in Warehouse Setup.');
//                 Rec."Shipping Agent Code" := ''; // پاک کردن فیلد
//             end;
//     end;
// }