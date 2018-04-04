VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "CODEJO~1.OCX"
Begin VB.Form frmModifyService 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Modificación de servicio"
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
   Begin VB.CommandButton Command2 
      Caption         =   "Agregar persona extra"
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
      Left            =   9240
      TabIndex        =   31
      Top             =   1920
      Width           =   2415
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Agregar hora extra"
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
      Left            =   6960
      TabIndex        =   30
      Top             =   1920
      Width           =   2175
   End
   Begin VB.CommandButton cmdEndService 
      Caption         =   "Actualizar el servicio"
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
      TabIndex        =   23
      Top             =   8160
      Width           =   2895
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Información de la habitación"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   240
      TabIndex        =   13
      Top             =   120
      Width           =   5895
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Left            =   5400
         TabIndex        =   24
         Top             =   240
         Visible         =   0   'False
         Width           =   375
      End
      Begin VB.Label tIdRoom 
         BackColor       =   &H000000FF&
         Height          =   255
         Left            =   4920
         TabIndex        =   20
         Top             =   240
         Visible         =   0   'False
         Width           =   390
      End
      Begin VB.Label tTypeRoom 
         Caption         =   "Tipo de Habitación"
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
         Top             =   1200
         Width           =   3015
      End
      Begin VB.Label label 
         Caption         =   "Tipo de habitación"
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
         TabIndex        =   18
         Top             =   1200
         Width           =   1935
      End
      Begin VB.Label tFloor 
         Caption         =   "Tipo de Habitación"
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
         TabIndex        =   17
         Top             =   840
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
         TabIndex        =   16
         Top             =   840
         Width           =   1935
      End
      Begin VB.Label tNoRoom 
         Caption         =   "Tipo de Habitación"
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
         TabIndex        =   15
         Top             =   480
         Width           =   3015
      End
      Begin VB.Label label 
         Caption         =   "Número habitación"
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
         TabIndex        =   14
         Top             =   480
         Width           =   1935
      End
   End
   Begin VB.Frame Frame4 
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
      Height          =   5655
      Left            =   6360
      TabIndex        =   3
      Top             =   2400
      Width           =   5895
      Begin VB.CommandButton cmdQuitProduct 
         Caption         =   "Quitar item de la cuenta"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   2880
         TabIndex        =   25
         Top             =   5160
         Width           =   2895
      End
      Begin MSComctlLib.ListView listInvoice 
         Height          =   4710
         Left            =   120
         TabIndex        =   4
         Top             =   360
         Width           =   5655
         _ExtentX        =   9975
         _ExtentY        =   8308
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
         NumItems        =   8
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "id_detail"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "id_packge"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "id_product"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Concepto"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "Cantidad"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   5
            Text            =   "Precio"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   6
            Text            =   "Desc"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   7
            Text            =   "removable"
            Object.Width           =   2540
         EndProperty
      End
      Begin VB.OLE OLE1 
         Height          =   30
         Left            =   3720
         TabIndex        =   32
         Top             =   2520
         Width           =   135
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0C0C0&
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
      Height          =   1695
      Left            =   6360
      TabIndex        =   2
      Top             =   120
      Width           =   5895
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
         Left            =   3720
         TabIndex        =   10
         Top             =   1200
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
         Left            =   2280
         MaxLength       =   2
         TabIndex        =   9
         Top             =   1200
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
         TabIndex        =   12
         Top             =   480
         Width           =   4335
      End
      Begin VB.Label tIdProduct 
         BackColor       =   &H000000FF&
         Height          =   255
         Left            =   4800
         TabIndex        =   11
         Top             =   240
         Visible         =   0   'False
         Width           =   375
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
         Top             =   840
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
         Top             =   1200
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
         Top             =   840
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
      Caption         =   "Productos de la habitación"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6135
      Left            =   240
      TabIndex        =   0
      Top             =   1920
      Width           =   5895
      Begin VB.TextBox tFiltro 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   0
         Left            =   120
         TabIndex        =   29
         Top             =   360
         Visible         =   0   'False
         Width           =   210
      End
      Begin VB.TextBox tFiltro 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   3
         Left            =   1200
         TabIndex        =   28
         Top             =   360
         Width           =   375
      End
      Begin VB.TextBox tFiltro 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   2
         Left            =   840
         TabIndex        =   27
         Top             =   360
         Width           =   375
      End
      Begin VB.TextBox tFiltro 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   1
         Left            =   480
         TabIndex        =   26
         Top             =   360
         Width           =   375
      End
      Begin MSComctlLib.ListView listProducts 
         Height          =   5175
         Left            =   120
         TabIndex        =   1
         Top             =   720
         Width           =   5655
         _ExtentX        =   9975
         _ExtentY        =   9128
         SortKey         =   1
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
            Text            =   "Tipo"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   3
            Text            =   "Precio"
            Object.Width           =   2540
         EndProperty
      End
      Begin VB.Image iReload 
         Height          =   330
         Left            =   5400
         Picture         =   "frmModifyService.frx":0000
         Top             =   360
         Width           =   330
      End
   End
   Begin VB.Label label 
      Alignment       =   1  'Right Justify
      Caption         =   "Total"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H009F4320&
      Height          =   375
      Index           =   9
      Left            =   9240
      TabIndex        =   22
      Top             =   8160
      Width           =   975
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
      Left            =   10440
      TabIndex        =   21
      Top             =   8160
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
Attribute VB_Name = "frmModifyService"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Conexión activa de BD  para asignar un servicio
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset

'Administrador que abrio la ventana
Public manager As frmManagerRoom

'Valor total del servicio
Dim netValueService As Double

'Valor base para el filtro de productos
Dim baseSQL As String

Private Sub cmdAddProduct_Click()
If Me.tQuantity = "" Or Val(Me.tQuantity) = 0 Then
    MsgBox "La cantidad del producto no puede ser cero o estar vacía", vbInformation
    Me.tQuantity.SetFocus
    Exit Sub
End If

Dim valueProduct As Double
valueProduct = ModFormater.convertCurrencyToValue(Me.tPrice) * Me.tQuantity

Set li = Me.listInvoice.ListItems.Add(, , 0)
    li.SubItems(1) = 0
    li.SubItems(2) = Me.tIdProduct
    li.SubItems(3) = Me.tProduct
    li.SubItems(4) = Me.tQuantity
    li.SubItems(5) = ModFormater.convertValueToCurrency(valueProduct, 0)
    li.SubItems(6) = "0%"
    li.SubItems(7) = "1"
    
Call cleanProduct
Call calculateTotal
End Sub

Private Function cleanProduct()
Me.tIdProduct = ""
Me.tProduct = ""
Me.tPrice = ""
Me.tQuantity = ""
Me.tQuantity.Enabled = False
Me.cmdAddProduct.Enabled = False
End Function

Private Sub cmdEndService_Click()
On Error GoTo control:

conBd.BeginTrans

Dim item As Integer
For item = 1 To Me.listInvoice.ListItems.Count

    Dim detail As cServiceDetail
    Set detail = New cServiceDetail
    detail.loadService Me.listInvoice.ListItems(item), Me.tIdService, ModFormater.getValue(Me.listInvoice.ListItems(item).SubItems(2), 0), _
    ModFormater.getValue(Me.listInvoice.ListItems(item).SubItems(1), 0), Me.listInvoice.ListItems(item).SubItems(4), 0, _
    ModFormater.getValue(Val(Me.listInvoice.ListItems(item).SubItems(6)), 0), ModFormater.convertCurrencyToValue(Me.listInvoice.ListItems(item).SubItems(5))
    
    If Not detail.save(conBd) Then
        GoTo control
    End If
Next
conBd.CommitTrans
MsgBox "El servicio se actualizó correctamente", vbInformation
Unload Me
control:
MsgBox "No se pudo actualizar el servicio", vbCritical
Call ModConexion.rollBack(conBd)
End Sub

Private Sub cmdQuitProduct_Click()
Call removeItem
End Sub

Private Sub Form_Load()
ModSkin.applyDefaultSkin Me, Me.skinObject
Call loadBd

'Anchos de la lista
Dim widthCols(4) As Double

widthTotal = Me.listProducts.Width
widthCols(1) = widthTotal * 0 'id
widthCols(2) = widthTotal * 0.5 'concepto
widthCols(3) = widthTotal * 0.2 'cantidad
widthCols(4) = widthTotal * 0.24 'precio

ModComponents.setWidthForColumnsAndFilters tFiltro, listProducts, widthCols
Me.tFiltro(1).Visible = False

Dim ancho As Double
ancho = Me.listInvoice.Width
Me.listInvoice.ColumnHeaders(1).Width = ancho * 0
Me.listInvoice.ColumnHeaders(2).Width = ancho * 0
Me.listInvoice.ColumnHeaders(3).Width = ancho * 0
Me.listInvoice.ColumnHeaders(4).Width = ancho * 0.4
Me.listInvoice.ColumnHeaders(5).Width = ancho * 0.15
Me.listInvoice.ColumnHeaders(6).Width = ancho * 0.25
Me.listInvoice.ColumnHeaders(7).Width = ancho * 0.17
Me.listInvoice.ColumnHeaders(8).Width = ancho * 0


baseSQL = "SELECT p.*,pt.description as type FROM product p inner join product_type pt on p.code_product_type = pt.code"
baseSQL = "SELECT p.*,pt.description as type FROM product p inner join product_type pt on p.code_product_type = pt.code where p.description like '%P1%' and pt.description like '%P2%'"
End Sub

Private Sub iReload_Click()
ModComponents.cleanFilters tFiltro, -1
Call reloadProducts
End Sub

Private Sub listInvoice_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 46 Then
    Call removeItem
End If
End Sub

Private Function removeItem()
If (Me.listInvoice.SelectedItem.SubItems(7) = "0") Then
    MsgBox "El item no puede ser eliminado", vbInformation
    Exit Function
End If

'Se verifica si el detalle se encuentra persistido
If Me.listInvoice.SelectedItem > 0 Then
    Dim detailToRemove As cServiceDetail
    Set detailToRemove = cServiceDetail.findById(Me.listInvoice.SelectedItem)
    
    If detailToRemove Is Nothing Then
        MsgBox "No se pudo cargar el detalle que se desea borrar", vbCritical, "Error - Administrador"
        Exit Function
    End If

    If Not detailToRemove.remove Then Exit Function
End If

Me.listInvoice.ListItems.remove (Me.listInvoice.SelectedItem.Index)
Call calculateTotal
End Function


Private Sub listProducts_DblClick()
Me.tIdProduct = Me.listProducts.SelectedItem
Me.tProduct = Me.listProducts.SelectedItem.SubItems(1)
Me.tPrice = Me.listProducts.SelectedItem.SubItems(3)
Me.tQuantity = 1
Me.tQuantity.Enabled = True
Me.tQuantity.SelStart = 2
Me.cmdAddProduct.Enabled = True
Me.tQuantity.SetFocus
End Sub

Private Sub tDiscount_KeyPress(KeyAscii As Integer)
KeyAscii = ModComponents.SoloNumeros(KeyAscii)
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

Call reloadProducts
Call loadInfoService(tIdRoom)
Call calculateTotal
End Sub

'Carga la información dele servicio activo
Private Sub loadInfoService(idRoom As String)
rec.Open "SELECT s.id as id_detail,p.id as id_package,pr.id as id_product, case when id_product is null then p.description else pr.description end as item," & _
         "s.quantity,s.price,s.discount, (SELECT case when (p.selectable is null or p.selectable =0) then 1 else 0 end)" & _
         "as removable from service_details s left join package p on p.id=s.id_package left join product pr " & _
         "on s.id_product = pr.id where s.id_service='" & Me.tIdService & "'", conBd, adOpenStatic, adLockOptimistic
Me.listInvoice.ListItems.Clear

Dim valDiscount As Double
Dim valItem As Double

Do Until rec.EOF
    Set li = Me.listInvoice.ListItems.Add(, , rec("id_detail"))
        li.SubItems(1) = ModFormater.getValue(rec("id_package"), 0)
        li.SubItems(2) = ModFormater.getValue(rec("id_product"), 0)
        li.SubItems(3) = rec("item")
        li.SubItems(4) = rec("quantity")
        valItem = ModFormater.getValue(rec("price"), 0)
        valDiscount = ModFormater.getValue(rec("discount"), 0)
        valItem = valItem * ((100 - valDiscount) / 100)
        li.SubItems(5) = ModFormater.convertValueToCurrency(valItem, 0)
        li.SubItems(6) = valDiscount & "%"
        li.SubItems(7) = rec("removable")
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
    netValueService = netValueService + ModFormater.convertCurrencyToValue(listInvoice.ListItems(item).SubItems(5))
Next
Me.tTotal = ModFormater.convertValueToCurrency(netValueService, 0)
End Function

Private Sub tQuantity_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    Call cmdAddProduct_Click
    Exit Sub
End If

KeyAscii = ModComponents.SoloNumeros(KeyAscii)
End Sub

Private Sub tFiltro_Change(Index As Integer)
If ModComponents.cleaningFilters Then Exit Sub

SQL = Replace(baseSQL, "P1", tFiltro(2))
SQL = Replace(SQL, "P2", tFiltro(3))

Call loadProducts(SQL)
End Sub

Private Sub loadProducts(SQL As String)
rec.Open SQL, conBd, adOpenStatic, adLockOptimistic
Me.listProducts.ListItems.Clear
Do Until rec.EOF
    Set li = listProducts.ListItems.Add(, , rec("id"))
        li.SubItems(1) = rec("description")
        li.SubItems(2) = rec("type")
        li.SubItems(3) = ModFormater.convertValueToCurrency(rec("price_sale"), 0)
    rec.MoveNext
Loop
rec.Close
End Sub

Public Sub reloadProducts()
SQL = Replace(baseSQL, "P1", "")
SQL = Replace(SQL, "P2", "")
Call loadProducts(SQL)
End Sub
