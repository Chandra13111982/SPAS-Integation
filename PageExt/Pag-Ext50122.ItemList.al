pageextension 50122 "Item List" extends "Item List"
{
    layout
    {
        addafter(Description)
        {

            field("Spas Sync"; Rec."Spas Sync")
            {
                ApplicationArea = all;
            }
        }
    }
    actions
    {
        addafter("&Value Entries")
        {
            action("Set to Synch Pending")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = OutlookSyncFields;
                trigger OnAction()
                var
                    Items: Record Item;
                begin
                    CurrPage.SetSelectionFilter(Items);
                    if Items.FindFirst() then
                        repeat
                            Items."Spas Sync" := Items."Spas Sync"::Pending;
                            Items.Modify();
                        until Items.Next() = 0;
                    CurrPage.Update();
                end;
            }
        }
    }
}
