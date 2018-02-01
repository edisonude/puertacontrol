VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "CODEJO~1.OCX"
Begin VB.Form frmFreeRoom 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Finalizaci�n de servicio"
   ClientHeight    =   8820
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   12375
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8820
   ScaleWidth      =   12375
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdEndService 
      Caption         =   "Finalizar el servicio"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1920
      TabIndex        =   27
      Top             =   8160
      Width           =   2895
   End
   Begin VB.Frame Frame1 
      Caption         =   "Informaci�n de la habitaci�n"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2055
      Left            =   240
      TabIndex        =   17
      Top             =   120
      Width           =   5895
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Left            =   5400
         TabIndex        =   28
         Top             =   240
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.Label tIdRoom 
         BackColor       =   &H000000FF&
         Height          =   255
         Left            =   4920
         TabIndex        =   24
         Top             =   240
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.Label tTypeRoom 
         Caption         =   "Tipo de Habitaci�n"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   23
         Top             =   1440
         Width           =   3015
      End
      Begin VB.Label label 
         Caption         =   "Tipo de habitaci�n"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   2
         Left            =   240
         TabIndex        =   22
         Top             =   1440
         Width           =   1935
      End
      Begin VB.Label tFloor 
         Caption         =   "Tipo de Habitaci�n"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   21
         Top             =   960
         Width           =   3015
      End
      Begin VB.Label label 
         Caption         =   "Piso"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   0
         Left            =   240
         TabIndex        =   20
         Top             =   960
         Width           =   1935
      End
      Begin VB.Label tNoRoom 
         Caption         =   "Tipo de Habitaci�n"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   19
         Top             =   480
         Width           =   3015
      End
      Begin VB.Label label 
         Caption         =   "N�mero habitaci�n"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   1
         Left            =   240
         TabIndex        =   18
         Top             =   480
         Width           =   1935
      End
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Cuenta del servicio"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4215
      Left            =   6360
      TabIndex        =   3
      Top             =   2880
      Width           =   5895
      Begin MSComctlLib.ListView listInvoice 
         Height          =   3615
         Left            =   120
         TabIndex        =   4
         Top             =   360
         Width           =   5655
         _ExtentX        =   9975
         _ExtentY        =   6376
         View            =   3
         LabelEdit       =   1
         Sorted          =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   0   'False
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   5
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Id"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Concepto"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Cantidad"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Precio"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "Delete"
            Object.Width           =   2540
         EndProperty
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Agregar producto a la cuenta"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2535
      Left            =   6360
      TabIndex        =   2
      Top             =   240
      Width           =   5895
      Begin VB.CommandButton cmdQuitProduct 
         Caption         =   "Quitar producto"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3120
         TabIndex        =   14
         Top             =   2040
         Width           =   2055
      End
      Begin VB.CommandButton cmdAddProduct 
         Caption         =   "Agregar producto"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   960
         TabIndex        =   13
         Top             =   2040
         Width           =   2055
      End
      Begin VB.TextBox tQuantity 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   2400
         MaxLength       =   2
         TabIndex        =   9
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label tProduct 
         Caption         =   "Seleccione producto"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1320
         TabIndex        =   16
         Top             =   480
         Width           =   4335
      End
      Begin VB.Label tIdProduct 
         BackColor       =   &H000000FF&
         Height          =   255
         Left            =   4800
         TabIndex        =   15
         Top             =   240
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.Label label 
         Caption         =   "disponibles"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   7
         Left            =   3960
         TabIndex        =   12
         Top             =   1440
         Width           =   1215
      End
      Begin VB.Label tQuantityInRoom 
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3600
         TabIndex        =   11
         Top             =   1440
         Width           =   375
      End
      Begin VB.Label label 
         Caption         =   "de"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   6
         Left            =   3240
         TabIndex        =   10
         Top             =   1440
         Width           =   255
      End
      Begin VB.Label tPrice 
         Caption         =   "$ 0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1320
         TabIndex        =   8
         Top             =   960
         Width           =   2295
      End
      Begin VB.Label label 
         Caption         =   "Cantidad consumida"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   5
         Left            =   240
         TabIndex        =   7
         Top             =   1440
         Width           =   2055
      End
      Begin VB.Label label 
         Caption         =   "Precio"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   4
         Left            =   240
         TabIndex        =   6
         Top             =   960
         Width           =   975
      End
      Begin VB.Label label 
         Caption         =   "Producto"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   3
         Left            =   240
         TabIndex        =   5
         Top             =   480
         Width           =   975
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Productos de la habitaci�n"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5655
      Left            =   240
      TabIndex        =   0
      Top             =   2280
      Width           =   5895
      Begin MSComctlLib.ListView listProducts 
         Height          =   5175
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   5655
         _ExtentX        =   9975
         _ExtentY        =   9128
         SortKey         =   2
         View            =   3
         LabelEdit       =   1
         Sorted          =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   0   'False
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   4
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Id"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Producto"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Cantidad"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Precio"
            Object.Width           =   2540
         EndProperty
      End
   End
   Begin VB.Label label 
      Alignment       =   1  'Right Justify
      Caption         =   "Total:"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   9
      Left            =   7560
      TabIndex        =   26
      Top             =   7320
      Width           =   2055
   End
   Begin VB.Label tTotal 
      Alignment       =   1  'Right Justify
      Caption         =   "$ 100.000"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9840
      TabIndex        =   25
      Top             =   7320
      Width           =   1695
   End
   Begin XtremeSkinFramework.SkinFramework skinObject 
      Left            =   0
      Top             =   0
      _Version        =   851970
      _ExtentX        =   635
      _ExtentY        =   635
      _StockProps     =   0
   End
End
Attribute VB_Name = "frmFreeRoom"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Conexi�n activa de BD  para asignar un servicio
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset

'Administrador que abrio la ventana
Public manager As frmManagerRoom

'Valor total del servicio
Dim netValueService As Double

Private Sub cmdAddProduct_Click()
If Me.tQuantity = "" Or Val(Me.tQuantity) = 0 Then
    MsgBox "La cantidad del producto no puede ser cero o estar vac�a", vbInformation
    Me.tQuantity.SetFocus
    Exit Sub
End If

If Val(Me.tQuantity) > Val(Me.tQuantityInRoom) Then
    MsgBox "La cantidad del producto supera la cantidad disponible en la habitaci�n", vbInformation
    Me.tQuantity = ""
    Me.tQuantity.SetFocus
    Exit Sub
End If

Set li = Me.listInvoice.ListItems.Add(, , Me.tIdProduct)
        li.SubItems(1) = Me.tProduct
        li.SubItems(2) = Me.tQuantity
        li.SubItems(3) = Val(Me.tPrice) * Me.tQuantity

Call cmdQuitProduct_Click
Call calculateTotal
End Sub

Private Sub cmdEndService_Click()
Dim item As Integer
For item = 1 To Me.listInvoice.ListItems.Count

If Me.listInvoice.ListItems(item).SubItems(4) = "0" Then
    SQL = "INSERT INTO service_details " & _
        "(id_service, id_package, quantity, price) VALUES " & _
        "(" & Me.tIdService & "," & Me.listInvoice.ListItems(item) & "," & Me.listInvoice.ListItems(item).SubItems(2) & "," & Me.listInvoice.ListItems(item).SubItems(3) & ");"
        
    conBd.Execute (SQL)
Else
    SQL = "INSERT INTO service_details " & _
        "(id_service, id_product, quantity, price) VALUES " & _
        "(" & Me.tIdService & "," & Me.listInvoice.ListItems(item) & "," & Me.listInvoice.ListItems(item).SubItems(2) & "," & Me.listInvoice.ListItems(item).SubItems(3) & ");"
    conBd.Execute (SQL)
    
    SQL = "UPDATE product SET quantity=quantity-" & Me.listInvoice.ListItems(item).SubItems(2) & " where id= '" & Me.listInvoice.ListItems(item) & "'"
    conBd.Execute (SQL)
End If
Next

Dim dateTimeEndRealService  As Date
Dim dateTimeEndRealServiceFormated As String
dateTimeEndRealService = Now()
dateTimeEndRealServiceFormated = Format(dateTimeEndRealService, "yyyy-MM-dd HH:mm:ss")

SQL = "UPDATE service SET datetime_end_real_service= '" & dateTimeEndRealServiceFormated & "', net_value=" & netValueService & " WHERE id='" & Me.tIdService & "'"
conBd.Execute (SQL)

SQL = "UPDATE room SET code_status = '" & Ap.cStatusRoomStatic.CLEAN.code & "' WHERE id=" & Me.tIdRoom & ""
conBd.Execute (SQL)

MsgBox "El servicio finaliz� correctamente", vbInformation
Unload Me
End Sub

Private Sub cmdQuitProduct_Click()
Me.tIdProduct = ""
Me.tProduct = ""
Me.tQuantityInRoom = "0"
Me.tPrice = ""
Me.tQuantity = ""
Me.tQuantity.Enabled = False
Me.cmdAddProduct.Enabled = False
End Sub

Private Sub Form_Load()
ModSkin.applyDefaultSkin Me, Me.skinObject
Call loadBd

'Anchos de la lista
Dim ancho As Double

ancho = Me.listProducts.Width
Me.listProducts.ColumnHeaders(1).Width = ancho * 0
Me.listProducts.ColumnHeaders(2).Width = ancho * 0.5
Me.listProducts.ColumnHeaders(3).Width = ancho * 0.2
Me.listProducts.ColumnHeaders(4).Width = ancho * 0.24

ancho = Me.listInvoice.Width
Me.listInvoice.ColumnHeaders(1).Width = ancho * 0
Me.listInvoice.ColumnHeaders(2).Width = ancho * 0.5
Me.listInvoice.ColumnHeaders(3).Width = ancho * 0.21
Me.listInvoice.ColumnHeaders(4).Width = ancho * 0.28
Me.listInvoice.ColumnHeaders(5).Width = ancho * 0
End Sub

Private Sub listInvoice_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 46 Then
    If (Me.listInvoice.SelectedItem.SubItems(4) = "0") Then
        MsgBox "El item del servicio de la habitaci�n no puede ser eliminado", vbInformation
        Exit Sub
    End If
    Me.listInvoice.ListItems.Remove (Me.listInvoice.SelectedItem.Index)
    Call calculateTotal
End If
End Sub

Private Sub listProducts_DblClick()
Me.tIdProduct = Me.listProducts.SelectedItem
Me.tProduct = Me.listProducts.SelectedItem.SubItems(1)
Me.tQuantityInRoom = Me.listProducts.SelectedItem.SubItems(2)
Me.tPrice = Me.listProducts.SelectedItem.SubItems(3)
Me.tQuantity.Enabled = True
Me.cmdAddProduct.Enabled = True
Me.tQuantity.SetFocus
End Sub

Private Sub tNoRoom_Change()
Call loadInfoRoom(tNoRoom)
End Sub

Private Sub loadInfoRoom(noRoom)
rec.Open "SELECT r.*,rt.description as type from room r inner join room_type rt on r.id_type=rt.id " & _
    "where number=" & noRoom & "", conBd, adOpenStatic, adLockOptimistic
Do Until rec.EOF
    Me.tIdRoom = rec("id")
    Me.tFloor = rec("floor")
    Me.tTypeRoom = rec("type")
    rec.MoveNext
Loop
rec.Close

Call loadProducts(Me.tTypeRoom)
Call loadInfoService(tIdRoom)
Call calculateTotal
End Sub

'Carga los productos para el tipo de habitaci�n
Private Sub loadProducts(typeRoom As String)
Dim typePackage As String
rec.Open "Select * from vw_products_x_room WHERE type_room ='" & typeRoom & "'", conBd, adOpenStatic, adLockOptimistic
Me.listProducts.ListItems.Clear
Do Until rec.EOF
    Set li = listProducts.ListItems.Add(, , rec("id_product"))
        li.SubItems(1) = rec("product")
        li.SubItems(2) = rec("quantity")
        li.SubItems(3) = rec("price_sale")
    rec.MoveNext
Loop
rec.Close
End Sub

'Carga la informaci�n dele servicio activo
Private Sub loadInfoService(idRoom As String)
Dim typePackage As String
rec.Open "SELECT s.id,p.id as id_package,p.description as package,  pr.price FROM service s inner join package_x_type_room pr ON s.id_package = pr.id inner join package p on pr.id_package=p.id where s.status='ACT' and s.id_room='" & idRoom & "';", conBd, adOpenStatic, adLockOptimistic
Me.listInvoice.ListItems.Clear
Do Until rec.EOF
    Set li = Me.listInvoice.ListItems.Add(, , rec("id_package"))
        li.SubItems(1) = rec("package")
        li.SubItems(2) = "1"
        li.SubItems(3) = rec("price")
        li.SubItems(4) = "0"
        Me.tIdService = rec("id")
    rec.MoveNext
Loop
rec.Close
End Sub

Private Function loadBd()
'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient
End Function

Private Function calculateTotal()
Dim item As Integer
netValueService = 0
For item = 1 To Me.listInvoice.ListItems.Count
    netValueService = netValueService + Me.listInvoice.ListItems(item).SubItems(3)
Next
Me.tTotal = ModFormater.convertValueToCurrency(netValueService, 0)
End Function

Private Sub tQuantity_KeyPress(KeyAscii As Integer)
KeyAscii = ModComponents.SoloNumeros(KeyAscii)
End Sub

Private Sub tQuantity_LostFocus()
If Val(Me.tQuantity) > Val(Me.tQuantityInRoom) Then
    MsgBox "La cantidad del producto supera la cantidad disponible en la habitaci�n", vbInformation
    Me.tQuantity = ""
    Me.tQuantity.SetFocus
End If
End Sub
