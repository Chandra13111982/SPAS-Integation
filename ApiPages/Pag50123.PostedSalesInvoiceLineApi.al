page 50123 "Posted Sales Invoice Line Api"
{
    APIGroup = 'spasintegration';
    APIPublisher = 'bizsoft';
    APIVersion = 'v2.0';
    Caption = 'postedSalesInvoiceLineApi';
    DelayedInsert = true;
    EntityName = 'salesLines';
    EntitySetName = 'salesLines';
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

                field(spasId; Rec."Spas Id")
                {
                    Caption = 'Spas Id';
                }
                field(spasSync; Rec."Spas Sync")
                {
                    Caption = 'Spas Sync';
                }
                field(systemId; Rec.SystemId)
                {

                }
                field(itemNo; Rec."No.")
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
                field(grossAmount; Rec."Line Amount" - Rec."Line Discount Amount")
                {
                    Caption = 'Gross Amount';
                    Editable = false;
                }

                field(discountAmount; Rec."Line Discount Amount")
                {
                    Caption = 'Line Discount Amount';
                }
                field(discountPercent; Rec."Line Discount %")
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
                field(amountWithVat; Rec."Amount Including VAT")
                {
                    Caption = 'Amount Including VAT';
                }
                field(VatAmount; Rec."Amount Including VAT" - Rec.Amount)
                {
                    Caption = 'Amount Including VAT';
                    Editable = false;
                }

                field(taxableAmount; Rec."Line Amount")
                {
                    Caption = 'Taxable Amount';
                }
                field(vatPercent; Rec."VAT %")
                {
                    Caption = 'VAT %';
                }

            }
        }
    }
}
