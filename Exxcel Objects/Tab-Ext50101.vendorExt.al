tableextension 50101 "vendor Ext" extends Vendor
{
    fields
    {
        modify("Name 2")
        {
            Caption = 'Trading / Commercial Name';
        }
        modify("Registration Number")
        {
            Caption = 'Company Registration / Trade License No.';
        }
        modify("Lead Time Calculation")
        {
            Caption = 'Standard Lead Time';
        }
        modify("VAT Registration No.")
        {
            Caption = 'VAT / Tax Registration No.';
        }
        modify("Home Page")
        {
            Caption = 'Company Website';
        }
        field(50100; "Company Type"; Option)
        {
            Caption = 'Company Type';
            OptionMembers = LLC,Corporation,Partnership,SoleEstablishment,FreeZoneCompany,PJSC,Others;
            OptionCaption = 'LLC,Corporation,Partnership,Sole Establishment,Free Zone Company,PJSC,Others';
            DataClassification = CustomerContent;
        }
        field(50101; "Business Activity"; Text[100])
        {
            Caption = 'Business Activity';
            DataClassification = CustomerContent;
        }

        field(50102; "Industry/Sector"; Text[100])
        {
            Caption = 'Industry/Sector';
            DataClassification = CustomerContent;
        }

        field(50103; "Country of Registration"; Text[100])
        {
            Caption = 'Country of Registration';
            DataClassification = CustomerContent;
        }

        field(50104; "Date of Incorporation"; Date)
        {
            Caption = 'Date of Incorporation';
            DataClassification = CustomerContent;
        }

        field(50105; "Trade License Expiry Date"; Date)
        {
            Caption = 'Trade License Expiry Date';
            DataClassification = CustomerContent;
        }

        field(50106; "ICV Certificate No."; Text[50])
        {
            Caption = 'In Country Value (ICV) Certificate No.';
            DataClassification = CustomerContent;
        }

        field(50107; "ICV Certificate Expiry Date"; Date)
        {
            Caption = 'ICV Certificate Expiry Date';
            DataClassification = CustomerContent;
        }

        field(50108; "VAT Registered"; Option)
        {
            Caption = 'VAT Registered';
            OptionMembers = Yes,No,NotApplicable;
            OptionCaption = 'Yes,No,Not Applicable';
            DataClassification = CustomerContent;
        }

        field(50109; "Number of Employees"; Integer)
        {
            Caption = 'Number of Employees';
            MinValue = 0;
            DataClassification = CustomerContent;
        }

        field(50110; "Number of Branches"; Integer)
        {
            Caption = 'Number of Branches/Locations';
            MinValue = 0;
            DataClassification = CustomerContent;
        }

        field(50111; "Company Relationship"; Option)
        {
            Caption = 'Parent/Subsidiary/Affiliate Company';
            OptionMembers = Parent,Subsidiary,Affiliate;
            OptionCaption = 'Parent,Subsidiary,Affiliate';
            DataClassification = CustomerContent;
        }

        field(50112; "Years in Business"; Integer)
        {
            Caption = 'Years in Business';
            MinValue = 0;
            DataClassification = CustomerContent;
        }
        field(50114; "Tax Identification No."; Text[50])
        {
            Caption = 'Tax Identification Number (TIN)';
            DataClassification = CustomerContent;
        }
        field(50115; "Peppol ID"; Text[100])
        {
            Caption = 'Peppol ID / Electronic Address';
            DataClassification = CustomerContent;
        }
        field(50116; "Has Peppol ID"; Option)
        {
            Caption = 'Do you have a Peppol ID?';
            OptionMembers = " ",Yes,No,NotApplicable;
            OptionCaption = ' ,Yes,No,Not Applicable';
            DataClassification = CustomerContent;
        }
        modify(Address)
        {
            Caption = 'Registered Office Address';
        }
        modify("Address 2")
        {
            Caption = 'Building / Office No.';
        }
        modify("Post Code")
        {
            Caption = 'PO. Box / Postal Code';
        }
        field(50118; "Street/Area"; Text[100])
        {
            Caption = 'Street / Area';
            DataClassification = CustomerContent;
        }
        modify(Contact)
        {
            Caption = 'Primary Contact Person';
        }
        field(50119; "Contact Designation"; Text[50])
        {
            Caption = 'Contact Designation';
            DataClassification = CustomerContent;
        }
        field(50120; "Contact Email"; Text[80])
        {
            Caption = 'Contact Email';
            ExtendedDatatype = EMail;
            DataClassification = CustomerContent;
        }
        field(50121; "Contact Number"; Text[30])
        {
            Caption = 'Contact Number';
            ExtendedDatatype = PhoneNo;
            DataClassification = CustomerContent;
        }
        field(50122; "Signatory Name"; Text[100])
        {
            Caption = 'Authorized Signatory Name';
            DataClassification = CustomerContent;
        }
        field(50123; "Signatory Designation"; Text[50])
        {
            Caption = 'Authorized Signatory Designation';
            DataClassification = CustomerContent;
        }
        field(50124; "Signatory Email"; Text[80])
        {
            Caption = 'Authorized Signatory Email';
            ExtendedDatatype = EMail;
            DataClassification = CustomerContent;
        }
        field(50125; "Signatory Contact No."; Text[30])
        {
            Caption = 'Authorized Signatory Contact Number';
            ExtendedDatatype = PhoneNo;
            DataClassification = CustomerContent;
        }
        field(50126; "Vendor Type"; Option)
        {
            Caption = 'Type of Vendor';
            OptionMembers = " ",Manufacturer,Distributor,Supplier,ServiceProvider,Contractor,Consultant,Other;
            OptionCaption = ' ,Manufacturer,Distributor,Supplier,Service Provider,Contractor,Consultant,Other';
            DataClassification = CustomerContent;
        }
        field(50127; "Products/Services Offered"; Text[250])
        {
            Caption = 'Products / Services Offered';
            DataClassification = CustomerContent;
        }
        field(50128; "Main Product Categories"; Text[250])
        {
            Caption = 'Main Products / Service Categories';
            DataClassification = CustomerContent;
        }
        field(50129; "Brands Represented"; Text[250])
        {
            Caption = 'Brands / Principals Represented';
            DataClassification = CustomerContent;
        }
        field(50130; "Authorized Distributor"; Option)
        {
            Caption = 'Manufacturer / Authorized Distributor';
            OptionMembers = " ",Yes,No;
            OptionCaption = ' ,Yes,No';
            DataClassification = CustomerContent;
        }
        field(50131; "Geographical Coverage"; Text[100])
        {
            Caption = 'Geographical Coverage';
            DataClassification = CustomerContent;
            ToolTip = 'Enter any of: UAE, GCC, MENA, Europe, Asia, Worldwide (comma separated).';
        }
        field(50132; "Key Industries Served"; Text[100])
        {
            Caption = 'Key Industries Served';
            DataClassification = CustomerContent;
            ToolTip = 'Enter any of: Oil & Gas, Data Centers, Power & Energy, Industrial, Construction, Other (comma separated).';
        }
        field(50133; "Major Clients/Projects"; Text[250])
        {
            Caption = 'Major Clients / Projects';
            DataClassification = CustomerContent;
        }
        field(50134; "Years of Experience"; Integer)
        {
            Caption = 'Years of Experience in Relevant Industry';
            MinValue = 0;
            DataClassification = CustomerContent;
        }
        field(50135; "Annual Supply Capacity"; Text[100])
        {
            Caption = 'Estimated Annual Supply Capacity';
            DataClassification = CustomerContent;
        }
        field(50136; "Country of Origin"; Text[100])
        {
            Caption = 'Country of Origin of Products';
            DataClassification = CustomerContent;
        }
        field(50137; "Delivery Capability"; Option)
        {
            Caption = 'Delivery Capability';
            OptionMembers = " ",Local,International,Both;
            OptionCaption = ' ,Local,International,Both';
            DataClassification = CustomerContent;
        }
        field(50138; "After-Sales Support"; Option)
        {
            Caption = 'After-Sales / Technical Support Available';
            OptionMembers = " ",Yes,No;
            OptionCaption = ' ,Yes,No';
            DataClassification = CustomerContent;
        }
        field(50139; "Warranty Offered"; Text[100])
        {
            Caption = 'Warranty Offered';
            DataClassification = CustomerContent;
        }
        field(50140; "Standard Lead Time"; Text[50])
        {
            Caption = 'Standard Lead Time';
            DataClassification = CustomerContent;
            ObsoleteState = Pending;
            ObsoleteReason = 'Replaced by standard Lead Time Calculation field.';
            ObsoleteTag = '1.0';
        }
        field(50141; "Annual Turnover"; Decimal)
        {
            Caption = 'Annual Turnover';
            AutoFormatType = 1;
            DataClassification = CustomerContent;
        }
        field(50142; "Financial Year Ending"; Text[50])
        {
            Caption = 'Financial Year Ending';
            DataClassification = CustomerContent;
        }
        field(50143; "Credit Rating Available"; Option)
        {
            Caption = 'Credit Rating Available';
            OptionMembers = " ",Yes,No;
            OptionCaption = ' ,Yes,No';
            DataClassification = CustomerContent;
        }
        field(50144; "Credit Rating Details"; Text[100])
        {
            Caption = 'Credit Rating Agency / Details';
            DataClassification = CustomerContent;
        }
        field(50145; "Bank Reference Available"; Option)
        {
            Caption = 'Bank Reference Available';
            OptionMembers = " ",Yes,No;
            OptionCaption = ' ,Yes,No';
            DataClassification = CustomerContent;
        }
        field(50146; "Quotation Validity"; Text[50])
        {
            Caption = 'Quotation Validity';
            DataClassification = CustomerContent;
        }
        field(50147; "Minimum Order Quantity"; Text[50])
        {
            Caption = 'Minimum Order Quantity';
            DataClassification = CustomerContent;
        }
        field(50148; "Delivery Terms"; Option)
        {
            Caption = 'Standard Delivery Terms (Incoterms)';
            OptionMembers = " ",EXW,FCA,FOB,CIF,DAP,DDP,Other;
            OptionCaption = ' ,EXW,FCA,FOB,CIF,DAP,DDP,Other';
            DataClassification = CustomerContent;
        }
        field(50149; "Return Policy"; Text[100])
        {
            Caption = 'Return / Replacement Policy';
            DataClassification = CustomerContent;
        }
        field(50150; "After-Sales Service Terms"; Text[100])
        {
            Caption = 'After-Sales Service Terms';
            DataClassification = CustomerContent;
        }
        field(50151; "Late Delivery Penalty"; Text[100])
        {
            Caption = 'Late Delivery / Penalty Conditions';
            DataClassification = CustomerContent;
        }
        field(50152; "Additional Commercial Terms"; Text[250])
        {
            Caption = 'Additional Commercial Terms or Conditions';
            DataClassification = CustomerContent;
        }
        field(50153; "Certification Details"; Text[250])
        {
            Caption = 'Other Certifications / Accreditations';
            DataClassification = CustomerContent;
        }
        field(50154; "Compliance Concern Details"; Text[250])
        {
            Caption = 'Conflict of Interest / Compliance Details';
            DataClassification = CustomerContent;
        }
        field(50155; "Date Received"; Date)
        {
            Caption = 'Date Received';
            DataClassification = CustomerContent;
        }
        field(50156; "Vendor Category"; Option)
        {
            Caption = 'Vendor Category';
            OptionMembers = " ",Supplier,Manufacturer,Distributor,Contractor,ServiceProvider,Consultant;
            OptionCaption = ' ,Supplier,Manufacturer,Distributor,Contractor,Service Provider,Consultant';
            DataClassification = CustomerContent;
        }
        field(50157; "Procurement Review"; Option)
        {
            Caption = 'Procurement Review';
            OptionMembers = " ",Approved,Rejected,Pending;
            OptionCaption = ' ,Approved,Rejected,Pending';
            DataClassification = CustomerContent;
        }
        field(50158; "Trade License Verification"; Option)
        {
            Caption = 'Trade License Verification';
            OptionMembers = " ",Verified,Pending;
            OptionCaption = ' ,Verified,Pending';
            DataClassification = CustomerContent;
        }
        field(50159; "Tax Verification"; Option)
        {
            Caption = 'VAT / Tax Verification';
            OptionMembers = " ",Verified,Pending,"N/A";
            OptionCaption = ' ,Verified,Pending,N/A';
            DataClassification = CustomerContent;
        }
        field(50160; "Banking Verification"; Option)
        {
            Caption = 'Banking Details Verification';
            OptionMembers = " ",Verified,Pending;
            OptionCaption = ' ,Verified,Pending';
            DataClassification = CustomerContent;
        }
        field(50161; "Compliance Review"; Option)
        {
            Caption = 'Compliance Review';
            OptionMembers = " ",Approved,Rejected,Pending;
            OptionCaption = ' ,Approved,Rejected,Pending';
            DataClassification = CustomerContent;
        }
        field(50162; "QHSE Review"; Option)
        {
            Caption = 'QHSE Review';
            OptionMembers = " ",Approved,Rejected,"N/A";
            OptionCaption = ' ,Approved,Rejected,N/A';
            DataClassification = CustomerContent;
        }
        field(50163; "Financial Review"; Option)
        {
            Caption = 'Financial / Credit Review';
            OptionMembers = " ",Approved,Rejected,Pending;
            OptionCaption = ' ,Approved,Rejected,Pending';
            DataClassification = CustomerContent;
        }
        field(50164; "Risk Classification"; Option)
        {
            Caption = 'Vendor Risk Classification';
            OptionMembers = " ",Low,Medium,High;
            OptionCaption = ' ,Low,Medium,High';
            DataClassification = CustomerContent;
        }
        field(50165; "Registration Status"; Option)
        {
            Caption = 'Vendor Status';
            OptionMembers = " ",Approved,ConditionallyApproved,Rejected,Inactive;
            OptionCaption = ' ,Approved,Conditionally Approved,Rejected,Inactive';
            DataClassification = CustomerContent;
        }
        field(50166; "Internal Remarks"; Text[250])
        {
            Caption = 'Internal Remarks / Comments';
            DataClassification = CustomerContent;
        }
        field(50167; "Approval Decision"; Option)
        {
            Caption = 'Approval Decision';
            OptionMembers = " ",Approved,Rejected,Pending;
            OptionCaption = ' ,Approved,Rejected,Pending';
            DataClassification = CustomerContent;
        }
        field(50168; "Approved By"; Text[100])
        {
            Caption = 'Approved By';
            DataClassification = CustomerContent;
        }
        field(50169; "Approval Date"; Date)
        {
            Caption = 'Approval Date';
            DataClassification = CustomerContent;
        }

        // Section 3 - owners (up to three) and signatory
        field(50170; "Owner 1 Name"; Text[100]) { Caption = 'Owner 1 - Full Name'; DataClassification = CustomerContent; }
        field(50171; "Owner 1 Designation"; Text[50]) { Caption = 'Owner 1 - Designation'; DataClassification = CustomerContent; }
        field(50172; "Owner 1 Nationality"; Text[50]) { Caption = 'Owner 1 - Nationality'; DataClassification = CustomerContent; }
        field(50173; "Owner 1 Contact No."; Text[30]) { Caption = 'Owner 1 - Contact Number'; DataClassification = CustomerContent; }
        field(50174; "Owner 1 Email"; Text[80]) { Caption = 'Owner 1 - Email Address'; DataClassification = CustomerContent; }
        field(50175; "Owner 1 Signing Authority"; Option) { Caption = 'Owner 1 - Signing Authority'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50176; "Owner 2 Name"; Text[100]) { Caption = 'Owner 2 - Full Name'; DataClassification = CustomerContent; }
        field(50177; "Owner 2 Designation"; Text[50]) { Caption = 'Owner 2 - Designation'; DataClassification = CustomerContent; }
        field(50178; "Owner 2 Nationality"; Text[50]) { Caption = 'Owner 2 - Nationality'; DataClassification = CustomerContent; }
        field(50179; "Owner 2 Contact No."; Text[30]) { Caption = 'Owner 2 - Contact Number'; DataClassification = CustomerContent; }
        field(50180; "Owner 2 Email"; Text[80]) { Caption = 'Owner 2 - Email Address'; DataClassification = CustomerContent; }
        field(50181; "Owner 2 Signing Authority"; Option) { Caption = 'Owner 2 - Signing Authority'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50182; "Owner 3 Name"; Text[100]) { Caption = 'Owner 3 - Full Name'; DataClassification = CustomerContent; }
        field(50183; "Owner 3 Designation"; Text[50]) { Caption = 'Owner 3 - Designation'; DataClassification = CustomerContent; }
        field(50184; "Owner 3 Nationality"; Text[50]) { Caption = 'Owner 3 - Nationality'; DataClassification = CustomerContent; }
        field(50185; "Owner 3 Contact No."; Text[30]) { Caption = 'Owner 3 - Contact Number'; DataClassification = CustomerContent; }
        field(50186; "Owner 3 Email"; Text[80]) { Caption = 'Owner 3 - Email Address'; DataClassification = CustomerContent; }
        field(50187; "Owner 3 Signing Authority"; Option) { Caption = 'Owner 3 - Signing Authority'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }

        // Section 9 - references (up to three)
        field(50188; "Ref 1 Company"; Text[100]) { Caption = 'Reference 1 - Company Name'; DataClassification = CustomerContent; }
        field(50189; "Ref 1 Contact Person"; Text[100]) { Caption = 'Reference 1 - Contact Person'; DataClassification = CustomerContent; }
        field(50190; "Ref 1 Designation"; Text[50]) { Caption = 'Reference 1 - Designation'; DataClassification = CustomerContent; }
        field(50191; "Ref 1 Email"; Text[80]) { Caption = 'Reference 1 - Email Address'; DataClassification = CustomerContent; }
        field(50192; "Ref 1 Contact No."; Text[30]) { Caption = 'Reference 1 - Contact Number'; DataClassification = CustomerContent; }
        field(50193; "Ref 1 Relationship"; Text[100]) { Caption = 'Reference 1 - Business Relationship'; DataClassification = CustomerContent; }
        field(50194; "Ref 2 Company"; Text[100]) { Caption = 'Reference 2 - Company Name'; DataClassification = CustomerContent; }
        field(50195; "Ref 2 Contact Person"; Text[100]) { Caption = 'Reference 2 - Contact Person'; DataClassification = CustomerContent; }
        field(50196; "Ref 2 Designation"; Text[50]) { Caption = 'Reference 2 - Designation'; DataClassification = CustomerContent; }
        field(50197; "Ref 2 Email"; Text[80]) { Caption = 'Reference 2 - Email Address'; DataClassification = CustomerContent; }
        field(50198; "Ref 2 Contact No."; Text[30]) { Caption = 'Reference 2 - Contact Number'; DataClassification = CustomerContent; }
        field(50199; "Ref 2 Relationship"; Text[100]) { Caption = 'Reference 2 - Business Relationship'; DataClassification = CustomerContent; }
        field(50200; "Ref 3 Company"; Text[100]) { Caption = 'Reference 3 - Company Name'; DataClassification = CustomerContent; }
        field(50201; "Ref 3 Contact Person"; Text[100]) { Caption = 'Reference 3 - Contact Person'; DataClassification = CustomerContent; }
        field(50202; "Ref 3 Designation"; Text[50]) { Caption = 'Reference 3 - Designation'; DataClassification = CustomerContent; }
        field(50203; "Ref 3 Email"; Text[80]) { Caption = 'Reference 3 - Email Address'; DataClassification = CustomerContent; }
        field(50204; "Ref 3 Contact No."; Text[30]) { Caption = 'Reference 3 - Contact Number'; DataClassification = CustomerContent; }
        field(50205; "Ref 3 Relationship"; Text[100]) { Caption = 'Reference 3 - Business Relationship'; DataClassification = CustomerContent; }

        // Section 7 - QHSE certifications (Yes/No + expiry/details)
        field(50206; "Cert ISO 9001"; Option) { Caption = 'ISO 9001 - Quality Management'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50207; "Cert ISO 9001 Details"; Text[100]) { Caption = 'ISO 9001 - Expiry Date / Details'; DataClassification = CustomerContent; }
        field(50208; "Cert ISO 14001"; Option) { Caption = 'ISO 14001 - Environmental Management'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50209; "Cert ISO 14001 Details"; Text[100]) { Caption = 'ISO 14001 - Expiry Date / Details'; DataClassification = CustomerContent; }
        field(50210; "Cert ISO 45001"; Option) { Caption = 'ISO 45001 - Occupational Health & Safety'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50211; "Cert ISO 45001 Details"; Text[100]) { Caption = 'ISO 45001 - Expiry Date / Details'; DataClassification = CustomerContent; }
        field(50212; "Cert ISO 27001"; Option) { Caption = 'ISO 27001 - Information Security'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50213; "Cert ISO 27001 Details"; Text[100]) { Caption = 'ISO 27001 - Expiry Date / Details'; DataClassification = CustomerContent; }
        field(50214; "Cert Other ISO"; Option) { Caption = 'Other ISO / Industry Certifications'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50215; "Cert Other ISO Details"; Text[100]) { Caption = 'Other ISO / Industry Certifications - Details'; DataClassification = CustomerContent; }
        field(50216; "Cert HS Policy"; Option) { Caption = 'Health & Safety Policy Available'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50217; "Cert HS Policy Details"; Text[100]) { Caption = 'Health & Safety Policy - Details'; DataClassification = CustomerContent; }
        field(50218; "Cert Env Policy"; Option) { Caption = 'Environmental Policy Available'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50219; "Cert Env Policy Details"; Text[100]) { Caption = 'Environmental Policy - Details'; DataClassification = CustomerContent; }
        field(50220; "Cert Quality Policy"; Option) { Caption = 'Quality Policy Available'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50221; "Cert Quality Policy Details"; Text[100]) { Caption = 'Quality Policy - Details'; DataClassification = CustomerContent; }
        field(50222; "Cert Risk Assessment"; Option) { Caption = 'Risk Assessment Procedures Available'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50223; "Cert Risk Assessment Details"; Text[100]) { Caption = 'Risk Assessment Procedures - Details'; DataClassification = CustomerContent; }
        field(50224; "Cert HSE Reporting"; Option) { Caption = 'HSE Incident Reporting System'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50225; "Cert HSE Reporting Details"; Text[100]) { Caption = 'HSE Incident Reporting System - Details'; DataClassification = CustomerContent; }
        field(50226; "Cert Product Testing"; Option) { Caption = 'Product Testing / Inspection Certificates'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50227; "Cert Product Testing Details"; Text[100]) { Caption = 'Product Testing / Inspection Certificates - Details'; DataClassification = CustomerContent; }
        field(50228; "Cert Product Warranty"; Option) { Caption = 'Product Warranty / Conformity Certificates'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50229; "Cert Product Warranty Details"; Text[100]) { Caption = 'Product Warranty / Conformity Certificates - Details'; DataClassification = CustomerContent; }

        // Section 8 - compliance declarations
        field(50230; "Decl Trade Licence"; Option) { Caption = 'Holds a valid trade licence / business registration'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50231; "Decl Local Laws"; Option) { Caption = 'Complies with applicable local laws and regulations'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50232; "Decl Anti-Bribery"; Option) { Caption = 'Complies with anti-bribery and anti-corruption laws'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50233; "Decl Ethical Practices"; Option) { Caption = 'Maintains ethical business practices'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50234; "Decl Labour Rights"; Option) { Caption = 'Complies with labour and human rights requirements'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50235; "Decl Sanctions"; Option) { Caption = 'Complies with sanctions and export control regulations'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50236; "Decl No Restrictions"; Option) { Caption = 'Not subject to business restrictions or sanctions'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50237; "Decl No Conflict"; Option) { Caption = 'No known conflict of interest with Exxel Objects'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50238; "Decl Confidentiality"; Option) { Caption = 'Maintains confidentiality and data protection practices'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }
        field(50239; "Decl Notify Changes"; Option) { Caption = 'Agrees to notify Exxel Objects of material changes'; OptionMembers = " ",Yes,No; OptionCaption = ' ,Yes,No'; DataClassification = CustomerContent; }

        // Section 10 - supporting documents attached
        field(50240; "Doc Trade License"; Boolean) { Caption = 'Valid Trade License / Certificate of Incorporation'; DataClassification = CustomerContent; }
        field(50241; "Doc VAT Certificate"; Boolean) { Caption = 'VAT / Tax Registration Certificate'; DataClassification = CustomerContent; }
        field(50242; "Doc ICV Certificate"; Boolean) { Caption = 'In Country Value (ICV) Certificate'; DataClassification = CustomerContent; }
        field(50243; "Doc Company Profile"; Boolean) { Caption = 'Company Profile'; DataClassification = CustomerContent; }
        field(50244; "Doc Signatory ID"; Boolean) { Caption = 'Passport / Emirates ID of Authorized Signatory'; DataClassification = CustomerContent; }
        field(50245; "Doc Signatory Letter"; Boolean) { Caption = 'Authorized Signatory Letter / Board Resolution'; DataClassification = CustomerContent; }
        field(50246; "Doc Bank Letter"; Boolean) { Caption = 'Bank Account Confirmation Letter / Cancelled Cheque'; DataClassification = CustomerContent; }
        field(50247; "Doc ISO Certificates"; Boolean) { Caption = 'ISO Certificates / Relevant Accreditations'; DataClassification = CustomerContent; }
        field(50248; "Doc QHSE Policies"; Boolean) { Caption = 'Quality, HSE and Environmental Policies'; DataClassification = CustomerContent; }
        field(50249; "Doc Catalogue"; Boolean) { Caption = 'Product Catalogue / Service Brochure'; DataClassification = CustomerContent; }
        field(50250; "Doc Authorization"; Boolean) { Caption = 'Manufacturer / Distributor Authorization'; DataClassification = CustomerContent; }
        field(50251; "Doc Insurance"; Boolean) { Caption = 'Insurance Certificates'; DataClassification = CustomerContent; }
        field(50252; "Doc Client References"; Boolean) { Caption = 'Client References / Relevant Project List'; DataClassification = CustomerContent; }
        field(50253; "Doc Other Certifications"; Boolean) { Caption = 'Other Relevant Certifications / Approvals'; DataClassification = CustomerContent; }

        // Section 5B - banking
        field(50254; "Beneficiary Name"; Text[100]) { Caption = 'Beneficiary / Account Name'; DataClassification = CustomerContent; }
    }
}
