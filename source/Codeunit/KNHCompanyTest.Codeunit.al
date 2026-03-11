/// <summary>
/// This codeunit is used to display information from the Company table, Company Information table and CDS Company table. 
/// It will display the company name, display name, company id and url name of the current company. 
/// It will display the company name and city from Company Information table.
/// It will display the company name and company id from CDS Company table.
/// </summary>
codeunit 51920 KNHCompanyTest
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
