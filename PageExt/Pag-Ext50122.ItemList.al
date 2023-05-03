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
}
