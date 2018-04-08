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
Public id As Double
Public id_user As Integer
Public id_room As Integer
Public id_package As Integer
Public time_service As Integer
Public time_clean As Integer
Public datetime_start_service As Date
Public datetime_end_service As Date
Public datetime_start_clean As Date
Public datetime_end_clean As Date
Public status As String
Public datetime_end_real_service As Date
Public datetime_end_real_clean As Date
Public net_value As Double

Public Sub loadService(id As Double, id_user As Integer, id_room As Integer, id_package As Integer, _
    time_service As Integer, time_clean As Integer, datetime_start_service As Date, datetime_end_service As Date, _
    datetime_start_clean As Date, datetime_end_clean As Date, status As String, datetime_end_real_service As Date, _
    datetime_end_real_clean As Date, net_value As Double)
    
    Me.id = id
    Me.id_user = id_user
    Me.id_room = id_room
    Me.id_package = id_package
    Me.time_service = time_service
    Me.time_clean = time_clean
    Me.datetime_start_service = datetime_start_service
    Me.datetime_end_service = datetime_end_service
    Me.datetime_start_clean = datetime_start_clean
    Me.datetime_end_clean = datetime_end_clean
    Me.status = status
    Me.datetime_end_real_service = datetime_end_real_service
    Me.datetime_end_real_clean = datetime_end_real_clean
    Me.net_value = net_value
End Sub

Public Sub loadServiceFromRecord(rec As Recordset)
    Call Me.loadService(rec(0), rec(1), rec(2), rec(3), rec(4), rec(5), rec(6), rec(7), rec(8), rec(9), rec(10), rec(11), rec(12), rec(13))
End Sub

Public Function findById(id_service As Double) As cService
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset
Dim service As cService

'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient

rec.Open "select * from service where id=" & id_service & "", conBd, adOpenStatic, adLockOptimistic

If (rec.RecordCount = 1) Then
    Set service = New cService
    Call service.loadServiceFromRecord(rec)
End If
Set findById = service

rec.Close
conBd.Close
End Function

Public Function addHour() As cService
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset
Dim service As cService

'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient

Me.datetime_end_service = DateAdd("n", 60, Me.datetime_end_service)

rec.Open "select * from service where id=" & id_service & "", conBd, adOpenStatic, adLockOptimistic

If (rec.RecordCount = 1) Then
    Set service = New cService
    Call service.loadServiceFromRecord(rec)
End If
Set findById = service

rec.Close
conBd.Close
End Function
