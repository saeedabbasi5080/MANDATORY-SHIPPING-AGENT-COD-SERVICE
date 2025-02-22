codeunit 50202 PreventSalesOrderChanges
{
    Subtype = EventSubscriber;
    [EventSubscriber(ObjectType::Table, Database::"Sales Header", OnBeforeModify, '', false, false)]
    local procedure PreventSalesChanges(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; FieldNumber: Integer; var IsHandled: Boolean)
    begin
        Error('Modifications to Sales Order and Sales Quote are not allowed.');
    end;
}
