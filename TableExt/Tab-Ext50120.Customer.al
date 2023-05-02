tableextension 50120 Customer extends Customer
{
    fields
    {
        field(50120; "Spas Id"; Integer)
        {
            Caption = 'Spas Id';
            DataClassification = CustomerContent;
        }
        field(50121; "Spas Sync"; Option)
        {
            Caption = 'Spas Sync';
            DataClassification = ToBeClassified;
            OptionMembers = Pending,Done;
        }
    }
}
