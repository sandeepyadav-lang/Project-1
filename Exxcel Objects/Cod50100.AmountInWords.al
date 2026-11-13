codeunit 50100 "Exxel Amount In Words"
{
    procedure GetAmountInWords(AmountToFormat: Decimal; CurrencyCode: Code[10]): Text[250]
    var
        Amount: Decimal;
        FractionalAmount: Decimal;
        WholeAmount: Decimal;
        AmountWords: Text[100];
        FractionWords: Text[100];
    begin
        Amount := Abs(AmountToFormat);
        WholeAmount := Round(Amount, 1, '<');
        FractionalAmount := Round((Amount - WholeAmount) * 100, 1, '=');

        AmountWords := GetNumberInWords(AmountToFormat);
        if FractionalAmount = 0 then
            FractionWords := 'ZERO'
        else
            FractionWords := GetNumberInWords(FractionalAmount);

        exit(CurrencyCode + ' ' + AmountWords + ' AND ' + FractionWords + ' FILS');
    end;

    local procedure GetNumberInWords(NumberToFormat: Decimal): Text[100]
    var
        CheckReport: Report "Check";
        NumberInWords: array[2] of Text[80];
        FormattedNumber: Text[160];
        AndPosition: Integer;
    begin
        CheckReport.InitTextVariable();
        CheckReport.FormatNoText(NumberInWords, NumberToFormat, '');
        FormattedNumber := DelChr(NumberInWords[2] + ' ' + NumberInWords[1], '=', '*');
        FormattedNumber := DelChr(FormattedNumber, '<>', ' ');

        AndPosition := StrPos(FormattedNumber, ' AND ');
        if AndPosition > 0 then
            exit(CopyStr(FormattedNumber, 1, AndPosition - 1));

        exit(FormattedNumber);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Cancel Posted Sales Cr. Memo", OnBeforeTestIfCrMemoIsCorrectiveDoc, '', false, false)]
    local procedure OnBeforeTestIfCrMemoIsCorrectiveDoc(SalesCrMemoHeader: Record "Sales Cr.Memo Header"; var IsHandled: Boolean)
    begin
        IsHandled := true;
    end;
}
