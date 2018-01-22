VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CService"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

'Clase CService, mapea directamente con la tabla service para la gesti�n de servicios

'Attributes
Public id As Integer
Public idUser As Integer
Public idRoom As Integer
Public idPackage As Integer
Public timeService As Integer
Public timeClean As Integer
Public dateTimeStartService As Date
Public dateTimeEndService As Date
Public dateTimeStartClean As Date
Public dateTimeEndClean As Date

Public Sub loadService(id As Integer, idUser As Integer, idRoom As Integer, idPackage As Integer, _
    timeService As Integer, timeClean As Integer, dateTimeStartService As Date, dateTimeEndService As Date, _
     dateTimeStartClean As Date, dateTimeEndClean As Date)
    Me.id = id
    Me.idUser = idUser
    Me.idRoom = idRoom
    Me.idPackage = idPackage
    Me.timeService = timeService
    Me.timeClean = timeClean
    Me.dateTimeStartService = dateTimeStartService
    Me.dateTimeEndService = dateTimeEndService
    Me.dateTimeStartClean = dateTimeStartClean
    Me.dateTimeEndClean = dateTimeEndClean
End Sub

Public Sub loadServiceFromRecord(rec As Recordset)
    Call Me.loadService(rec(1), rec(2), rec(3), rec(4), rec(5), rec(6), rec(7), rec(8), rec(9), rec(10))
End Sub

Public Function loadLast10OperationsNoProcessed() As CService()
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset
Dim operationsToProcess(10) As CService
Dim pos As Integer
pos = 1

'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient

rec.Open "select * from operation_room_log order by date_action ASC LIMIT 10", conBd, adOpenStatic, adLockOptimistic

If (rec.RecordCount >= 1) Then
    Do Until rec.EOF
        Dim service As New CService
        service.loadServiceFromRecord (rec)
        operationsToProcess(pos) = service
        rec.MoveNext
    Loop
End If

loadLast10OperationsNoProcessed = operationsToProcess

rec.Close
End Function
