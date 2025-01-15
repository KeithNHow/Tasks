/// <summary>
/// Codeunit "KNH Company Test" (ID 51920).
/// </summary>
codeunit 51920 "KNH_CompanyTest"
{
    TableNo = Company;

    trigger OnRun()
    var
        MyCompany: Record Company;
        MyCompanyInformation: Record "Company Information";
        CDSCompany: Record "CDS Company";
        DisplayName: Text;
        UrlName: Text;
        CompanyID: Guid;
    begin
        Message(CompanyName());
        DisplayName := CompanyProperty.DisplayName();
        CompanyID := CompanyProperty.ID();
        UrlName := CompanyProperty.UrlName();
        Message(DisplayName);
        Message(CompanyID);
        Message(UrlName);

        MyCompany.Get();
        Message(MyCompany.Name);
        Message(MyCompany."Display Name");
        Message(Format(MyCompany.Id));

        MyCompanyInformation.Get();
        Message(MyCompanyInformation.Name);
        Message(MyCompanyInformation.City);

        CDSCompany.Get();
        Message(CDSCompany.Name);
        Message((Format(CDSCompany.CompanyId)));
    end;
}
