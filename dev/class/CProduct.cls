VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CProduct"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

'Clase CProduct, mapea directamente con la tabla product para la gestión de los productos

'Attributes
Public id As Integer
Public description As String
Public quantity As Integer
Public quantity_min As Integer
Public code As String
Public last_price_buy As Double
Public price_sale As Double
Public code_product_type As String

Public Sub loadProduct(id As Double, description As String, quantity As Integer, quantity_min As Integer, code As String, _
    last_price_buy As Double, price_sale As Double, code_product_type As String)
    Me.id = id
    Me.description = description
    Me.quantity = quantity
    Me.code = code
    Me.last_price_buy = last_price_buy
    Me.price_sale = price_sale
    Me.code_product_type = code_product_type
End Sub

Public Sub loadProductFromRecord(rec As Recordset)
    Call Me.loadProduct(rec(0), rec(1), rec(2), rec(3), ModFormater.getValue(rec(4), ""), rec(5), rec(6), rec(7))
End Sub

'Encuentra un service detail por su id
Public Function findById(id_product As Integer) As CProduct
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset
Dim product As CProduct

'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient

rec.Open "select * from product where id=" & id_product & "", conBd, adOpenStatic, adLockOptimistic

If (rec.RecordCount = 1) Then
    Set product = New CProduct
    Call product.loadProductFromRecord(rec)
End If
Set findById = product

rec.Close
conBd.Close
End Function

'Modifica la cantidad del producto, bien sea en aumento o disminución
Public Function addOrSubstractQuantity(conBd As ADODB.Connection, valQuantity As Integer) As Boolean
If conBd Is Nothing Then
    Set conBd = ModConexion.getNewConection
    conBdOwn = True
Else
    conBdOwn = False
End If

Dim newQuantity As Integer
newQuantity = Me.quantity + valQuantity

SQL = "UPDATE product SET quantity= " & newQuantity & " WHERE id=" & Me.id & ""
conBd.Execute (SQL)

Me.quantity = newQuantity

If conBdOwn Then conBd.Close
End Function
