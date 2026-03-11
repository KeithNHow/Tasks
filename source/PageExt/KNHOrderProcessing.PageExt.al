/// <summary>
/// This page extension contains a new action to obtain company information by running the KNHCompanyTest codeunit. 
/// </summary>
pageextension 51921 KNHOrderProcessing extends "Order Processor Role Center" //9006
{
    actions
    {
        addafter("History")
        {
            action(KNH_CompanyTest) //604
            {
                ApplicationArea = All;
                ToolTip = 'Company Test';
                Caption = 'Company Test';
                RunObject = codeunit KNHCompanyTest;
            }
        }
    }
}