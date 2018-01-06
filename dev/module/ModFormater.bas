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
