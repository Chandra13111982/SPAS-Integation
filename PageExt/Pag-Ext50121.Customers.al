pageextension 50121 Customers extends "Customer List"
{

    layout
    {
        addafter("Search Name")
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
                Promoted = true;
                PromotedCategory = Process;
                Image = OutlookSyncFields;
                trigger OnAction()
                var
                    Customers: Record Customer;
                begin
                    CurrPage.SetSelectionFilter(Customers);
                    if Customers.FindFirst() then
                        repeat
                            Customers."Spas Sync" := Customers."Spas Sync"::Pending;
                            Customers.Modify();
                        until Customers.Next() = 0;
                    CurrPage.Update();
                end;
            }
        }
    }
}
