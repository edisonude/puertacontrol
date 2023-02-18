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

'Convierte un valor moneda a su valor numérico
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
On Error GoTo control
    convertTime = IIf(IsNull(value), "", Format(value, "hh:MM:ss"))
    Exit Function
control:
    convertTime = ""
End Function

Public Function convertSecondsToTime(value) As String
Dim time As String
If (value < 0) Then
    time = "-"
    value = value * -1
End If

Dim h, m, s, r As Double
s = value Mod 60
r = value \ 60
m = r Mod 60
h = r \ 60
convertSecondsToTime = time & Format(h, "00") & ":" & Format(m, "00") & ":" & Format(s, "00")
End Function
