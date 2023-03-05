/// <summary>
/// Codeunit KNH_JobQueue Job (ID 51921).
/// </summary>
codeunit 51921 "KNH_JobQueueJob"
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
