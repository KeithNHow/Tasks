/// <summary>
/// PageExtension "KNH Customer List" (ID 51920) extends Record Customer List.
/// Hougaard - Tasks or job Queue
/// </summary>
pageextension 51920 "KNH_CustomerList" extends "Customer List"
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
        EarliestStartDateTime := CurrentDateTime() - 3600;
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
