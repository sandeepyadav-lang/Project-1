report 50106 "Exxel Vendor Registration"
{
    ApplicationArea = All;
    Caption = 'Vendor Information & Registration Form';
    DefaultLayout = RDLC;
    RDLCLayout = 'src/Layouts/VendorRegistration.rdl';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(Vendor; Vendor)
        {
            RequestFilterFields = "No.";

            column(CompanyPicture; CompanyInformation.Picture) { }
            column(CompanyName; CompanyInformation.Name) { }
            column(CompanyAddress; CompanyInformation.Address) { }
            column(CompanyAddress2; CompanyInformation."Address 2") { }
            column(CompanyCity; CompanyInformation.City) { }
            column(CompanyPostCode; CompanyInformation."Post Code") { }
            column(CompanyCountry; CompanyInformation."Country/Region Code") { }
            column(CompanyVATNo; CompanyInformation."VAT Registration No.") { }
            column(CompanyPhone; CompanyInformation."Phone No.") { }
            column(CompanyEmail; CompanyInformation."E-Mail") { }
            column(CompanyHomePage; CompanyInformation."Home Page") { }
            column(VendorNo; "No.") { }
            column(VendorName; Name) { }
            column(VendorName2; "Name 2") { }
            column(RegistrationNumber; "Registration Number") { }
            column(VATRegistrationNo; "VAT Registration No.") { }
            column(Address; Address) { }
            column(Address2; "Address 2") { }
            column(City; City) { }
            column(County; County) { }
            column(PostCode; "Post Code") { }
            column(CountryRegionCode; "Country/Region Code") { }
            column(Contact; Contact) { }
            column(PhoneNo; "Phone No.") { }
            column(MobilePhoneNo; "Mobile Phone No.") { }
            column(FaxNo; "Fax No.") { }
            column(Email; "E-Mail") { }
            column(HomePage; "Home Page") { }
            column(TaxAreaCode; "Tax Area Code") { }
            column(PaymentTermsCode; "Payment Terms Code") { }
            column(PaymentMethodCode; "Payment Method Code") { }
            column(CurrencyCode; "Currency Code") { }
            column(PreferredBankAccountCode; "Preferred Bank Account Code") { }
            column(BankName; VendorBankAccount.Name) { }
            column(BankAddress; VendorBankAccount.Address) { }
            column(BankAccountNo; VendorBankAccount."Bank Account No.") { }
            column(BankBranchNo; VendorBankAccount."Bank Branch No.") { }
            column(BankIBAN; VendorBankAccount.IBAN) { }
            column(BankSWIFTCode; VendorBankAccount."SWIFT Code") { }
            column(BankCurrencyCode; VendorBankAccount."Currency Code") { }
            column(BankCountry; VendorBankAccount."Country/Region Code") { }
            column(CompanyTypeText; Format("Company Type")) { }
            column(VBusinessActivity; "Business Activity") { }
            column(VIndustrySector; "Industry/Sector") { }
            column(VCountryofRegistration; "Country of Registration") { }
            column(VDateofIncorporation; Format("Date of Incorporation")) { }
            column(VTradeLicenseExpiryDate; Format("Trade License Expiry Date")) { }
            column(VICVCertificateNo; "ICV Certificate No.") { }
            column(VICVCertificateExpiryDate; Format("ICV Certificate Expiry Date")) { }
            column(VVATRegistered; Format("VAT Registered")) { }
            column(VNumberofEmployees; Format("Number of Employees")) { }
            column(VNumberofBranches; Format("Number of Branches")) { }
            column(VCompanyRelationship; Format("Company Relationship")) { }
            column(VYearsinBusiness; Format("Years in Business")) { }
            column(VTradingName; "Name 2") { }
            column(VTaxIdentificationNo; "Tax Identification No.") { }
            column(VPeppolID; "Peppol ID") { }
            column(VHasPeppolID; Format("Has Peppol ID")) { }
            column(VBuildingOfficeNo; "Address 2") { }
            column(VStreetArea; "Street/Area") { }
            column(VContactDesignation; "Contact Designation") { }
            column(VContactEmail; "Contact Email") { }
            column(VContactNumber; "Contact Number") { }
            column(VSignatoryName; "Signatory Name") { }
            column(VSignatoryDesignation; "Signatory Designation") { }
            column(VSignatoryEmail; "Signatory Email") { }
            column(VSignatoryContactNo; "Signatory Contact No.") { }
            column(VVendorType; Format("Vendor Type")) { }
            column(VProductsServicesOffered; "Products/Services Offered") { }
            column(VMainProductCategories; "Main Product Categories") { }
            column(VBrandsRepresented; "Brands Represented") { }
            column(VAuthorizedDistributor; Format("Authorized Distributor")) { }
            column(VGeographicalCoverage; "Geographical Coverage") { }
            column(VKeyIndustriesServed; "Key Industries Served") { }
            column(VMajorClientsProjects; "Major Clients/Projects") { }
            column(VYearsofExperience; Format("Years of Experience")) { }
            column(VAnnualSupplyCapacity; "Annual Supply Capacity") { }
            column(VCountryofOrigin; "Country of Origin") { }
            column(VDeliveryCapability; Format("Delivery Capability")) { }
            column(VAfterSalesSupport; Format("After-Sales Support")) { }
            column(VWarrantyOffered; "Warranty Offered") { }
            column(VStandardLeadTime; Format("Lead Time Calculation")) { }
            column(VAnnualTurnover; Format("Annual Turnover")) { }
            column(VFinancialYearEnding; "Financial Year Ending") { }
            column(VCreditRatingAvailable; Format("Credit Rating Available")) { }
            column(VCreditRatingDetails; "Credit Rating Details") { }
            column(VBankReferenceAvailable; Format("Bank Reference Available")) { }
            column(VQuotationValidity; "Quotation Validity") { }
            column(VMinimumOrderQuantity; "Minimum Order Quantity") { }
            column(VDeliveryTerms; Format("Delivery Terms")) { }
            column(VReturnPolicy; "Return Policy") { }
            column(VAfterSalesServiceTerms; "After-Sales Service Terms") { }
            column(VLateDeliveryPenalty; "Late Delivery Penalty") { }
            column(VAdditionalCommercialTerms; "Additional Commercial Terms") { }
            column(VCertificationDetails; "Certification Details") { }
            column(VComplianceConcernDetails; "Compliance Concern Details") { }
            column(VDateReceived; Format("Date Received")) { }
            column(VVendorCategory; Format("Vendor Category")) { }
            column(VProcurementReview; Format("Procurement Review")) { }
            column(VTradeLicenseVerification; Format("Trade License Verification")) { }
            column(VTaxVerification; Format("Tax Verification")) { }
            column(VBankingVerification; Format("Banking Verification")) { }
            column(VComplianceReview; Format("Compliance Review")) { }
            column(VQHSEReview; Format("QHSE Review")) { }
            column(VFinancialReview; Format("Financial Review")) { }
            column(VRiskClassification; Format("Risk Classification")) { }
            column(VRegistrationStatus; Format("Registration Status")) { }
            column(VInternalRemarks; "Internal Remarks") { }
            column(VApprovalDecision; Format("Approval Decision")) { }
            column(VApprovedBy; "Approved By") { }
            column(VApprovalDate; Format("Approval Date")) { }
            column(VOwner1Name; "Owner 1 Name") { }
            column(VOwner1Designation; "Owner 1 Designation") { }
            column(VOwner1Nationality; "Owner 1 Nationality") { }
            column(VOwner1ContactNo; "Owner 1 Contact No.") { }
            column(VOwner1Email; "Owner 1 Email") { }
            column(VOwner1SigningAuthority; Format("Owner 1 Signing Authority")) { }
            column(VOwner2Name; "Owner 2 Name") { }
            column(VOwner2Designation; "Owner 2 Designation") { }
            column(VOwner2Nationality; "Owner 2 Nationality") { }
            column(VOwner2ContactNo; "Owner 2 Contact No.") { }
            column(VOwner2Email; "Owner 2 Email") { }
            column(VOwner2SigningAuthority; Format("Owner 2 Signing Authority")) { }
            column(VOwner3Name; "Owner 3 Name") { }
            column(VOwner3Designation; "Owner 3 Designation") { }
            column(VOwner3Nationality; "Owner 3 Nationality") { }
            column(VOwner3ContactNo; "Owner 3 Contact No.") { }
            column(VOwner3Email; "Owner 3 Email") { }
            column(VOwner3SigningAuthority; Format("Owner 3 Signing Authority")) { }
            column(VRef1Company; "Ref 1 Company") { }
            column(VRef1ContactPerson; "Ref 1 Contact Person") { }
            column(VRef1Designation; "Ref 1 Designation") { }
            column(VRef1Email; "Ref 1 Email") { }
            column(VRef1ContactNo; "Ref 1 Contact No.") { }
            column(VRef1Relationship; "Ref 1 Relationship") { }
            column(VRef2Company; "Ref 2 Company") { }
            column(VRef2ContactPerson; "Ref 2 Contact Person") { }
            column(VRef2Designation; "Ref 2 Designation") { }
            column(VRef2Email; "Ref 2 Email") { }
            column(VRef2ContactNo; "Ref 2 Contact No.") { }
            column(VRef2Relationship; "Ref 2 Relationship") { }
            column(VRef3Company; "Ref 3 Company") { }
            column(VRef3ContactPerson; "Ref 3 Contact Person") { }
            column(VRef3Designation; "Ref 3 Designation") { }
            column(VRef3Email; "Ref 3 Email") { }
            column(VRef3ContactNo; "Ref 3 Contact No.") { }
            column(VRef3Relationship; "Ref 3 Relationship") { }
            column(VCertISO9001; Format("Cert ISO 9001")) { }
            column(VCertISO9001Details; "Cert ISO 9001 Details") { }
            column(VCertISO14001; Format("Cert ISO 14001")) { }
            column(VCertISO14001Details; "Cert ISO 14001 Details") { }
            column(VCertISO45001; Format("Cert ISO 45001")) { }
            column(VCertISO45001Details; "Cert ISO 45001 Details") { }
            column(VCertISO27001; Format("Cert ISO 27001")) { }
            column(VCertISO27001Details; "Cert ISO 27001 Details") { }
            column(VCertOtherISO; Format("Cert Other ISO")) { }
            column(VCertOtherISODetails; "Cert Other ISO Details") { }
            column(VCertHSPolicy; Format("Cert HS Policy")) { }
            column(VCertHSPolicyDetails; "Cert HS Policy Details") { }
            column(VCertEnvPolicy; Format("Cert Env Policy")) { }
            column(VCertEnvPolicyDetails; "Cert Env Policy Details") { }
            column(VCertQualityPolicy; Format("Cert Quality Policy")) { }
            column(VCertQualityPolicyDetails; "Cert Quality Policy Details") { }
            column(VCertRiskAssessment; Format("Cert Risk Assessment")) { }
            column(VCertRiskAssessmentDetails; "Cert Risk Assessment Details") { }
            column(VCertHSEReporting; Format("Cert HSE Reporting")) { }
            column(VCertHSEReportingDetails; "Cert HSE Reporting Details") { }
            column(VCertProductTesting; Format("Cert Product Testing")) { }
            column(VCertProductTestingDetails; "Cert Product Testing Details") { }
            column(VCertProductWarranty; Format("Cert Product Warranty")) { }
            column(VCertProductWarrantyDetails; "Cert Product Warranty Details") { }
            column(VDeclTradeLicence; Format("Decl Trade Licence")) { }
            column(VDeclLocalLaws; Format("Decl Local Laws")) { }
            column(VDeclAntiBribery; Format("Decl Anti-Bribery")) { }
            column(VDeclEthicalPractices; Format("Decl Ethical Practices")) { }
            column(VDeclLabourRights; Format("Decl Labour Rights")) { }
            column(VDeclSanctions; Format("Decl Sanctions")) { }
            column(VDeclNoRestrictions; Format("Decl No Restrictions")) { }
            column(VDeclNoConflict; Format("Decl No Conflict")) { }
            column(VDeclConfidentiality; Format("Decl Confidentiality")) { }
            column(VDeclNotifyChanges; Format("Decl Notify Changes")) { }
            column(VDocTradeLicense; Format("Doc Trade License")) { }
            column(VDocVATCertificate; Format("Doc VAT Certificate")) { }
            column(VDocICVCertificate; Format("Doc ICV Certificate")) { }
            column(VDocCompanyProfile; Format("Doc Company Profile")) { }
            column(VDocSignatoryID; Format("Doc Signatory ID")) { }
            column(VDocSignatoryLetter; Format("Doc Signatory Letter")) { }
            column(VDocBankLetter; Format("Doc Bank Letter")) { }
            column(VDocISOCertificates; Format("Doc ISO Certificates")) { }
            column(VDocQHSEPolicies; Format("Doc QHSE Policies")) { }
            column(VDocCatalogue; Format("Doc Catalogue")) { }
            column(VDocAuthorization; Format("Doc Authorization")) { }
            column(VDocInsurance; Format("Doc Insurance")) { }
            column(VDocClientReferences; Format("Doc Client References")) { }
            column(VDocOtherCertifications; Format("Doc Other Certifications")) { }
            column(VBeneficiaryName; "Beneficiary Name") { }

            trigger OnAfterGetRecord()
            begin
                Clear(VendorBankAccount);
                if "Preferred Bank Account Code" = '' then
                    exit;

                if not VendorBankAccount.Get("No.", "Preferred Bank Account Code") then
                    Error(PreferredBankAccountNotFoundErr, "No.", "Preferred Bank Account Code");
            end;
        }
    }

    trigger OnPreReport()
    begin
        if not CompanyInformation.Get() then
            Error(CompanyInformationNotFoundErr);
        CompanyInformation.CalcFields(Picture);
    end;

    var
        CompanyInformation: Record "Company Information";
        VendorBankAccount: Record "Vendor Bank Account";
        CompanyInformationNotFoundErr: Label 'Company Information is not set up.';
        PreferredBankAccountNotFoundErr: Label 'Preferred bank account %2 was not found for vendor %1.';
}
