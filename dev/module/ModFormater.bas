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

Public Function getValue(value, Default)
getValue = IIf(IsNull(value), Default, value)
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

'Convierte un valor moneda a su valor num�rico
Public Function convertCurrencyToValue(valueCurrency As String) As Double
valueCurrency = IIf(valueCurrency = "", 0, valueCurrency)
Dim value As Double
value = CDbl(valueCurrency)
convertCurrencyToValue = value
End Function

'Convierte una fecha
Public Function convertDateTime(value) As String
convertDateTime = IIf(IsNull(value), "", Format(value, "dd-MM-yyyy hh:MM:ss"))
End Function

Public Function convertTime(value) As String
convertTime = IIf(IsNull(value), "", Format(value, "hh:MM:ss"))
End Function

