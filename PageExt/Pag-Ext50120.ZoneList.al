pageextension 50120 "Languages" extends Languages
{
    layout
    {

    }
    actions
    {
        addfirst(Creation)
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
