/// <summary>
/// This page extension is used to test the Task Scheduler and Session functionality. When the Customer List page is opened, it will create a task to run the Sales-Post codeunit at a specified time. 
/// </summary>
pageextension 51920 KNHCustomerList extends "Customer List"
{
    trigger OnOpenPage()
    var
        SalesHeader: Record "Sales Header";
        RecordId: RecordId;
        CurrSession: Integer;
        EarliestStartDateTime: DateTime;
        TaskId: Guid;
        TaskMsg: Label 'Task Created %1', Comment = '%1 = TaskId';
    begin
        EarliestStartDateTime := CurrentDateTime() + 120;
        if TaskScheduler.CanCreateTask() then begin
            TaskId := TaskScheduler.CreateTask(codeunit::"Sales-Post", codeunit::"Job Queue Error Handler", true, CompanyName, EarliestStartDateTime, RecordId);
            Message(TaskMsg, TaskId);
        end;
        //Adds a task to ensure that a codeunit is not run before the specified time.

        CurrSession := SessionId();
        StartSession(CurrSession, codeunit::"Sales-Post", CompanyName, SalesHeader);
        StopSession(CurrSession, 'Session Stopped');
        //Starts a session without a UI and runs the specified codeunit.
    end;
}
