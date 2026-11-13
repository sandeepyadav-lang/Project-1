pageextension 50101 "vendor card Ext" extends "Vendor Card"
{
    layout
    {
        addafter(General)
        {
            group("Company Information")
            {
                Caption = ' Company General Information';
                field("Company Type"; Rec."Company Type") { ApplicationArea = All; }
                field("Business Activity"; Rec."Business Activity") { ApplicationArea = All; }
                field("Industry/Sector"; Rec."Industry/Sector") { ApplicationArea = All; }
                field("Country of Registration"; Rec."Country of Registration") { ApplicationArea = All; }
                field("Date of Incorporation"; Rec."Date of Incorporation") { ApplicationArea = All; }
                field("Trade License Expiry Date"; Rec."Trade License Expiry Date") { ApplicationArea = All; }
                field("ICV Certificate No."; Rec."ICV Certificate No.") { ApplicationArea = All; }
                field("ICV Certificate Expiry Date"; Rec."ICV Certificate Expiry Date") { ApplicationArea = All; }
                field("VAT Registered"; Rec."VAT Registered") { ApplicationArea = All; }
                field("Tax Identification No."; Rec."Tax Identification No.") { ApplicationArea = All; }
                field("Has Peppol ID"; Rec."Has Peppol ID") { ApplicationArea = All; }
                field("Peppol ID"; Rec."Peppol ID") { ApplicationArea = All; }
                field("Number of Employees"; Rec."Number of Employees") { ApplicationArea = All; }
                field("Number of Branches"; Rec."Number of Branches") { ApplicationArea = All; }
                field("Company Relationship"; Rec."Company Relationship") { ApplicationArea = All; }
                field("Years in Business"; Rec."Years in Business") { ApplicationArea = All; }
            }
            group("Registered Office Contact")
            {
                Caption = 'Registered Office & Contact';
                field("Street/Area"; Rec."Street/Area") { ApplicationArea = All; }
                field("Contact Designation"; Rec."Contact Designation") { ApplicationArea = All; }
                field("Contact Email"; Rec."Contact Email") { ApplicationArea = All; }
                field("Contact Number"; Rec."Contact Number") { ApplicationArea = All; }
            }
            group("Ownership Management")
            {
                Caption = 'Ownership & Management';
                field("Owner 1 Name"; Rec."Owner 1 Name") { ApplicationArea = All; }
                field("Owner 1 Designation"; Rec."Owner 1 Designation") { ApplicationArea = All; }
                field("Owner 1 Nationality"; Rec."Owner 1 Nationality") { ApplicationArea = All; }
                field("Owner 1 Contact No."; Rec."Owner 1 Contact No.") { ApplicationArea = All; }
                field("Owner 1 Email"; Rec."Owner 1 Email") { ApplicationArea = All; }
                field("Owner 1 Signing Authority"; Rec."Owner 1 Signing Authority") { ApplicationArea = All; }
                field("Owner 2 Name"; Rec."Owner 2 Name") { ApplicationArea = All; }
                field("Owner 2 Designation"; Rec."Owner 2 Designation") { ApplicationArea = All; }
                field("Owner 2 Nationality"; Rec."Owner 2 Nationality") { ApplicationArea = All; }
                field("Owner 2 Contact No."; Rec."Owner 2 Contact No.") { ApplicationArea = All; }
                field("Owner 2 Email"; Rec."Owner 2 Email") { ApplicationArea = All; }
                field("Owner 2 Signing Authority"; Rec."Owner 2 Signing Authority") { ApplicationArea = All; }
                field("Owner 3 Name"; Rec."Owner 3 Name") { ApplicationArea = All; }
                field("Owner 3 Designation"; Rec."Owner 3 Designation") { ApplicationArea = All; }
                field("Owner 3 Nationality"; Rec."Owner 3 Nationality") { ApplicationArea = All; }
                field("Owner 3 Contact No."; Rec."Owner 3 Contact No.") { ApplicationArea = All; }
                field("Owner 3 Email"; Rec."Owner 3 Email") { ApplicationArea = All; }
                field("Owner 3 Signing Authority"; Rec."Owner 3 Signing Authority") { ApplicationArea = All; }
                field("Signatory Name"; Rec."Signatory Name") { ApplicationArea = All; }
                field("Signatory Designation"; Rec."Signatory Designation") { ApplicationArea = All; }
                field("Signatory Email"; Rec."Signatory Email") { ApplicationArea = All; }
                field("Signatory Contact No."; Rec."Signatory Contact No.") { ApplicationArea = All; }
            }
            group("Business Supply")
            {
                Caption = 'Business & Supply';
                field("Vendor Type"; Rec."Vendor Type") { ApplicationArea = All; }
                field("Products/Services Offered"; Rec."Products/Services Offered") { ApplicationArea = All; }
                field("Main Product Categories"; Rec."Main Product Categories") { ApplicationArea = All; }
                field("Brands Represented"; Rec."Brands Represented") { ApplicationArea = All; }
                field("Authorized Distributor"; Rec."Authorized Distributor") { ApplicationArea = All; }
                field("Geographical Coverage"; Rec."Geographical Coverage") { ApplicationArea = All; }
                field("Key Industries Served"; Rec."Key Industries Served") { ApplicationArea = All; }
                field("Major Clients/Projects"; Rec."Major Clients/Projects") { ApplicationArea = All; }
                field("Years of Experience"; Rec."Years of Experience") { ApplicationArea = All; }
                field("Annual Supply Capacity"; Rec."Annual Supply Capacity") { ApplicationArea = All; }
                field("Country of Origin"; Rec."Country of Origin") { ApplicationArea = All; }
                field("Delivery Capability"; Rec."Delivery Capability") { ApplicationArea = All; }
                field("After-Sales Support"; Rec."After-Sales Support") { ApplicationArea = All; }
                field("Warranty Offered"; Rec."Warranty Offered") { ApplicationArea = All; }
            }
            group("Financial Commercial")
            {
                Caption = 'Financial & Commercial';
                field("Beneficiary Name"; Rec."Beneficiary Name") { ApplicationArea = All; }
                field("Annual Turnover"; Rec."Annual Turnover") { ApplicationArea = All; }
                field("Financial Year Ending"; Rec."Financial Year Ending") { ApplicationArea = All; }
                field("Credit Rating Available"; Rec."Credit Rating Available") { ApplicationArea = All; }
                field("Credit Rating Details"; Rec."Credit Rating Details") { ApplicationArea = All; }
                field("Bank Reference Available"; Rec."Bank Reference Available") { ApplicationArea = All; }
                field("Quotation Validity"; Rec."Quotation Validity") { ApplicationArea = All; }
                field("Minimum Order Quantity"; Rec."Minimum Order Quantity") { ApplicationArea = All; }
                field("Delivery Terms"; Rec."Delivery Terms") { ApplicationArea = All; }
                field("Return Policy"; Rec."Return Policy") { ApplicationArea = All; }
                field("After-Sales Service Terms"; Rec."After-Sales Service Terms") { ApplicationArea = All; }
                field("Late Delivery Penalty"; Rec."Late Delivery Penalty") { ApplicationArea = All; }
                field("Additional Commercial Terms"; Rec."Additional Commercial Terms") { ApplicationArea = All; }
            }
            group("References")
            {
                Caption = 'References';
                field("Ref 1 Company"; Rec."Ref 1 Company") { ApplicationArea = All; }
                field("Ref 1 Contact Person"; Rec."Ref 1 Contact Person") { ApplicationArea = All; }
                field("Ref 1 Designation"; Rec."Ref 1 Designation") { ApplicationArea = All; }
                field("Ref 1 Email"; Rec."Ref 1 Email") { ApplicationArea = All; }
                field("Ref 1 Contact No."; Rec."Ref 1 Contact No.") { ApplicationArea = All; }
                field("Ref 1 Relationship"; Rec."Ref 1 Relationship") { ApplicationArea = All; }
                field("Ref 2 Company"; Rec."Ref 2 Company") { ApplicationArea = All; }
                field("Ref 2 Contact Person"; Rec."Ref 2 Contact Person") { ApplicationArea = All; }
                field("Ref 2 Designation"; Rec."Ref 2 Designation") { ApplicationArea = All; }
                field("Ref 2 Email"; Rec."Ref 2 Email") { ApplicationArea = All; }
                field("Ref 2 Contact No."; Rec."Ref 2 Contact No.") { ApplicationArea = All; }
                field("Ref 2 Relationship"; Rec."Ref 2 Relationship") { ApplicationArea = All; }
                field("Ref 3 Company"; Rec."Ref 3 Company") { ApplicationArea = All; }
                field("Ref 3 Contact Person"; Rec."Ref 3 Contact Person") { ApplicationArea = All; }
                field("Ref 3 Designation"; Rec."Ref 3 Designation") { ApplicationArea = All; }
                field("Ref 3 Email"; Rec."Ref 3 Email") { ApplicationArea = All; }
                field("Ref 3 Contact No."; Rec."Ref 3 Contact No.") { ApplicationArea = All; }
                field("Ref 3 Relationship"; Rec."Ref 3 Relationship") { ApplicationArea = All; }
            }
            group("QHSE Certifications")
            {
                Caption = 'QHSE & Certifications';
                field("Cert ISO 9001"; Rec."Cert ISO 9001") { ApplicationArea = All; }
                field("Cert ISO 9001 Details"; Rec."Cert ISO 9001 Details") { ApplicationArea = All; }
                field("Cert ISO 14001"; Rec."Cert ISO 14001") { ApplicationArea = All; }
                field("Cert ISO 14001 Details"; Rec."Cert ISO 14001 Details") { ApplicationArea = All; }
                field("Cert ISO 45001"; Rec."Cert ISO 45001") { ApplicationArea = All; }
                field("Cert ISO 45001 Details"; Rec."Cert ISO 45001 Details") { ApplicationArea = All; }
                field("Cert ISO 27001"; Rec."Cert ISO 27001") { ApplicationArea = All; }
                field("Cert ISO 27001 Details"; Rec."Cert ISO 27001 Details") { ApplicationArea = All; }
                field("Cert Other ISO"; Rec."Cert Other ISO") { ApplicationArea = All; }
                field("Cert Other ISO Details"; Rec."Cert Other ISO Details") { ApplicationArea = All; }
                field("Cert HS Policy"; Rec."Cert HS Policy") { ApplicationArea = All; }
                field("Cert HS Policy Details"; Rec."Cert HS Policy Details") { ApplicationArea = All; }
                field("Cert Env Policy"; Rec."Cert Env Policy") { ApplicationArea = All; }
                field("Cert Env Policy Details"; Rec."Cert Env Policy Details") { ApplicationArea = All; }
                field("Cert Quality Policy"; Rec."Cert Quality Policy") { ApplicationArea = All; }
                field("Cert Quality Policy Details"; Rec."Cert Quality Policy Details") { ApplicationArea = All; }
                field("Cert Risk Assessment"; Rec."Cert Risk Assessment") { ApplicationArea = All; }
                field("Cert Risk Assessment Details"; Rec."Cert Risk Assessment Details") { ApplicationArea = All; }
                field("Cert HSE Reporting"; Rec."Cert HSE Reporting") { ApplicationArea = All; }
                field("Cert HSE Reporting Details"; Rec."Cert HSE Reporting Details") { ApplicationArea = All; }
                field("Cert Product Testing"; Rec."Cert Product Testing") { ApplicationArea = All; }
                field("Cert Product Testing Details"; Rec."Cert Product Testing Details") { ApplicationArea = All; }
                field("Cert Product Warranty"; Rec."Cert Product Warranty") { ApplicationArea = All; }
                field("Cert Product Warranty Details"; Rec."Cert Product Warranty Details") { ApplicationArea = All; }
                field("Certification Details"; Rec."Certification Details") { ApplicationArea = All; }
            }
            group("Compliance Documents")
            {
                Caption = 'Compliance Declarations & Documents';
                field("Decl Trade Licence"; Rec."Decl Trade Licence") { ApplicationArea = All; }
                field("Decl Local Laws"; Rec."Decl Local Laws") { ApplicationArea = All; }
                field("Decl Anti-Bribery"; Rec."Decl Anti-Bribery") { ApplicationArea = All; }
                field("Decl Ethical Practices"; Rec."Decl Ethical Practices") { ApplicationArea = All; }
                field("Decl Labour Rights"; Rec."Decl Labour Rights") { ApplicationArea = All; }
                field("Decl Sanctions"; Rec."Decl Sanctions") { ApplicationArea = All; }
                field("Decl No Restrictions"; Rec."Decl No Restrictions") { ApplicationArea = All; }
                field("Decl No Conflict"; Rec."Decl No Conflict") { ApplicationArea = All; }
                field("Decl Confidentiality"; Rec."Decl Confidentiality") { ApplicationArea = All; }
                field("Decl Notify Changes"; Rec."Decl Notify Changes") { ApplicationArea = All; }
                field("Compliance Concern Details"; Rec."Compliance Concern Details") { ApplicationArea = All; }
                field("Doc Trade License"; Rec."Doc Trade License") { ApplicationArea = All; }
                field("Doc VAT Certificate"; Rec."Doc VAT Certificate") { ApplicationArea = All; }
                field("Doc ICV Certificate"; Rec."Doc ICV Certificate") { ApplicationArea = All; }
                field("Doc Company Profile"; Rec."Doc Company Profile") { ApplicationArea = All; }
                field("Doc Signatory ID"; Rec."Doc Signatory ID") { ApplicationArea = All; }
                field("Doc Signatory Letter"; Rec."Doc Signatory Letter") { ApplicationArea = All; }
                field("Doc Bank Letter"; Rec."Doc Bank Letter") { ApplicationArea = All; }
                field("Doc ISO Certificates"; Rec."Doc ISO Certificates") { ApplicationArea = All; }
                field("Doc QHSE Policies"; Rec."Doc QHSE Policies") { ApplicationArea = All; }
                field("Doc Catalogue"; Rec."Doc Catalogue") { ApplicationArea = All; }
                field("Doc Authorization"; Rec."Doc Authorization") { ApplicationArea = All; }
                field("Doc Insurance"; Rec."Doc Insurance") { ApplicationArea = All; }
                field("Doc Client References"; Rec."Doc Client References") { ApplicationArea = All; }
                field("Doc Other Certifications"; Rec."Doc Other Certifications") { ApplicationArea = All; }
            }
            group("Internal Use")
            {
                Caption = 'For Internal Use Only';
                field("Date Received"; Rec."Date Received") { ApplicationArea = All; }
                field("Vendor Category"; Rec."Vendor Category") { ApplicationArea = All; }
                field("Procurement Review"; Rec."Procurement Review") { ApplicationArea = All; }
                field("Trade License Verification"; Rec."Trade License Verification") { ApplicationArea = All; }
                field("Tax Verification"; Rec."Tax Verification") { ApplicationArea = All; }
                field("Banking Verification"; Rec."Banking Verification") { ApplicationArea = All; }
                field("Compliance Review"; Rec."Compliance Review") { ApplicationArea = All; }
                field("QHSE Review"; Rec."QHSE Review") { ApplicationArea = All; }
                field("Financial Review"; Rec."Financial Review") { ApplicationArea = All; }
                field("Risk Classification"; Rec."Risk Classification") { ApplicationArea = All; }
                field("Registration Status"; Rec."Registration Status") { ApplicationArea = All; }
                field("Internal Remarks"; Rec."Internal Remarks") { ApplicationArea = All; }
                field("Approval Decision"; Rec."Approval Decision") { ApplicationArea = All; }
                field("Approved By"; Rec."Approved By") { ApplicationArea = All; }
                field("Approval Date"; Rec."Approval Date") { ApplicationArea = All; }
            }
        }
    }
}
