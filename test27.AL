// pageextension 50240 MyPageExtension extends "Warehouse Shipment"
// {
//     layout
//     {
//         modify("Shipping Agent Code")
//         {
//             trigger OnAfterValidate()
//             begin
//                 CheckMyFieldRequired();
//             end;
//         }
//     }

//     local procedure CheckMyFieldRequired()
//     begin
//         if Rec."Shipping Agent Code" = '' then // یا Rec."My Field" = 0 برای فیلدهای عددی
//             Error('My Field is required.');
//     end;
// }