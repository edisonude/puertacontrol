Attribute VB_Name = "ModFormater"
'Obtiene la hora y el minuto de una fecha
Public Function getHourAndMinuteFromDate(dateToFormat As Date)
Dim hourExtracted As String
Dim minuteExtracted As String
Dim result As String

hourExtracted = Format(Hour(dateToFormat), "00")
minuteExtracted = Format(Minute(dateToFormat), "00")
result = hourExtracted & ":" & minuteExtracted

getHourAndMinuteFromDate = result
End Function

Public Function getValue(value, default)
getValue = IIf(IsNull(value), default, value)
End Function


'Convierte un valor numerico a un formato de moneda
Public Function convertValueToCurrency(value, decimalDigits As Integer) As String
Dim valueCurrency As String
valueCurrency = "0"
If IsNumeric(value) Then
    valueCurrency = FormatCurrency(value, decimalDigits)
End If
convertValueToCurrency = FormatCurrency(valueCurrency, decimalDigits)
End Function

'Convierte un valor moneda a su valor numérico
Public Function convertCurrencyToValue(valueCurrency As String) As Double
valueCurrency = IIf(valueCurrency = "", 0, valueCurrency)
Dim value As Double
value = CDbl(valueCurrency)
convertCurrencyToValue = value
End Function
