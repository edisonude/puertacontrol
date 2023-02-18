VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CPackagexTypeRoom"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

'Clase CService, mapea directamente con la tabla service para la gestión de servicios

'Attributes
Public id As Integer
Public id_package As Integer
Public id_room_type As Integer
Public time_service As Integer
Public time_clean As Integer
Public time_grace As Integer
Public price As Double
Public priceAddHour As Double
Public priceAddPerson As Double

Public package As CPackage

Public Sub loadPackagexTypeRoom(id As Integer, id_package As Integer, id_room_type As Integer, time_service As Integer, _
    time_clean As Integer, time_grace As Integer, price As Double, priceAddHour As Double, priceAddPerson As Double)
    Me.id = id
    Me.id_package = id_package
    Me.id_room_type = id_room_type
    Me.time_service = time_service
    Me.time_clean = time_clean
    Me.time_grace = time_grace
    Me.price = price
    Me.priceAddHour = priceAddHour
    Me.priceAddPerson = priceAddPerson
End Sub

Public Sub loadPackagexTypeRoomFromRecord(rec As Recordset)
    Call Me.loadPackagexTypeRoom(rec(0), rec(1), rec(2), rec(3), rec(4), rec(5), rec(6), rec(7), rec(8))
End Sub

'Encuentra las caracteristicas de un paquete para un tipo de habitación especifica
Public Function findByPackageAndRoom(id_package As Integer, id_room_type) As CPackagexTypeRoom
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset
Dim packagexTypeRoom As CPackagexTypeRoom

'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient

SQL = "select * from package_x_type_room where id_package=" & id_package & " and id_room_type=" & id_room_type & ""
rec.Open SQL, conBd, adOpenStatic, adLockOptimistic

Dim count As Integer
If (rec.RecordCount = 1) Then
    Set packagexTypeRoom = New CPackagexTypeRoom
    Call packagexTypeRoom.loadPackagexTypeRoomFromRecord(rec)
End If
Set findByPackageAndRoom = packagexTypeRoom

rec.Close
conBd.Close
End Function

'Encuentra las caracteristicas de un paquete para un tipo de habitación especifica
Public Function findPackagesForRoomType(id_room_type) As CPackagexTypeRoom()

Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset
Dim packages() As CPackagexTypeRoom

'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient

SQL = "select * from package_x_type_room where id_room_type=" & id_room_type & ""
rec.Open SQL, conBd, adOpenStatic, adLockOptimistic

Dim count As Integer
If (rec.RecordCount > 0) Then
    ReDim Preserve packages(rec.RecordCount)
    Do Until rec.EOF
        count = count + 1
        Dim package As CPackagexTypeRoom
        Set package = New CPackagexTypeRoom
        Call package.loadPackagexTypeRoomFromRecord(rec)
        Set packages(count) = package
        rec.MoveNext
    Loop
End If
findPackagesForRoomType = packages
rec.Close
conBd.Close
End Function

'Obtiene toda la información del paquete relacionado
Public Function getPackage() As CPackage
If package Is Nothing Then
    Set package = Ap.cPackageStatic.findById(Me.id_package)
End If
Set getPackage = package
End Function


