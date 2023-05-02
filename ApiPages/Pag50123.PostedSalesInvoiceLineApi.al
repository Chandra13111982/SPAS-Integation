page 50123 "Posted Sales Invoice Line Api"
{
    APIGroup = 'spasintegration';
    APIPublisher = 'bizsoft';
    APIVersion = 'v2.0';
    Caption = 'postedSalesInvoiceLineApi';
    DelayedInsert = true;
    EntityName = 'postedsalesinvoiceline';
    EntitySetName = 'postedsalesinvoiceline';
    PageType = API;
    SourceTable = "Sales Invoice Line";
    ODataKeyFields = SystemId;
    Editable = true;
    Permissions = tabledata "Sales Invoice Line" = rimd;


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(documentNo; Rec."Document No.")
                {
                    Caption = 'Document No.';
                }
                field(systemId; Rec.SystemId)
                {

                }
                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }
                field("type"; Rec."Type")
                {
                    Caption = 'Type';
                }
                field(unitPrice; Rec."Unit Price")
                {
                    Caption = 'Unit Price';
                }
                field(amount; Rec.Amount)
                {
                    Caption = 'Amount';
                }
                field(invDiscountAmount; Rec."Inv. Discount Amount")
                {
                    Caption = 'Inv. Discount Amount';
                }
                field(lineDiscountAmount; Rec."Line Discount Amount")
                {
                    Caption = 'Line Discount Amount';
                }
                field(lineDiscount; Rec."Line Discount %")
                {
                    Caption = 'Line Discount %';
                }
                field(quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                }
                field(unitOfMeasure; Rec."Unit of Measure")
                {
                    Caption = 'Unit of Measure';
                }
                field(amountIncludingVAT; Rec."Amount Including VAT")
                {
                    Caption = 'Amount Including VAT';
                }
                field(lineAmount; Rec."Line Amount")
                {
                    Caption = 'Line Amount';
                }
                field(vat; Rec."VAT %")
                {
                    Caption = 'VAT %';
                }
            }
        }
    }
}
