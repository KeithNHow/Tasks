# Summary
This extension consists of 2 Codeunits and 2 pageExtensions.

# CompanyTest Codeunit
This codeunit is used to display information from the Company table, Company Information table and CDS Company table. 
It will display the company name, display name, company id and url name of the current company. 
It will display the company name and city from Company Information table.
It will display the company name and company id from CDS Company table.

# JobQueueJob Codeunit
This Codeunit is used to test the Job Queue Entry table. It will display a message when the codeunit is run from the Job Queue, and it will only display the message if the Job Queue Category Code is 'DO THIS' and the Object ID to Run is not 0. This allows for testing of the Job Queue functionality without having to set up a specific Job Queue Entry for this codeunit.

# CustomerList
This page extension is used to test the Task Scheduler and Session functionality. When the Customer List page is opened, it will create a task to run the Sales-Post codeunit at a specified time. 

# Order Processsing
This page extension contains a new action to obtain company information by running the KNHCompanyTest codeunit.
