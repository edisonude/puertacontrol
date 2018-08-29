VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CServiceDetail"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

'Clase CServiceDetail, mapea directamente con la tabla service_details para la gestión de los detalles de los servicios

'Attributes
Public id As Double
Public id_service As Double
Public id_product As Integer
Public id_package As Integer
Public quantity As Integer
Public price As Double
Public discount As Integer
Public total As Double

Public Sub loadService(id As Double, id_service As Double, id_product As Integer, id_package As Integer, _
    quantity As Integer, price As Double, discount As Integer, total As Double)
    Me.id = id
    Me.id_service = id_service
    Me.id_product = id_product
    Me.id_package = id_package
    Me.quantity = quantity
    Me.price = price
    Me.discount = discount
    Me.total = total
End Sub

Public Sub loadServiceFromRecord(rec As Recordset)
    Call Me.loadService(rec(0), rec(1), ModFormater.getValue(rec(2), 0), ModFormater.getValue(rec(3), 0), rec(4), rec(5), rec(6), rec(7))
End Sub

'Elimina el detalle de un servicio
Public Function remove() As Boolean

On Error GoTo control

'Se solicita una conexion a la bd
Dim conBd As ADODB.Connection
Set conBd = ModConexion.getNewConection
conBd.BeginTrans

'Elimina el detalle relacionado al servicio
SQL = "DELETE from service_details where id = " & Me.id & ""
conBd.Execute (SQL)

If Me.id_product > 0 Then
    Call updateProduct(conBd)
End If

remove = True
conBd.CommitTrans
conBd.Close
Exit Function
control:
remove = False
Call ModConexion.rollBack(conBd)
End Function

'Guarda un detalle de servicio
Public Function save(conBd As ADODB.Connection) As Boolean

On Error GoTo control

    'Se verifica si el dealle ya esta persistido
    If Me.id > 0 Then GoTo success
    
    If conBd Is Nothing Then
        Set conBd = ModConexion.getNewConection
        conBd.BeginTrans
        Ap.conBdOwn = True
    Else
        Ap.conBdOwn = False
    End If
    
    If (Me.price = 0 And Me.total <> 0) Then
        Me.price = Me.total / Me.quantity
    End If
    
    SQL = "INSERT INTO service_details " & _
            "(id_service,id_product,id_package,quantity,price,discount,total) VALUES " & _
            "(" & Me.id_service & "," & IIf(Me.id_product = 0, "null", Me.id_product) & "," & IIf(Me.id_package = 0, "null", Me.id_package) & "," & Me.quantity & _
            "," & Me.price & "," & Me.discount & "," & Me.total & ");"
    conBd.Execute (SQL)

    If Me.id_product > 0 Then
        Me.quantity = Me.quantity * -1
        Call updateProduct(conBd)
    End If
    
    If Ap.conBdOwn Then
        conBd.CommitTrans
        conBd.Close
    End If
success:
    save = True
    Exit Function
control:
    save = False
    Call ModConexion.rollBack(conBd)
End Function

Private Function updateProduct(conBd As ADODB.Connection)
Dim product As CProduct
Set product = cProductStatic.findById(Me.id_product)
Call product.addOrSubstractQuantity(conBd, Me.quantity)
End Function



'Encuentra un service detail por su id
Public Function findById(id_detail As Double) As cServiceDetail
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset
Dim serviceDetail As cServiceDetail

'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient

rec.Open "select * from service_details where id=" & id_detail & "", conBd, adOpenStatic, adLockOptimistic

If (rec.RecordCount = 1) Then
    Set serviceDetail = New cServiceDetail
    Call serviceDetail.loadServiceFromRecord(rec)
End If
Set findById = serviceDetail

rec.Close
conBd.Close
End Function


