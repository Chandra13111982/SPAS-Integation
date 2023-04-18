pageextension 50149 "Zone List" extends "Zone List"
{
    layout
    {

    }
    actions
    {
        addbefore("&Bins")
        {
            action(GetApi)
            {
                ApplicationArea = all;
                trigger OnAction()
                var
                    IntMgmt: Codeunit SpasIntegrationManagement;
                begin
                    IntMgmt.GetZone();
                end;

            }
            action(SynchApi)
            {
                ApplicationArea = all;
                trigger OnAction()
                var
                    IntMgmt: Codeunit SpasIntegrationManagement;
                begin
                    IntMgmt.SynchZone(Rec);
                end;

            }
        }
    }

}
