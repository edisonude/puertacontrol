VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CPackage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

'Clase CPackage, mapea directamente con la tabla package para la gestión de paquetes

'Attributes
Public id As Integer
Public description As String
Public selectable As Boolean

Public Sub loadPackage(id As Integer, description As String, selectable As Boolean)
    Me.id = id
    Me.description = description
    Me.selectable = selectable
End Sub

Public Sub loadPackageFromRecord(rec As Recordset)
    Call Me.loadPackage(rec(0), rec(1), rec(2))
End Sub

'Encuentra las caracteristicas de un paquete para un tipo de habitación especifica
Public Function findById(id_package) As CPackage
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset
Dim package As CPackage

'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient

rec.Open "select * from package where id=" & id_package & "", conBd, adOpenStatic, adLockOptimistic

If (rec.RecordCount = 1) Then
    Set package = New CPackage
    Call package.loadPackageFromRecord(rec)
End If
Set findById = package

rec.Close
conBd.Close
End Function





