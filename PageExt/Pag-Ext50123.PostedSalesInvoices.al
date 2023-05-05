pageextension 50123 "Posted Sales Invoices" extends "Posted Sales Invoices"
{

    layout
    {
        addafter("No. Printed")
        {
            field("Spas Id"; Rec."Spas Id")
            {
                ApplicationArea = All;

            }

            field("Spas Sync"; Rec."Spas Sync")
            {
                ApplicationArea = all;
            }
        }

    }

    actions
    {
        addafter("Co&mments")
        {
            action("Set to Synch Pending")
            {
                ApplicationArea = All;
                Image = OutlookSyncFields;

                trigger OnAction()
                var
                    SalesInvoiceHeader: Record "Sales Invoice Header";
                    SpasIntMgmt: Codeunit SpasIntegrationManagement;
                begin
                    CurrPage.SetSelectionFilter(SalesInvoiceHeader);
                    SpasIntMgmt.SetSpasSyncToPending(SalesInvoiceHeader);
                    CurrPage.Update();
                end;
            }
        }
    }


}
