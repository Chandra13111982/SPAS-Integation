page 50122 ItemApi
{
    APIGroup = 'spasintegration';
    APIPublisher = 'bizsoft';
    APIVersion = 'v2.0';
    Caption = 'items';
    DelayedInsert = true;
    EntityName = 'item';
    EntitySetName = 'item';
    PageType = API;
    SourceTable = Item;
    Editable = true;
    ODataKeyFields = SystemId;
    Permissions = tabledata Item = rimd;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(spasSync; Rec."Spas Sync")
                {
                    Caption = 'Spas Sync';
                }
                field(itemno; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field("type"; Rec."Type")
                {
                    Caption = 'Type';
                }
                field(id; Rec.SystemId)
                {
                    Caption = 'Id';
                }
            }
        }
    }
}
