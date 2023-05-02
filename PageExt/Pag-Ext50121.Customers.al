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
}
