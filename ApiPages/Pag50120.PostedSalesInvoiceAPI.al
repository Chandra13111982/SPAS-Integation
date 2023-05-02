page 50120 "Posted Sales API"
{
    APIGroup = 'spasintegration';
    APIPublisher = 'bizsoft';
    APIVersion = 'v2.0';
    Caption = 'postedSalesInvoiceAPI';
    DelayedInsert = true;
    EntityName = 'postedsalesinvoice';
    EntitySetName = 'postedsalesinvoice';
    PageType = API;
    SourceTable = "Sales Invoice Header";
    Editable = true;
    ODataKeyFields = SystemId;
    Permissions = tabledata "Sales Invoice Header" = rimd;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(documentNo; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(systemId; Rec.SystemId)
                {
                    Caption = 'SystemId';
                }
                field(systemCreatedAt; Rec.SystemCreatedAt)
                {
                    Caption = 'SystemCreatedAt';
                }
                field(systemCreatedBy; Rec.SystemCreatedBy)
                {
                    Caption = 'SystemCreatedBy';
                }
                field(systemModifiedAt; Rec.SystemModifiedAt)
                {
                    Caption = 'SystemModifiedAt';
                }
                field(systemModifiedBy; Rec.SystemModifiedBy)
                {
                    Caption = 'SystemModifiedBy';
                }
                field(postingDescription; Rec."Posting Description")
                {
                    Caption = 'Posting Description';
                }
                field(customerNo; Rec."Bill-to Customer No.")
                {
                    Caption = 'Bill-to Customer No.';
                }
                field(customerName; Rec."Bill-to Name")
                {
                    Caption = 'Bill-to Name';
                }
                field(CustomerAddress; Rec."Bill-to Address")
                {
                    Caption = 'Bill-to Address';
                }

                field(amountIncludingVAT; Rec."Amount Including VAT")
                {
                    Caption = 'Amount Including VAT';
                }
                field(amount; Rec.Amount)
                {
                    Caption = 'Amount';
                }
                field(salespersonCode; Rec."Salesperson Code")
                {
                    Caption = 'Salesperson Code';
                }
                field(invoiceDate; Rec."Posting Date")
                {
                    Caption = 'Invoice Date';
                }

            }
        }
    }
}
