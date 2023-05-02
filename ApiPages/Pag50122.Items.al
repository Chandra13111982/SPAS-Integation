page 50122 Items
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
    // ODataKeyFields = SystemId;
    Permissions = tabledata Item = rimd;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(itemno; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(description2; Rec."Description 2")
                {
                    Caption = 'Description 2';
                }
                field("type"; Rec."Type")
                {
                    Caption = 'Type';
                }
            }
        }
    }
}
