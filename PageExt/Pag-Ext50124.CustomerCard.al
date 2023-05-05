pageextension 50124 "Customer Card" extends "Customer Card"
{
    layout
    {
        addafter(Address)
        {
            field("Spas Sync"; Rec."Spas Sync")
            {
                ApplicationArea = all;
            }
            field("Spas Id"; Rec."Spas Id")
            {
                ApplicationArea = all;
            }
        }
    }
}
