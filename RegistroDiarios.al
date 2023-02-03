codeunit 50147 TestIRPF
{
    [EventSubscriber(ObjectType::Page, 146, 'OnAfterGetCurrRecordEvent', '', false, false)]
    local procedure Pag146_OnAfterGetCurrRecordEvent(var Rec: Record "Purch. Inv. Header")
    var
    begin
        Rec."Amount Including VAT" += 1
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Document Totals", 'OnAfterCalculatePostedPurchInvoiceTotals', '', false, false)]
    local procedure OnAfterCalculatePostedPurchInvoiceTotals(var PurchInvHeader: Record "Purch. Inv. Header"; var VATAmount: Decimal; var PurchInvLine: Record "Purch. Inv. Line");
    begin
        PurchInvHeader."Amount Including VAT" += 2;
    end;

}