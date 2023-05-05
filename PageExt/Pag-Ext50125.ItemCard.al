pageextension 50125 "Item Card" extends "Item Card"
{
    layout
    {
        addafter("Base Unit of Measure")
        {
            field("Spas Sync"; Rec."Spas Sync")
            {
                ApplicationArea = all;
            }
        }
    }
}
