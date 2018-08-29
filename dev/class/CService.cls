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

'Clase CService, mapea directamente con la tabla service para la gestión de servicios

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

Public Function loadLast10OperationsNoProcessed() As cService()
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset
Dim operationsToProcess(10) As cService
Dim pos As Integer
pos = 1

'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient

rec.Open "select * from operation_room_log order by date_action ASC LIMIT 10", conBd, adOpenStatic, adLockOptimistic

If (rec.RecordCount >= 1) Then
    Do Until rec.EOF
        Dim service As New cService
        service.loadServiceFromRecord (rec)
        operationsToProcess(pos) = service
        rec.MoveNext
    Loop
End If

loadLast10OperationsNoProcessed = operationsToProcess

rec.Close
conBd.Close
End Function

'Elimina el detalle de un servicio
Public Function removeServiceDetail(id_detail, id_package, id_product) As Boolean

Dim conBd As ADODB.Connection
conBd.BeginTrans

'Elimina el detalle relacionado al servicio
SQL = "DELETE from service_details where id_detail = " & id_detail & ""
conBd.Execute (SQL)

If id_product > 0 Then
                
Else


End If



Set conBd = ModConexion.getNewConection



MsgBox "El producto se eliminó con éxito", vbInformation
Unload Me
End Function

