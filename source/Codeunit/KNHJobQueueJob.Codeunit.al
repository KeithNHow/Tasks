/// <summary>
/// This Codeunit is used to test the Job Queue Entry table. It will display a message when the codeunit is run from the Job Queue, and it will only display the message if the Job Queue Category Code is 'DO THIS' and the Object ID to Run is not 0. This allows for testing of the Job Queue functionality without having to set up a specific Job Queue Entry for this codeunit.
/// </summary>
codeunit 51921 KNHJobQueueJob
{
    TableNo = "Job Queue Entry";

    trigger OnRun()
    begin
        //Message('Started with %1', Rec."Parameter String"); //Requires setup of Job Queue Entry for codeunit
        if Rec."Job Queue Category Code" = 'DO THIS' then
            if Rec."Object ID to Run" <> 0 then
                Message('Started with %1', Rec."Parameter String"); //Requires setup of Job Queue Entry for codeunit
    end;
}
