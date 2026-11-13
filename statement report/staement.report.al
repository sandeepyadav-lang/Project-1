// report 50133 "Statement_DAT - Excel Copy"
// {
//     ApplicationArea = all;
//     UsageCategory = ReportsAndAnalysis;
//     DefaultLayout = RDLC;
//     RDLCLayout = './statement.rdl';
//     Caption = 'Statement - Excel (New)';

//     dataset
//     {
//         dataitem(Customer; Customer)
//         {
//             DataItemTableView = sorting("No.");
//             PrintOnlyIfDetail = true;
//             RequestFilterFields = "No.", "Search Name", "Print Statements", "Currency Filter";
//             column(No_Cust; "No.")
//             {
//             }
//             dataitem(Integer; Integer)
//             {
//                 DataItemTableView = sorting(Number)
//                                     where(Number = const(1));
//                 PrintOnlyIfDetail = true;
//                 column(CompanyInfo1Picture; CompanyInfo1.Picture)
//                 {
//                 }
//                 column(CompanyInfo2Picture; CompanyInfo2.Picture)
//                 {
//                 }
//                 column(CompanyInfo3Picture; CompanyInfo3.Picture)
//                 {
//                 }
//                 column(CustAddr1; CustAddr[1])
//                 {
//                 }
//                 column(CompanyAddr1; CompanyAddr[1])
//                 {
//                 }
//                 column(CustAddr2; CustAddr[2])
//                 {
//                 }
//                 column(CompanyAddr2; CompanyAddr[2])
//                 {
//                 }
//                 column(CustAddr3; CustAddr[3])
//                 {
//                 }
//                 column(CompanyAddr3; CompanyAddr[3])
//                 {
//                 }
//                 column(CustAddr4; CustAddr[4])
//                 {
//                 }
//                 column(CompanyAddr4; CompanyAddr[4])
//                 {
//                 }
//                 column(CustAddr5; CustAddr[5])
//                 {
//                 }
//                 column(PhoneNo_CompanyInfo; CompanyInfo."Phone No.")
//                 {
//                 }
//                 column(CustAddr6; CustAddr[6])
//                 {
//                 }
//                 column(CompanyInfoEmail; CompanyInfo."E-Mail")
//                 {
//                 }
// #pragma warning disable AL0432
//                 column(CompanyInfoHomePage; CompanyInfo."Home Page")
// #pragma warning restore AL0432
//                 {
//                 }
//                 column(VATRegNo_CompanyInfo; CompanyInfo."VAT Registration No.")
//                 {
//                 }
//                 column(GiroNo_CompanyInfo; CompanyInfo."Giro No.")
//                 {
//                 }
//                 column(BankName_CompanyInfo; CompanyInfo."Bank Name")
//                 {
//                 }
//                 column(BankAccNo_CompanyInfo; CompanyInfo."Bank Account No.")
//                 {
//                 }
//                 column(No1_Cust; Customer."No.")
//                 {
//                 }
//                 column(TodayFormatted; Format(Today))
//                 {
//                 }
//                 column(StartDate; Format(StartDate))
//                 {
//                 }
//                 column(EndDate; Format(EndDate))
//                 {
//                 }
//                 column(LastStatmntNo_Cust; Format(Customer."Last Statement No."))
//                 {
//                     // Dhaval Dangar
//                     // DecimalPlaces = 0 : 0;
//                     // Dhaval Dangar
//                 }
//                 column(CustAddr7; CustAddr[7])
//                 {
//                 }
//                 column(CustAddr8; CustAddr[8])
//                 {
//                 }
//                 column(CompanyAddr7; CompanyAddr[7])
//                 {
//                 }
//                 column(CompanyAddr8; CompanyAddr[8])
//                 {
//                 }
//                 column(StatementCaption; StatementCaptionLbl)
//                 {
//                 }
//                 column(PhoneNo_CompanyInfoCaption; PhoneNo_CompanyInfoCaptionLbl)
//                 {
//                 }
//                 column(VATRegNo_CompanyInfoCaption; VATRegNo_CompanyInfoCaptionLbl)
//                 {
//                 }
//                 column(GiroNo_CompanyInfoCaption; GiroNo_CompanyInfoCaptionLbl)
//                 {
//                 }
//                 column(BankName_CompanyInfoCaption; BankName_CompanyInfoCaptionLbl)
//                 {
//                 }
//                 column(BankAccNo_CompanyInfoCaption; BankAccNo_CompanyInfoCaptionLbl)
//                 {
//                 }
//                 column(No1_CustCaption; No1_CustCaptionLbl)
//                 {
//                 }
//                 column(StartDateCaption; StartDateCaptionLbl)
//                 {
//                 }
//                 column(EndDateCaption; EndDateCaptionLbl)
//                 {
//                 }
//                 column(LastStatmntNo_CustCaption; LastStatmntNo_CustCaptionLbl)
//                 {
//                 }
//                 column(PostDate_DtldCustLedgEntriesCaption; PostDate_DtldCustLedgEntriesCaptionLbl)
//                 {
//                 }
//                 column(DocNo_DtldCustLedgEntriesCaption; DtldCustLedgEntries.FieldCaption("Document No."))
//                 {
//                 }
//                 column(Desc_CustLedgEntry2Caption; CustLedgEntry2.FieldCaption(Description))
//                 {
//                 }
//                 column(DueDate_CustLedgEntry2Caption; DueDate_CustLedgEntry2CaptionLbl)
//                 {
//                 }
//                 column(RemainAmtCustLedgEntry2Caption; CustLedgEntry2.FieldCaption("Remaining Amount"))
//                 {
//                 }
//                 column(CustBalanceCaption; CustBalanceCaptionLbl)
//                 {
//                 }
//                 column(OriginalAmt_CustLedgEntry2Caption; CustLedgEntry2.FieldCaption("Original Amount"))
//                 {
//                 }
//                 column(CompanyInfoHomepageCaption; CompanyInfoHomepageCaptionLbl)
//                 {
//                 }
//                 column(CompanyInfoEmailCaption; CompanyInfoEmailCaptionLbl)
//                 {
//                 }
//                 column(DocDateCaption; DocDateCaptionLbl)
//                 {
//                 }
//                 column(Total_Caption2; Total_CaptionLbl)
//                 {
//                 }
//                 column(CurrReportPageNoCaption; CurrReportPageNoCaptionLbl)
//                 {
//                 }
//                 column(CurrencyConversion; CurrencyConversion)
//                 {
//                 }
//                 column(CurrencyConversionValue; GLSetup."Currency Conversion Value-USD")
//                 {
//                 }
//                 column(MulticurrencyApplication; MulticurrencyApplication)
//                 {
//                 }
//                 //SDY begin
//                 // First Bank
//                 column(Bank1Description; Bank1Description) { }
//                 column(Bank1AccountNo; Bank1AccountNo) { }
//                 column(Bank1IBAN; Bank1IBAN) { }
//                 column(Bank1Name; Bank1Name) { }
//                 column(Bank1SWIFT; Bank1SWIFT) { }
//                 column(Bank1Address; Bank1Address) { }

//                 // Second Bank
//                 column(Bank2Description; Bank2Description) { }
//                 column(Bank2AccountNo; Bank2AccountNo) { }
//                 column(Bank2IBAN; Bank2IBAN) { }
//                 column(Bank2Name; Bank2Name) { }
//                 column(Bank2SWIFT; Bank2SWIFT) { }
//                 column(Bank2Address; Bank2Address) { }
//                 //SDY End
//                 dataitem(CurrencyLoop; Integer)
//                 {
//                     DataItemTableView = sorting(Number)
//                                         where(Number = filter(1 ..));
//                     PrintOnlyIfDetail = true;
//                     dataitem(CustLedgEntryHdr; Integer)
//                     {
//                         DataItemTableView = sorting(Number)
//                                             where(Number = const(1));
//                         column(Currency2Code_CustLedgEntryHdr; StrSubstNo(Text001Lbl, CurrencyCode3))
//                         {
//                         }
//                         column(StartBalance; StartBalance)
//                         {
//                             AutoFormatExpression = TempCurrency2.Code;
//                             AutoFormatType = 1;
//                         }
//                         column(CurrencyCode3; CurrencyCode3)
//                         {
//                         }
//                         column(CustBalance_CustLedgEntryHdr; CustBalance)
//                         {
//                         }
//                         column(PrintLine; PrintLine)
//                         {
//                         }
//                         column(DtldCustLedgEntryType; Format(DtldCustLedgEntries."Entry Type", 0, 2))
//                         {
//                         }
//                         column(EntriesExists; EntriesExists)
//                         {
//                         }
//                         column(IsNewCustCurrencyGroup; IsNewCustCurrencyGroup)
//                         {
//                         }
//                         column(bool; bool)
//                         {
//                         }
//                         dataitem(DtldCustLedgEntries; "Detailed Cust. Ledg. Entry")
//                         {
//                             DataItemTableView = sorting("Customer No.", "Posting Date", "Entry Type", "Currency Code");
//                             column(PostDate_DtldCustLedgEntries; Format("Posting Date"))
//                             {
//                             }
//                             column(DocNo_DtldCustLedgEntries; "Document No.")
//                             {
//                             }
//                             column(Description; Description)
//                             {
//                             }
//                             column(DueDate_DtldCustLedgEntries; Format(DueDate))
//                             {
//                             }
//                             column(CurrCode_DtldCustLedgEntries; "Currency Code")
//                             {
//                             }
//                             column(Amt_DtldCustLedgEntries; Amount)
//                             {
//                                 AutoFormatExpression = "Currency Code";
//                                 AutoFormatType = 1;
//                             }
//                             column(RemainAmt_DtldCustLedgEntries; RemainingAmount)
//                             {
//                                 AutoFormatExpression = "Currency Code";
//                                 AutoFormatType = 1;
//                             }
//                             column(Balance_DtldCustLedgEntries; Amount - RemainingAmount)
//                             {
//                             }
//                             column(CustBalance; CustBalance)
//                             {
//                                 AutoFormatExpression = "Currency Code";
//                                 AutoFormatType = 1;
//                             }
//                             column(Currency2Code; TempCurrency2.Code)
//                             {
//                             }
//                             column(trx; cust1.TRX_Date)
//                             {
//                             }
//                             column(Agentref; cust1."Agent Reference")
//                             {
//                             }
//                             column(BookingID; cust1."Booking ID Filter")
//                             {
//                             }
//                             column(TDate; cust1.SRVDTFRM)
//                             {
//                             }

//                             trigger OnAfterGetRecord()
//                             var
//                                 CustLedgerEntry: Record "Cust. Ledger Entry";
//                             begin
//                                 if SkipReversedUnapplied(DtldCustLedgEntries) or (Amount = 0) then
//                                     CurrReport.Skip();
//                                 RemainingAmount := 0;
//                                 PrintLine := true;
//                                 case "Entry Type" of
//                                     "Entry Type"::"Initial Entry":
//                                         begin
//                                             CustLedgerEntry.Get("Cust. Ledger Entry No.");
//                                             Description := CopyStr(CustLedgerEntry.Description, 1, 50);
//                                             DueDate := CustLedgerEntry."Due Date";
//                                             CustLedgerEntry.SetRange("Date Filter", 0D, EndDate);
//                                             CustLedgerEntry.SetRange(Open, TRUE);
//                                             CustLedgerEntry.SetFilter("Remaining Amount", '>%1', 0); //NYZ
//                                             CustLedgerEntry.CalcFields("Remaining Amount");
//                                             RemainingAmount := CustLedgerEntry."Remaining Amount";
//                                             if RemainingAmount = 0 then
//                                                 CurrReport.Skip();
//                                         end;

//                                     "Entry Type"::Application:
//                                         begin
//                                             DtldCustLedgEntries2.SetCurrentKey("Customer No.", "Posting Date", "Entry Type");
//                                             DtldCustLedgEntries2.SetRange("Customer No.", "Customer No.");
//                                             DtldCustLedgEntries2.SetRange("Posting Date", "Posting Date");
//                                             DtldCustLedgEntries2.SetRange("Entry Type", "Entry Type"::Application);
//                                             DtldCustLedgEntries2.SetRange("Transaction No.", "Transaction No.");
//                                             //   DtldCustLedgEntries2.SETFILTER("Currency Code",'<>%1',"Currency Code") //3
//                                             DtldCustLedgEntries2.SetFilter("Currency Code", '<>%1', "Currency Code");

//                                             if not DtldCustLedgEntries2.IsEmpty then begin
//                                                 Description := Text005Lbl;
//                                                 DueDate := 0D;
//                                             end else
//                                                 PrintLine := false;
//                                         end;
//                                     "Entry Type"::"Payment Discount",
//                                     "Entry Type"::"Payment Discount (VAT Excl.)",
//                                     "Entry Type"::"Payment Discount (VAT Adjustment)",
//                                     "Entry Type"::"Payment Discount Tolerance",
//                                     "Entry Type"::"Payment Discount Tolerance (VAT Excl.)",
//                                     "Entry Type"::"Payment Discount Tolerance (VAT Adjustment)":
//                                         begin
//                                             Description := Text006Lbl;
//                                             DueDate := 0D;
//                                         end;
//                                     "Entry Type"::"Payment Tolerance",
//                                     "Entry Type"::"Payment Tolerance (VAT Excl.)",
//                                     "Entry Type"::"Payment Tolerance (VAT Adjustment)":
//                                         begin
//                                             Description := Text014Lbl;
//                                             DueDate := 0D;
//                                         end;
//                                     "Entry Type"::"Appln. Rounding",
//                                     "Entry Type"::"Correction of Remaining Amount":
//                                         begin
//                                             Description := Text007Lbl;
//                                             DueDate := 0D;
//                                         end;
//                                 end;

//                                 if PrintLine then begin
//                                     CustBalance := CustBalance + RemainingAmount;//Amount;
//                                     IsNewCustCurrencyGroup := IsFirstPrintLine;
//                                     IsFirstPrintLine := false;
//                                     ClearCompanyPicture();
//                                 end;

//                                 cust1.Copy(CustLedgerEntry);
//                                 //MESSAGE('%1 %2',cust1."Entry No.",cust1.TRX_Date);
//                             end;

//                             trigger OnPreDataItem()
//                             begin
//                                 SetRange("Customer No.", Customer."No.");
//                                 // SetRange("Posting Date", StartDate, EndDate);
//                                 if DateChoice = DateChoice::"Posting Date" then
//                                     SetRange("Posting Date", StartDate, EndDate);
//                                 SetRange("Currency Code", TempCurrency2.Code);

//                                 if TempCurrency2.Code = '' then begin
//                                     GLSetup.TestField("LCY Code");
//                                     CurrencyCode3 := GLSetup."LCY Code"
//                                 end else
//                                     CurrencyCode3 := TempCurrency2.Code;
//                                 //BegViki
//                                 if CurrencyConversion = true then
//                                     CurrencyCode3 := 'USD';
//                                 //BegViki
//                                 IsFirstPrintLine := true;
//                             end;
//                         }
//                     }
//                     dataitem(CustLedgEntryFooter; Integer)
//                     {
//                         DataItemTableView = sorting(Number)
//                                             where(Number = const(1));
//                         column(CurrencyCode3_CustLedgEntryFooter; CurrencyCode3)
//                         {
//                         }
//                         column(Total_Caption; Total_CaptionLbl)
//                         {
//                         }
//                         column(CustBalance_CustLedgEntryHdrFooter; CustBalance)
//                         {
//                             AutoFormatExpression = TempCurrency2.Code;
//                             AutoFormatType = 1;
//                         }
//                         column(EntriesExistsl_CustLedgEntryFooterCaption; EntriesExists)
//                         {
//                         }

//                         trigger OnAfterGetRecord()
//                         begin
//                             ClearCompanyPicture();
//                         end;
//                     }
//                     dataitem(CustLedgEntry2; "Cust. Ledger Entry")
//                     {
//                         DataItemLink = "Customer No." = field("No.");
//                         DataItemLinkReference = Customer;
//                         DataItemTableView = sorting("Customer No.", Open, Positive, "Due Date")
//                                             where(Open = filter(true),
//                                                   "Remaining Amount" = filter(> 0));
//                         column(OverDueEntries; StrSubstNo(Text002Lbl, TempCurrency2.Code))
//                         {
//                         }
//                         column(RemainAmt_CustLedgEntry2; "Remaining Amount")
//                         {
//                             AutoFormatExpression = "Currency Code";
//                             AutoFormatType = 1;
//                         }
//                         column(PostDate_CustLedgEntry2; Format("Posting Date"))
//                         {
//                         }
//                         column(DocNo_CustLedgEntry2; "Document No.")
//                         {
//                         }
//                         column(Desc_CustLedgEntry2; Description)
//                         {
//                         }
//                         column(DueDate_CustLedgEntry2; Format("Due Date"))
//                         {
//                         }
//                         column(OriginalAmt_CustLedgEntry2; "Original Amount")
//                         {
//                             AutoFormatExpression = "Currency Code";
//                         }
//                         column(CurrCode_CustLedgEntry2; "Currency Code")
//                         {
//                         }
//                         column(PrintEntriesDue; PrintEntriesDue)
//                         {
//                         }
//                         column(Currency2Code_CustLedgEntry2; TempCurrency2.Code)
//                         {
//                         }
//                         column(CurrencyCode3_CustLedgEntry2; CurrencyCode3)
//                         {
//                         }
//                         column(CustNo_CustLedgEntry2; "Customer No.")
//                         {
//                         }
//                         column(TRX1; TRX_Date)
//                         {
//                         }
//                         column(AgentRef1; "Agent Reference")
//                         {
//                         }
//                         column(BookingID1; "Booking ID Filter")
//                         {
//                         }

//                         trigger OnAfterGetRecord()
//                         var
//                             CustLedgEntry: Record "Cust. Ledger Entry";
//                         begin
//                             //SDY begin
//                             // if IncludeAgingBand then begin
//                             if ("Posting Date" > EndDate) and ("Due Date" >= EndDate) then
//                                 CurrReport.Skip();
//                             if DateChoice = DateChoice::"Due Date" then begin
//                                 if "Due Date" > EndDate then
//                                     CurrReport.Skip();
//                             end else
//                                 if "Posting Date" > EndDate then
//                                     CurrReport.Skip();
//                             // end;
//                             //SDY End
//                             CustLedgEntry := CustLedgEntry2;
//                             CustLedgEntry.SetRange("Date Filter", 0D, EndDate);
//                             CustLedgEntry.SetRange(Open, true);
//                             CustLedgEntry.SetFilter("Remaining Amount", '>%1', 0);//NYZ
//                             CustLedgEntry.CalcFields("Remaining Amount");
//                             "Remaining Amount" := CustLedgEntry."Remaining Amount";
//                             if CustLedgEntry."Remaining Amount" = 0 then
//                                 CurrReport.Skip();

//                             // if IncludeAgingBand and ("Posting Date" <= EndDate) then
//                             if "Posting Date" <= EndDate then
//                                 UpdateBuffer(TempCurrency2.Code, GetDate("Posting Date", "Due Date"), "Remaining Amount");
//                             // if "Due Date" >= EndDate then
//                             //     CurrReport.Skip();

//                             ClearCompanyPicture();
//                         end;

//                         trigger OnPreDataItem()
//                         begin
// #pragma warning disable AL0667
//                             CurrReport.CreateTotals("Remaining Amount");
// #pragma warning restore AL0667

//                             // if not IncludeAgingBand then
//                             if DateChoice = DateChoice::"Due Date" then
//                                 SetRange("Due Date", 0D, EndDate);
//                             SetRange("Currency Code", TempCurrency2.Code);
//                             // if (not PrintEntriesDue) and (not IncludeAgingBand) then
//                             //     CurrReport.Break();
//                         end;
//                     }

//                     trigger OnAfterGetRecord()
//                     var
//                         CustLedgerEntry: Record "Cust. Ledger Entry";
//                     begin
//                         if Number = 1 then
//                             TempCurrency2.FindFirst();
//                         StartBalance := 0;
//                         CustBalance := 0;
//                         repeat
//                             if not IsFirstLoop then
//                                 IsFirstLoop := true
//                             else
//                                 if TempCurrency2.Next() = 0 then
//                                     CurrReport.Break();
//                             CustLedgerEntry.SetRange("Customer No.", Customer."No.");
//                             CustLedgerEntry.SetRange("Posting Date", 0D, EndDate);
//                             CustLedgerEntry.SetRange(Open, true);
//                             CustLedgerEntry.SetFilter("Remaining Amount", '>%1', 0);

//                             if TempCurrency2.Code = '' then begin
//                                 CustLedgerEntry.SetRange("Currency Code", '');
//                                 bool := true;
//                             end else
//                                 CustLedgerEntry.SetRange("Currency Code", TempCurrency2.Code);
//                             EntriesExists := not CustLedgerEntry.IsEmpty();
//                         until EntriesExists;
//                         Cust2 := Customer;
//                         Cust2.SetRange("Date Filter", 0D, StartDate - 1);
//                         if TempCurrency2.Code = '' then
//                             Cust2.SetRange("Currency Filter", GLSetup."LCY Code")
//                         else
//                             Cust2.SetRange("Currency Filter", TempCurrency2.Code);
//                         Cust2.CalcFields("Net Change");
//                         StartBalance := Cust2."Net Change";
//                         CustBalance := Cust2."Net Change";

//                         if TempCurrency2.Code = GLSetup."LCY Code" then begin
//                             Cust2 := Customer;
//                             Cust2.SetRange("Date Filter", 0D, StartDate - 1);
//                             Cust2.SetRange("Currency Filter", '');
//                             Cust2.CalcFields("Net Change");
//                             StartBalance += Cust2."Net Change";
//                             CustBalance += Cust2."Net Change";
//                         end;
//                     end;

//                     trigger OnPreDataItem()
//                     begin
//                         Customer.CopyFilter("Currency Filter", TempCurrency2.Code);
//                         bool := false;
//                     end;
//                 }
//                 dataitem(AgingBandLoop; Integer)
//                 {
//                     DataItemTableView = sorting(Number)
//                                         where(Number = filter(1 ..));
//                     column(AgingDate1; Format(AgingDate[1] + 1))
//                     {
//                     }
//                     column(AgingDate2; Format(AgingDate[2]))
//                     {
//                     }
//                     column(AgingDate21; Format(AgingDate[2] + 1))
//                     {
//                     }
//                     column(AgingDate3; Format(AgingDate[3]))
//                     {
//                     }
//                     column(AgingDate31; Format(AgingDate[3] + 1))
//                     {
//                     }
//                     column(AgingDate4; Format(AgingDate[4]))
//                     {
//                     }
//                     column(AgingBandEndingDate; StrSubstNo(Text011Lbl, AgingBandEndingDate, PeriodLength, SelectStr(DateChoice + 1, Text013Lbl)))
//                     {
//                     }
//                     column(AgingDate41; Format(AgingDate[4] + 1))
//                     {
//                     }
//                     column(AgingDate5; Format(AgingDate[5]))
//                     {
//                     }
//                     column(AgingBandBufCol1Amt; TempAgingBandBuf."Column 1 Amt.")
//                     {
//                         AutoFormatExpression = TempAgingBandBuf."Currency Code";
//                         AutoFormatType = 1;
//                     }
//                     column(AgingBandBufCol2Amt; TempAgingBandBuf."Column 2 Amt.")
//                     {
//                         AutoFormatExpression = TempAgingBandBuf."Currency Code";
//                         AutoFormatType = 1;
//                     }
//                     column(AgingBandBufCol3Amt; TempAgingBandBuf."Column 3 Amt.")
//                     {
//                         AutoFormatExpression = TempAgingBandBuf."Currency Code";
//                         AutoFormatType = 1;
//                     }
//                     column(AgingBandBufCol4Amt; TempAgingBandBuf."Column 4 Amt.")
//                     {
//                         AutoFormatExpression = TempAgingBandBuf."Currency Code";
//                         AutoFormatType = 1;
//                     }
//                     column(AgingBandBufCol5Amt; TempAgingBandBuf."Column 5 Amt.")
//                     {
//                         AutoFormatExpression = TempAgingBandBuf."Currency Code";
//                         AutoFormatType = 1;
//                     }
//                     column(AgingBandCurrencyCode; AgingBandCurrencyCode)
//                     {
//                     }
//                     column(beforeCaption; beforeCaptionLbl)
//                     {
//                     }

//                     trigger OnAfterGetRecord()
//                     begin
//                         if Number = 1 then begin
//                             ClearCompanyPicture();
//                             if not TempAgingBandBuf.Find('-') then
//                                 CurrReport.Break();
//                         end else
//                             if TempAgingBandBuf.Next() = 0 then
//                                 CurrReport.Break();
//                         AgingBandCurrencyCode := TempAgingBandBuf."Currency Code";
//                         if AgingBandCurrencyCode = '' then
//                             AgingBandCurrencyCode := GLSetup."LCY Code";
//                     end;

//                     trigger OnPreDataItem()
//                     begin
//                         if not IncludeAgingBand then
//                             CurrReport.Break();
//                     end;
//                 }
//             }

//             trigger OnAfterGetRecord()
//             var
//                 CustLedgerEntry: Record "Cust. Ledger Entry";
//             begin
//                 TempAgingBandBuf.DeleteAll();

//                 // Dhaval Dangar
//                 // CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");
//                 // Dhaval Dangar

//                 PrintLine := false;
//                 Cust2 := Customer;
//                 CopyFilter("Currency Filter", TempCurrency2.Code);
//                 if PrintAllHavingBal then
//                     if TempCurrency2.Find('-') then
//                         repeat
//                             Cust2.SetRange("Date Filter", 0D, EndDate);
//                             // Cust2.SETRANGE(cust2.open,TRUE);
//                             //Cust2.SETFILTER("remaining amount",'>%1',0);
//                             Cust2.SetRange("Currency Filter", TempCurrency2.Code);
//                             Cust2.CalcFields("Net Change");
//                             PrintLine := Cust2."Net Change" <> 0;
//                         until (TempCurrency2.Next() = 0) OR PrintLine;

//                 if (not PrintLine) and PrintAllHavingEntry then begin
//                     CustLedgerEntry.SetRange("Customer No.", "No.");
//                     CustLedgerEntry.SetRange("Posting Date", StartDate, EndDate);
//                     CustLedgerEntry.SetRange(Open, true);
//                     CustLedgerEntry.SetFilter("Remaining Amount", '>%1', 0);
//                     // COPYFILTER("Currency Filter",CustLedgerEntry."Currency Code"); //1
//                     CopyFilter("Currency Filter", CustLedgerEntry."Currency Code");
//                     PrintLine := not CustLedgerEntry.IsEmpty;
//                 end;
//                 if not PrintLine then
//                     CurrReport.Skip();

//                 FormatAddr.Customer(CustAddr, Customer);
//                 PrintedCustomersList.Add("No.");

//                 // Dhaval Dangar
//                 // CurrReport.PageNo := 1;
//                 // Dhaval Dangar

//                 if not IsReportInPreviewMode() then begin
//                     LockTable();
//                     Find();
//                     "Last Statement No." := "Last Statement No." + 1;
//                     Modify();
//                     Commit();
//                 end else
//                     "Last Statement No." := "Last Statement No." + 1;

//                 if LogInteraction then
//                     if not IsReportInPreviewMode() then
//                         SegManagement.LogDocument(
//                           7, Format("Last Statement No."), 0, 0, Database::Customer, "No.", "Salesperson Code", '',
//                           Text003Txt + Format("Last Statement No."), '');
//                 IsFirstLoop := false;
//             end;

//             trigger OnPreDataItem()
//             begin
//                 VerifyDates();
//                 AgingBandEndingDate := EndDate;
//                 CalcAgingBandDates();

//                 CompanyInfo.Get();
//                 GetSelectedBankDetails();
//                 FormatAddr.Company(CompanyAddr, CompanyInfo);

//                 TempCurrency2.Code := '';
//                 TempCurrency2.Insert();
//                 CopyFilter("Currency Filter", Currency.Code);
//                 if Currency.Find('-') then
//                     repeat
//                         TempCurrency2 := Currency;
//                         TempCurrency2.Insert();
//                     until Currency.Next() = 0;
//             end;
//         }
//     }

//     requestpage
//     {
//         SaveValues = true;

//         layout
//         {
//             area(content)
//             {
//                 group(Options)
//                 {
//                     Caption = 'Options';
//                     field("Currency Conversion"; CurrencyConversion)
//                     {
//                         Caption = 'Currency Conversion - USD';
//                         ApplicationArea = Basic, Suite;
//                         ToolTip = 'Specifies the value of the Currency Conversion - USD field.';
//                     }
//                     field(MulticurrencyApplication1; MulticurrencyApplication)
//                     {
//                         Caption = 'Hide Multicurrency Application';
//                         ApplicationArea = Basic, Suite;
//                         ToolTip = 'Specifies the value of the Hide Multicurrency Application field.';
//                     }
//                     field("Start Date"; StartDate)
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Caption = 'Start Date';
//                         ToolTip = 'Specifies the date from which the report or batch job processes information.';
//                     }
//                     field("End Date"; EndDate)
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Caption = 'End Date';
//                         ToolTip = 'Specifies the date to which the report or batch job processes information.';
//                     }
//                     field(ShowOverdueEntries; PrintEntriesDue)
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Caption = 'Show Overdue Entries';
//                         ToolTip = 'Specifies if you want overdue entries to be shown separately for each currency.';
//                     }
//                     group(Include)
//                     {
//                         Caption = 'Include';
//                         field(IncludeAllCustomerswithLE; PrintAllHavingEntry)
//                         {
//                             ApplicationArea = Basic, Suite;
//                             Caption = 'Include All Customers with Ledger Entries';
//                             MultiLine = true;
//                             ToolTip = 'Specifies if you want entries displayed for customers that have ledger entries at the end of the selected period.';

//                             trigger OnValidate()
//                             begin
//                                 if not PrintAllHavingEntry then
//                                     PrintAllHavingBal := true;
//                             end;
//                         }
//                         field(IncludeAllCustomerswithBalance; PrintAllHavingBal)
//                         {
//                             ApplicationArea = Basic, Suite;
//                             Caption = 'Include All Customers with a Balance';
//                             MultiLine = true;
//                             ToolTip = 'Specifies if you want entries displayed for customers that have a balance at the end of the selected period.';

//                             trigger OnValidate()
//                             begin
//                                 if not PrintAllHavingBal then
//                                     PrintAllHavingEntry := true;
//                             end;
//                         }
//                         field(IncludeReversedEntries; PrintReversedEntries)
//                         {
//                             ApplicationArea = Basic, Suite;
//                             Caption = 'Include Reversed Entries';
//                             ToolTip = 'Specifies if you want to include reversed entries in the report.';
//                         }
//                         field(IncludeUnappliedEntries; PrintUnappliedEntries)
//                         {
//                             ApplicationArea = Basic, Suite;
//                             Caption = 'Include Unapplied Entries';
//                             ToolTip = 'Specifies if you want to include unapplied entries in the report.';
//                         }
//                     }
//                     group("Aging Band")
//                     {
//                         Caption = 'Aging Band';
//                         field(IncludeAgingBand1; IncludeAgingBand)
//                         {
//                             ApplicationArea = Basic, Suite;
//                             Caption = 'Include Aging Band';
//                             ToolTip = 'Specifies if you want an aging band to be included in the document. If you place a check mark here, you must also fill in the Aging Band Period Length and Aging Band by fields.';
//                         }
//                         field(AgingBandPeriodLengt; PeriodLength)
//                         {
//                             ApplicationArea = Basic, Suite;
//                             Caption = 'Aging Band Period Length';
//                             ToolTip = 'Specifies the length of each of the four periods in the aging band, for example, enter "1M" for one month. The most recent period will end on the last day of the period in the Date Filter field.';
//                         }
//                         field(AgingBandby; DateChoice)
//                         {
//                             ApplicationArea = Basic, Suite;
//                             Caption = 'Aging Band by';
//                             OptionCaption = 'Due Date,Posting Date';
//                             ToolTip = 'Specifies if the aging band will be calculated from the due date or from the posting date.';
//                         }
//                     }
//                     field(LogInteraction1; LogInteraction)
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Caption = 'Log Interaction';
//                         Enabled = LogInteractionEnable;
//                         ToolTip = 'Specifies that interactions with the contact are logged.';
//                     }
//                 }
//                 group("Output Options")
//                 {
//                     Caption = 'Output Options';
//                     field(ReportOutput; SupportedOutputMethod)
//                     {
//                         ApplicationArea = Basic, Suite;
//                         Caption = 'Report Output';
//                         OptionCaption = 'Print,Preview,PDF,Email,Excel,XML';
//                         ToolTip = 'Specifies the output of the scheduled report, such as PDF or Word.';

//                         trigger OnValidate()
//                         var
//                             CustomLayoutReporting: Codeunit "Custom Layout Reporting";
//                         begin
//                             ShowPrintRemaining := (SupportedOutputMethod = SupportedOutputMethod::Email);

//                             case SupportedOutputMethod of
//                                 SupportedOutputMethod::Print:
//                                     ChosenOutputMethod := CustomLayoutReporting.GetPrintOption();
//                                 SupportedOutputMethod::Preview:
//                                     ChosenOutputMethod := CustomLayoutReporting.GetPreviewOption();
//                                 SupportedOutputMethod::PDF:
//                                     ChosenOutputMethod := CustomLayoutReporting.GetPDFOption();
//                                 SupportedOutputMethod::Email:
//                                     ChosenOutputMethod := CustomLayoutReporting.GetEmailOption();
//                                 SupportedOutputMethod::Excel:
//                                     ChosenOutputMethod := CustomLayoutReporting.GetExcelOption();
//                                 SupportedOutputMethod::XML:
//                                     ChosenOutputMethod := CustomLayoutReporting.GetXMLOption();
//                             end;
//                         end;
//                     }
//                     field(ChosenOutput; ChosenOutputMethod)
//                     {
//                         ApplicationArea = Advanced;
//                         Caption = 'Chosen Output';
//                         ToolTip = 'Specifies how to output the report, such as Print or Excel.';
//                         Visible = false;
//                     }
//                     group(EmailOptions)
//                     {
//                         Caption = 'Email Options';
//                         Visible = ShowPrintRemaining;
//                         field(PrintMissingAddresses; PrintRemaining)
//                         {
//                             ApplicationArea = Advanced;
//                             Caption = 'Print remaining statements';
//                             ToolTip = 'Specifies if you want to print remaining statements.';
//                         }
//                     }
//                 }
//             }
//         }

//         actions
//         {
//         }

//         trigger OnOpenPage()
//         begin
//             InitRequestPageDataInternal();
//         end;
//     }

//     labels
//     {
//     }

//     trigger OnInitReport()
//     begin
//         GLSetup.Get();
//         SalesSetup.Get();

//         case SalesSetup."Logo Position on Documents" of
//             SalesSetup."Logo Position on Documents"::"No Logo":
//                 ;
//             SalesSetup."Logo Position on Documents"::Left:
//                 begin
//                     CompanyInfo1.Get();
//                     CompanyInfo1.CalcFields(Picture);
//                 end;
//             SalesSetup."Logo Position on Documents"::Center:
//                 begin
//                     CompanyInfo2.Get();
//                     CompanyInfo2.CalcFields(Picture);
//                 end;
//             SalesSetup."Logo Position on Documents"::Right:
//                 begin
//                     CompanyInfo3.Get();
//                     CompanyInfo3.CalcFields(Picture);
//                 end;
//         end;

//         LogInteractionEnable := true;
//     end;

//     trigger OnPostReport()
//     var
//         CusNo: Code[20];
//     begin
//         if not IsReportInPreviewMode() then
//             foreach CusNo in PrintedCustomersList do
//                 if Customer.Get(CusNo) then begin
//                     Customer."Last Statement No." := Customer."Last Statement No." + 1;
//                     Customer.Modify();
//                     if LogInteraction then
//                         SegManagement.LogDocument(
//                           7, Format(Customer."Last Statement No."), 0, 0, DATABASE::Customer, Customer."No.", Customer."Salesperson Code", '',
//                           Text003Txt + Format(Customer."Last Statement No."), '');
//                 end;
//     end;

//     trigger OnPreReport()
//     begin
//         InitRequestPageDataInternal();
//     end;

//     var
//         GLSetup: Record "General Ledger Setup";
//         SalesSetup: Record "Sales & Receivables Setup";
//         CompanyInfo: Record "Company Information";
//         CompanyInfo1: Record "Company Information";
//         CompanyInfo2: Record "Company Information";
//         CompanyInfo3: Record "Company Information";
//         Cust2: Record Customer;
//         Currency: Record Currency;
//         TempCurrency2: Record Currency temporary;
//         cust1: Record "Cust. Ledger Entry";
//         // Language: Record Language;
//         DtldCustLedgEntries2: Record "Detailed Cust. Ledg. Entry";
//         TempAgingBandBuf: Record "Aging Band Buffer" temporary;
//         FormatAddr: Codeunit "Format Address";
//         SegManagement: Codeunit SegManagement;
//         PeriodLength: DateFormula;
//         PeriodLength2: DateFormula;
//         PrintedCustomersList: List of [Code[20]];
//         Text001Lbl: Label 'Entries %1', Comment = '%1 = CurrencyCode3';
//         Text002Lbl: Label 'Overdue Entries %1', Comment = '%1 = TempCurrency2.Code';
//         Text003Txt: Label 'Statement ';
//         bool: Boolean;
//         s1: Decimal;
//         c1: Decimal;
//         PrintAllHavingEntry: Boolean;
//         PrintAllHavingBal: Boolean;
//         PrintEntriesDue: Boolean;
//         PrintUnappliedEntries: Boolean;
//         PrintReversedEntries: Boolean;
//         PrintLine: Boolean;
//         LogInteraction: Boolean;
//         EntriesExists: Boolean;
//         StartDate: Date;
//         EndDate: Date;
//         DueDate: Date;
//         BankAccount: Record "Bank Account";

//         // First Bank SDY
//         Bank1Description: Text[100];
//         Bank1AccountNo: Code[50];
//         Bank1IBAN: Code[50];
//         Bank1Name: Text[100];
//         Bank1SWIFT: Code[50];
//         Bank1Address: Text[250];

//         // Second Bank
//         Bank2Description: Text[100];
//         Bank2AccountNo: Code[50];
//         Bank2IBAN: Code[50];
//         Bank2Name: Text[100];
//         Bank2SWIFT: Code[50];
//         Bank2Address: Text[250];
//         //SDY
//         CustAddr: array[8] of Text[50];
//         CompanyAddr: array[8] of Text[50];
//         Description: Text[50];
//         StartBalance: Decimal;
//         CustBalance: Decimal;
//         RemainingAmount: Decimal;
//         CurrencyCode3: Code[10];
//         Text005Lbl: Label 'Multicurrency Application';
//         Text006Lbl: Label 'Payment Discount';
//         Text007Lbl: Label 'Rounding';
//         DateChoice: Option "Due Date","Posting Date";
//         AgingDate: array[5] of Date;
//         Text008Err: Label 'You must specify the Aging Band Period Length.';
//         AgingBandEndingDate: Date;
//         Text010Err: Label 'You must specify Aging Band Ending Date.';
//         Text011Lbl: Label 'Aged Summary by %1 (%2 by %3)', Comment = '%1=AgingBandEndingDate; %2=PeriodLength; %3=SelectStr(DateChoice + 1, Text013Lbl)';
//         IncludeAgingBand: Boolean;
//         Text012Err: Label 'Period Length is out of range.';
//         AgingBandCurrencyCode: Code[20];
//         Text013Lbl: Label 'Due Date,Posting Date';
//         Text014Lbl: Label 'Application Writeoffs';
//         LogInteractionEnable: Boolean;
//         Text036Lbl: Label '-%1', Comment = 'Negating the period length: %1 is the period length';
//         StatementCaptionLbl: Label 'Statement';
//         PhoneNo_CompanyInfoCaptionLbl: Label 'Phone No.';
//         VATRegNo_CompanyInfoCaptionLbl: Label 'VAT Registration No.';
//         GiroNo_CompanyInfoCaptionLbl: Label 'Giro No.';
//         BankName_CompanyInfoCaptionLbl: Label 'Bank';
//         BankAccNo_CompanyInfoCaptionLbl: Label 'Account No.';
//         No1_CustCaptionLbl: Label 'Customer No.';
//         StartDateCaptionLbl: Label 'Starting Date';
//         EndDateCaptionLbl: Label 'Ending Date';
//         LastStatmntNo_CustCaptionLbl: Label 'Statement No.';
//         PostDate_DtldCustLedgEntriesCaptionLbl: Label 'Posting Date';
//         DueDate_CustLedgEntry2CaptionLbl: Label 'Due Date';
//         CustBalanceCaptionLbl: Label 'Balance';
//         beforeCaptionLbl: Label '..before';
//         isInitialized: Boolean;
//         CompanyInfoHomepageCaptionLbl: Label 'Home Page';
//         CompanyInfoEmailCaptionLbl: Label 'Email';
//         DocDateCaptionLbl: Label 'Document Date';
//         Total_CaptionLbl: Label 'Total';
//         BlankStartDateErr: Label 'Start Date must have a value.';
//         BlankEndDateErr: Label 'End Date must have a value.';
//         StartDateLaterTheEndDateErr: Label 'Start date must be earlier than End date.';
//         IsFirstLoop: Boolean;
//         CurrReportPageNoCaptionLbl: Label 'Page';
//         IsFirstPrintLine: Boolean;
//         IsNewCustCurrencyGroup: Boolean;
//         SupportedOutputMethod: Option Print,Preview,PDF,Email,Excel,XML;
//         ChosenOutputMethod: Integer;
//         PrintRemaining: Boolean;
//         ShowPrintRemaining: Boolean;
//         FirstCustomerPrinted: Boolean;
//         CurrencyConversion: Boolean;
//         MulticurrencyApplication: Boolean;

//     local procedure GetDate(PostingDate: Date; DueDate1: Date): Date
//     begin
//         if DateChoice = DateChoice::"Posting Date" then
//             exit(PostingDate);

//         exit(DueDate1);
//     end;

//     local procedure CalcAgingBandDates()
//     begin
//         if not IncludeAgingBand then
//             exit;
//         if AgingBandEndingDate = 0D then
//             Error(Text010Err);
//         if Format(PeriodLength) = '' then
//             Error(Text008Err);
//         Evaluate(PeriodLength2, StrSubstNo(Text036Lbl, PeriodLength));
//         AgingDate[5] := AgingBandEndingDate;
//         AgingDate[4] := CalcDate(PeriodLength2, AgingDate[5]);
//         AgingDate[3] := CalcDate(PeriodLength2, AgingDate[4]);
//         AgingDate[2] := CalcDate(PeriodLength2, AgingDate[3]);
//         AgingDate[1] := CalcDate(PeriodLength2, AgingDate[2]);
//         if AgingDate[2] <= AgingDate[1] then
//             Error(Text012Err);
//     end;
//     //SDY begin
//     local procedure GetSelectedBankDetails()
//     begin
//         Clear(Bank1Description);
//         Clear(Bank1AccountNo);
//         Clear(Bank1IBAN);
//         Clear(Bank1Name);
//         Clear(Bank1SWIFT);
//         Clear(Bank1Address);

//         Clear(Bank2Description);
//         Clear(Bank2AccountNo);
//         Clear(Bank2IBAN);
//         Clear(Bank2Name);
//         Clear(Bank2SWIFT);
//         Clear(Bank2Address);

//         if CurrencyConversion then begin
//             // Field 1: Bank 1 (LCY)
//             if BankAccount.Get(CompanyInfo."Bank No(LCY)") then
//                 AssignBank1Details();

//             // Field 3: Bank 2 (LCY)
//             if BankAccount.Get(CompanyInfo."Bank No2(LCY)") then
//                 AssignBank2Details();
//         end else begin
//             // Field 2: Bank 1 (USD)
//             if BankAccount.Get(CompanyInfo."Bank No.(USD)") then
//                 AssignBank1Details();

//             // Field 4: Bank 2 (USD)
//             if BankAccount.Get(CompanyInfo."Bank No2(USD)") then
//                 AssignBank2Details();
//         end;
//     end;

//     local procedure AssignBank1Details()
//     begin
//         Bank1Description := BankAccount.Name;
//         Bank1AccountNo := BankAccount."Bank Account No.";
//         Bank1IBAN := BankAccount.IBAN;
//         Bank1Name := BankAccount."Bank Acccont Name";
//         Bank1SWIFT := BankAccount."SWIFT Code";

//         Bank1Address := GetBankAddress();
//     end;

//     local procedure AssignBank2Details()
//     begin
//         Bank2Description := BankAccount.Name;
//         Bank2AccountNo := BankAccount."Bank Account No.";
//         Bank2IBAN := BankAccount.IBAN;
//         Bank2Name := BankAccount."Bank Acccont Name";
//         Bank2SWIFT := BankAccount."SWIFT Code";

//         Bank2Address := GetBankAddress();
//     end;

//     local procedure GetBankAddress(): Text[250]
//     var
//         AddressText: Text[250];
//     begin
//         AddressText := BankAccount.Address;

//         if BankAccount."Address 2" <> '' then
//             AddressText += ', ' + BankAccount."Address 2";

//         if BankAccount.City <> '' then
//             AddressText += ', ' + BankAccount.City;

//         if BankAccount."Post Code" <> '' then
//             AddressText += ', ' + BankAccount."Post Code";

//         if BankAccount.County <> '' then
//             AddressText += ', ' + BankAccount.County;

//         if BankAccount."Country/Region Code" <> '' then
//             AddressText += ', ' + BankAccount."Country/Region Code";

//         exit(AddressText);
//     end;
//     //SDY END
//     local procedure UpdateBuffer(CurrencyCode: Code[10]; Date: Date; Amount: Decimal)
//     var
//         I: Integer;
//         GoOn: Boolean;
//     begin
//         TempAgingBandBuf.Init();
//         TempAgingBandBuf."Currency Code" := CurrencyCode;
//         if not TempAgingBandBuf.Find() then
//             TempAgingBandBuf.Insert();
//         I := 1;
//         GoOn := true;
//         while (I <= 5) and GoOn do begin
//             if Date <= AgingDate[I] then
//                 if I = 1 then begin
//                     TempAgingBandBuf."Column 1 Amt." := TempAgingBandBuf."Column 1 Amt." + Amount;
//                     GoOn := false;
//                 end;
//             if Date <= AgingDate[I] then
//                 if I = 2 then begin
//                     TempAgingBandBuf."Column 2 Amt." := TempAgingBandBuf."Column 2 Amt." + Amount;
//                     GoOn := false;
//                 end;
//             if Date <= AgingDate[I] then
//                 if I = 3 then begin
//                     TempAgingBandBuf."Column 3 Amt." := TempAgingBandBuf."Column 3 Amt." + Amount;
//                     GoOn := false;
//                 end;
//             if Date <= AgingDate[I] then
//                 if I = 4 then begin
//                     TempAgingBandBuf."Column 4 Amt." := TempAgingBandBuf."Column 4 Amt." + Amount;
//                     GoOn := false;
//                 end;
//             if Date <= AgingDate[I] then
//                 if I = 5 then BEGIN
//                     TempAgingBandBuf."Column 5 Amt." := TempAgingBandBuf."Column 5 Amt." + Amount;
//                     GoOn := false;
//                 end;
//             I := I + 1;
//         end;
//         TempAgingBandBuf.Modify();
//     end;

//     procedure SkipReversedUnapplied(var DtldCustLedgEntries: Record "Detailed Cust. Ledg. Entry"): Boolean
//     var
//         CustLedgEntry: Record "Cust. Ledger Entry";
//     begin
//         if PrintReversedEntries and PrintUnappliedEntries then
//             exit(false);
//         if not PrintUnappliedEntries then
//             IF DtldCustLedgEntries.Unapplied then
//                 exit(true);
//         if not PrintReversedEntries then begin
//             CustLedgEntry.Get(DtldCustLedgEntries."Cust. Ledger Entry No.");
//             if CustLedgEntry.Reversed then
//                 exit(true);
//         end;
//         exit(false);
//     end;

//     procedure InitializeRequest(NewPrintEntriesDue: Boolean; NewPrintAllHavingEntry: Boolean; NewPrintAllHavingBal: Boolean; NewPrintReversedEntries: Boolean; NewPrintUnappliedEntries: Boolean; NewIncludeAgingBand: Boolean; NewPeriodLength: Text[30]; NewDateChoice: Option; NewLogInteraction: Boolean; NewStartDate: Date; NewEndDate: Date)
//     begin
//         InitRequestPageDataInternal();

//         PrintEntriesDue := NewPrintEntriesDue;
//         PrintAllHavingEntry := NewPrintAllHavingEntry;
//         PrintAllHavingBal := NewPrintAllHavingBal;
//         PrintReversedEntries := NewPrintReversedEntries;
//         PrintUnappliedEntries := NewPrintUnappliedEntries;
//         IncludeAgingBand := NewIncludeAgingBand;
//         Evaluate(PeriodLength, NewPeriodLength);
//         DateChoice := NewDateChoice;
//         LogInteraction := NewLogInteraction;
//         StartDate := NewStartDate;
//         EndDate := NewEndDate;
//     end;

//     local procedure IsReportInPreviewMode(): Boolean
//     var
//         MailManagement: Codeunit "Mail Management";
//     begin
//         exit(CurrReport.Preview or MailManagement.IsHandlingGetEmailBody());
//     end;

//     procedure InitRequestPageDataInternal()
//     begin
//         if isInitialized then
//             exit;

//         isInitialized := true;

//         if (not PrintAllHavingEntry) and (not PrintAllHavingBal) then
//             PrintAllHavingBal := true;

//         LogInteraction := SegManagement.FindInteractionTemplateCode(Enum::"Interaction Log Entry Document Type".FromInteger(7)) <> '';
//         LogInteractionEnable := LogInteraction;

//         if Format(PeriodLength) = '' then
//             Evaluate(PeriodLength, '<1M+CM>');

//         ShowPrintRemaining := (SupportedOutputMethod = SupportedOutputMethod::Email);
//     end;

//     local procedure VerifyDates()
//     begin
//         if StartDate = 0D then
//             Error(BlankStartDateErr);
//         if EndDate = 0D then
//             Error(BlankEndDateErr);
//         if StartDate > EndDate then
//             Error(StartDateLaterTheEndDateErr);
//     end;

//     local procedure ClearCompanyPicture()
//     begin
//         if FirstCustomerPrinted then begin
//             Clear(CompanyInfo.Picture);
//             Clear(CompanyInfo1.Picture);
//             Clear(CompanyInfo2.Picture);
//             Clear(CompanyInfo3.Picture);
//         end;
//         FirstCustomerPrinted := true;
//     end;
// }