tableextension 50246 "saeed change" extends "Warehouse Shipment Header"
{

    fields
    {
        modify("Shipping Agent Code")
        {
            trigger OnAfterValidate()
            begin
                if Rec."Shipping Agent Code" = '' then
                    Error('فیلد "SomeField" نمی‌تواند خالی باشد. لطفاً یک مقدار وارد کنید.');
            end;


        }
    }


    // trigger OnModify()
    // begin
    //     if Rec."Shipping Agent Code" = '' then
    //         Error('فیلد "SomeField" نمی‌تواند خالی باشد. لطفاً یک مقدار وارد کنید.');
    // end;
}