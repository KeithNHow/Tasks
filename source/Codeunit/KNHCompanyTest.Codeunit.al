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
    begin
        Message(CompanyName());
        DisplayName := CompanyProperty.DisplayName();
        UrlName := CompanyProperty.UrlName();
        Message(DisplayName);
        Message(UrlName);
        MyCompany.Get();
        CDSCompany.Get();
        Message(MyCompany.Name);
        Message(MyCompany."Display Name");
        Message(MyCompanyInformation.Name);
        Message(Format(MyCompany.Id));
        Message(CDSCompany.Name);
        Message((Format(CDSCompany.CompanyId)));
    end;

}
