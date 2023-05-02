page 50121 CustomerApi
{
    APIGroup = 'spasintegration';
    APIPublisher = 'bizsoft';
    APIVersion = 'v2.0';
    Caption = 'customerApi';
    DelayedInsert = true;
    EntityName = 'customer';
    EntitySetName = 'customer';
    PageType = API;
    SourceTable = Customer;
    Editable = true;
    ODataKeyFields = SystemId;
    Permissions = tabledata Customer = rimd;


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(customerNo; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(permanentAddress; Rec.Address)
                {
                    Caption = 'Address';
                }
                field(spasId; Rec."Spas Id")
                {
                    Caption = 'Spas Id';
                }
                field(id; Rec.SystemId)
                {
                    Caption = 'ID';
                }
                field(spasSync; Rec."Spas Sync")
                {
                    Caption = 'Spas Sync';
                }
                field(mobileNo; Rec."Mobile Phone No.")
                {
                    Caption = 'Mobile Phone No.';
                }
                field(phoneNo; Rec."Phone No.")
                {
                    Caption = 'Phone No.';
                }
                field(emailAddress; Rec."E-Mail")
                {
                    Caption = 'Email';
                }
                field(vatRegNo; Rec."VAT Registration No.")
                {
                    Caption = 'VAT Registration No.';
                }
            }
        }
    }
}
