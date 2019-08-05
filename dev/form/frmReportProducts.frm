VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "CODEJO~1.OCX"
Begin VB.Form frmReportProducts 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   10455
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   17535
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10455
   ScaleWidth      =   17535
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame frmEmpleados 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   9255
      Left            =   120
      TabIndex        =   1
      Top             =   600
      Width           =   16575
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
         Index           =   7
         Left            =   2760
         TabIndex        =   14
         Top             =   720
         Width           =   375
      End
      Begin VB.CommandButton cmdCrearProducto 
         Caption         =   "Crear producto"
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
         Left            =   240
         TabIndex        =   13
         Top             =   240
         Width           =   1815
      End
      Begin VB.CommandButton cmdSalir 
         Caption         =   "Salir"
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
         Left            =   15120
         TabIndex        =   12
         Top             =   240
         Width           =   1215
      End
      Begin VB.CommandButton cmdProductsNoStock 
         Caption         =   "Productos por debajo del stock"
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
         Left            =   9840
         TabIndex        =   11
         Top             =   240
         Width           =   3255
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
         Index           =   0
         Left            =   60
         TabIndex        =   9
         Top             =   720
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
         Index           =   1
         Left            =   600
         TabIndex        =   8
         Top             =   720
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
         Left            =   960
         TabIndex        =   7
         Top             =   720
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
         Index           =   3
         Left            =   1320
         TabIndex        =   6
         Top             =   720
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
         Index           =   4
         Left            =   1680
         TabIndex        =   5
         Top             =   720
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
         Index           =   5
         Left            =   2040
         TabIndex        =   4
         Top             =   720
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
         Index           =   6
         Left            =   2400
         TabIndex        =   3
         Top             =   720
         Width           =   375
      End
      Begin VB.CommandButton cmdSinFiltros 
         Caption         =   "Limpiar filtros"
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
         Left            =   13200
         TabIndex        =   2
         Top             =   240
         Width           =   1815
      End
      Begin MSComctlLib.ListView listProducts 
         Height          =   7455
         Left            =   240
         TabIndex        =   10
         Top             =   1080
         Width           =   16095
         _ExtentX        =   28390
         _ExtentY        =   13150
         View            =   3
         LabelEdit       =   1
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
         NumItems        =   7
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Id"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Producto"
            Object.Width           =   5644
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Tipo"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   3
            Text            =   "Cantidad"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   4
            Text            =   "Cant. Min"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   5
            Text            =   "Precio Compra"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   6
            Text            =   "Precio Venta"
            Object.Width           =   2540
         EndProperty
      End
      Begin VB.Label tUtilidadLabel 
         Alignment       =   1  'Right Justify
         BackColor       =   &H0080C0FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Utilidad"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000C000&
         Height          =   375
         Left            =   3480
         TabIndex        =   21
         Top             =   8760
         Width           =   855
      End
      Begin VB.Label tUtilidad 
         Alignment       =   1  'Right Justify
         Caption         =   "900"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000C000&
         Height          =   375
         Left            =   4560
         TabIndex        =   20
         Top             =   8760
         Width           =   375
      End
      Begin VB.Label tTotalQuantity 
         Alignment       =   1  'Right Justify
         Caption         =   "900"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H009F4320&
         Height          =   375
         Left            =   4560
         TabIndex        =   19
         Top             =   8520
         Width           =   375
      End
      Begin VB.Label tTotalSale 
         Alignment       =   1  'Right Justify
         Caption         =   "900"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H009F4320&
         Height          =   375
         Left            =   3960
         TabIndex        =   18
         Top             =   8520
         Width           =   375
      End
      Begin VB.Label tTotalRows 
         Alignment       =   1  'Right Justify
         Caption         =   "900"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H009F4320&
         Height          =   375
         Left            =   240
         TabIndex        =   17
         Top             =   8520
         Width           =   375
      End
      Begin VB.Label label 
         Caption         =   "productos listados"
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
         Left            =   690
         TabIndex        =   16
         Top             =   8520
         Width           =   1845
      End
      Begin VB.Label tTotalBuy 
         Alignment       =   1  'Right Justify
         Caption         =   "900"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H009F4320&
         Height          =   375
         Left            =   3360
         TabIndex        =   15
         Top             =   8520
         Width           =   375
      End
   End
   Begin XtremeSkinFramework.SkinFramework skinObject 
      Left            =   0
      Top             =   0
      _Version        =   851970
      _ExtentX        =   635
      _ExtentY        =   635
      _StockProps     =   0
   End
   Begin VB.Label titulo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Reporte de productos"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00985F00&
      Height          =   330
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2460
   End
End
Attribute VB_Name = "frmReportProducts"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Conexión activa de BD  para asignar un servicio
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset

Public parent As frmMenu
Dim seleccion As Integer

Private Sub cmdCrearProducto_Click()
Set frmProduct.report = Me
frmProduct.Show vbModal
End Sub

Private Sub cmdProductsNoStock_Click()
SQL = "Select p.*,pt.description as type from product p inner join product_type pt on p.code_product_type = pt.code " & _
    "WHERE quantity<quantity_min order by p.description ASC"

Call loadList(SQL)
End Sub

Private Sub cmdSalir_Click()
Unload Me
End Sub

Private Sub cmdSinFiltros_Click()
ModComponents.cleanFilters tFiltro, -1
Me.reloadForm
End Sub

Private Sub Form_Load()
ModSkin.applyDefaultSkin Me, Me.skinObject
Call loadBd


'width for the columns
Dim widthTotal As Double
Dim widthCols(7) As Double

widthTotal = Me.listProducts.Width
widthCols(1) = widthTotal * 0 'id
widthCols(2) = widthTotal * 0.5 'producto
widthCols(3) = widthTotal * 0.1 'tipo
widthCols(4) = widthTotal * 0.09 'cantidad
widthCols(5) = widthTotal * 0.09 'cantidad min
widthCols(6) = widthTotal * 0.1 'precio compra
widthCols(7) = widthTotal * 0.1 'precio venta

ModComponents.setWidthForColumnsAndFilters tFiltro, listProducts, widthCols

Me.tFiltro(1).Visible = False
Me.tFiltro(6).Visible = False
Me.tFiltro(7).Visible = False

'Configuracion de los totalizadores
'Total valor servicios
Me.tTotalBuy.left = Me.tFiltro(6).left
Me.tTotalBuy.Width = Me.tFiltro(6).Width

Me.tTotalSale.left = Me.tFiltro(7).left
Me.tTotalSale.Width = Me.tFiltro(7).Width

Me.tUtilidadLabel.left = Me.tFiltro(6).left
Me.tUtilidadLabel.Width = Me.tFiltro(6).Width
Me.tUtilidad.left = Me.tFiltro(7).left
Me.tUtilidad.Width = Me.tFiltro(7).Width

Me.tTotalQuantity.left = Me.tFiltro(4).left
Me.tTotalQuantity.Width = Me.tFiltro(4).Width

'Iniciar
Me.reloadForm
seleccion = 0
End Sub

Private Function loadBd()
'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient
End Function

Private Sub loadList(SQL As String)
Dim totalBuy As Double
Dim totalSale As Double
Dim totalQuantity As Double

rec.Open SQL, conBd, adOpenStatic, adLockOptimistic
Me.listProducts.ListItems.Clear
Do Until rec.EOF
    Set li = Me.listProducts.ListItems.Add(, , rec("id"))
        li.SubItems(1) = rec("description")
        li.SubItems(2) = rec("type")
        li.SubItems(3) = rec("quantity")
        li.SubItems(4) = rec("quantity_min")
        totalBuy = totalBuy + ModFormater.getValue(rec("last_price_buy"), 0)
        totalSale = totalSale + ModFormater.getValue(rec("price_sale"), 0)
        totalQuantity = totalQuantity + ModFormater.getValue(rec("quantity"), 0)
        li.SubItems(5) = ModFormater.convertValueToCurrency(rec("last_price_buy"), 0)
        li.SubItems(6) = ModFormater.convertValueToCurrency(rec("price_sale"), 0)
    rec.MoveNext
Loop
rec.Close

Me.tTotalBuy = ModFormater.convertValueToCurrency(totalBuy, 0)
Me.tTotalSale = ModFormater.convertValueToCurrency(totalSale, 0)
Me.tUtilidad = ModFormater.convertValueToCurrency((totalSale - totalBuy), 0)
Me.tTotalQuantity = totalQuantity
Me.tTotalRows = Me.listProducts.ListItems.Count
End Sub

Public Sub reloadForm()
Call loadList("Select p.*,pt.description as type from product p inner join product_type pt on p.code_product_type = pt.code order by p.description ASC")
End Sub


Private Sub listProducts_DblClick()
Set frmProduct.report = Me
frmProduct.tIdProduct = Me.listProducts.SelectedItem
frmProduct.Show vbModal
End Sub

Private Sub tFiltro_Change(Index As Integer)
If ModComponents.cleaningFilters Then Exit Sub

ModComponents.cleanFilters tFiltro, Index

Select Case Index
    Case 2
        SQL = "Select p.*,pt.description as type from product p inner join product_type pt on p.code_product_type = pt.code WHERE p.description like '%" & tFiltro(Index) & "%'"
    Case 3
        SQL = "Select p.*,pt.description as type from product p inner join product_type pt on p.code_product_type = pt.code WHERE pt.description like '%" & tFiltro(Index) & "%'"
    Case 4
        SQL = "Select p.*,pt.description as type from product p inner join product_type pt on p.code_product_type = pt.code WHERE p.quantity like '%" & tFiltro(Index) & "%'"
    Case 5
        SQL = "Select p.*,pt.description as type from product p inner join product_type pt on p.code_product_type = pt.code WHERE p.quantity_min like '%" & tFiltro(Index) & "%'"
    Case 6
        SQL = "Select p.*,pt.description as type from product p inner join product_type pt on p.code_product_type = pt.code WHERE p.last_price_buy like '%" & tFiltro(Index) & "%'"
End Select
Call loadList(SQL & " order by p.description ASC")
End Sub

Public Sub refreshExternal()
ModComponents.cleanFilters tFiltro, -1
Me.reloadForm
End Sub

