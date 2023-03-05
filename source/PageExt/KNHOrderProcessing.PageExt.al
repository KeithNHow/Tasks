/// <summary>
/// PageExt "KNH Order Processing" extends Order Processor Role Center 9006
/// </summary>
pageextension 51921 "KNH_OrderProcessing" extends "Order Processor Role Center" //9006
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
                RunObject = codeunit "KNH_CompanyTest";
            }
        }
    }
}