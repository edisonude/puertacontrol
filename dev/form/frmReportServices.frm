VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "CODEJO~1.OCX"
Begin VB.Form frmReportServices 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   9240
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   17295
   LinkTopic       =   "Form1"
   ScaleHeight     =   9240
   ScaleWidth      =   17295
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
      Height          =   8775
      Left            =   120
      TabIndex        =   0
      Top             =   600
      Width           =   16575
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
         TabIndex        =   19
         Top             =   240
         Width           =   1215
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
         Index           =   13
         Left            =   4920
         TabIndex        =   18
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
         Index           =   12
         Left            =   4560
         TabIndex        =   17
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
         Index           =   11
         Left            =   4200
         TabIndex        =   16
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
         Index           =   10
         Left            =   3840
         TabIndex        =   15
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
         Index           =   9
         Left            =   3480
         TabIndex        =   14
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
         Index           =   8
         Left            =   3120
         TabIndex        =   13
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
         Index           =   7
         Left            =   2760
         TabIndex        =   12
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
         TabIndex        =   9
         Top             =   240
         Width           =   1815
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
         Index           =   5
         Left            =   2040
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
         Index           =   4
         Left            =   1680
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
         Index           =   3
         Left            =   1320
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
         Index           =   2
         Left            =   960
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
         Index           =   1
         Left            =   600
         TabIndex        =   3
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
         Index           =   0
         Left            =   60
         TabIndex        =   2
         Top             =   720
         Visible         =   0   'False
         Width           =   210
      End
      Begin VB.CommandButton cmdProductsNoStock 
         Caption         =   "Servicios de hoy"
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
         Left            =   11040
         TabIndex        =   1
         Top             =   240
         Width           =   2055
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
         NumItems        =   13
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Id"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Usuario"
            Object.Width           =   5644
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Habitación"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Tipo"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "Paquete"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Text            =   "Valor"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   6
            Text            =   "Estado"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   7
            Text            =   "Inicio Servicio"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(9) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   8
            Text            =   "Fin Servicio"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(10) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   9
            Text            =   "Fin Real Servicio"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(11) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   10
            Text            =   "Inicio Limpieza"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(12) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   11
            Text            =   "Fin Limpieza"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(13) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   12
            Text            =   "Fin real limpieza"
            Object.Width           =   2540
         EndProperty
      End
   End
   Begin VB.Label titulo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Reporte de servicios"
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
      TabIndex        =   11
      Top             =   120
      Width           =   2325
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
Attribute VB_Name = "frmReportServices"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Conexión activa de BD  para asignar un servicio
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset

Public parent As frmMenu
Dim seleccion As Integer

Private Sub cmdProductsNoStock_Click()
Dim dateTimeNow As Date
dateTimeNow = Now()

SQL = "Select * from vw_services WHERE datetime_start_service>'" & Format(dateTimeNow, "yyyy-MM-dd 00:00:00") & "' and datetime_start_service<'" & Format(dateTimeNow, "yyyy-MM-dd 23:59:59") & "' order by number ASC"
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
Dim widthCols(13) As Double

widthTotal = Me.listProducts.Width
widthCols(1) = widthTotal * 0 'id
widthCols(2) = widthTotal * 0.08 'user
widthCols(3) = widthTotal * 0.08 'number room
widthCols(4) = widthTotal * 0.12 'type room
widthCols(5) = widthTotal * 0.1 'paquete
widthCols(6) = widthTotal * 0.1 'valor total
widthCols(7) = widthTotal * 0.07 'estado
widthCols(8) = widthTotal * 0.16 'fecha inicio servicio
widthCols(9) = widthTotal * 0.16 'fecha fin servicio
widthCols(10) = widthTotal * 0.16 'fecha fin servicio real
widthCols(11) = widthTotal * 0.16 'fecha inicio limpieza
widthCols(12) = widthTotal * 0.16 'fecha fin limpieza
widthCols(13) = widthTotal * 0.16 'fecha fin limpieza real


ModComponents.setWidthForColumnsAndFilters tFiltro, listProducts, widthCols

Me.tFiltro(1).Visible = False
Me.tFiltro(10).Visible = False
Me.tFiltro(11).Visible = False
Me.tFiltro(12).Visible = False
Me.tFiltro(13).Visible = False

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
rec.Open SQL, conBd, adOpenStatic, adLockOptimistic
Me.listProducts.ListItems.Clear
Do Until rec.EOF
    Set li = Me.listProducts.ListItems.Add(, , rec("id"))
        li.SubItems(1) = rec("user")
        li.SubItems(2) = rec("number")
        li.SubItems(3) = rec("type_room")
        li.SubItems(4) = rec("package")
        li.SubItems(5) = ModFormater.convertValueToCurrency(rec("net_value"), 0)
        li.SubItems(6) = IIf(rec("status") = "ACT", "Activo", "Finalizado")
        li.SubItems(7) = rec("datetime_start_service")
        li.SubItems(8) = rec("datetime_end_service")
        li.SubItems(9) = ModFormater.getValue(rec("datetime_end_real_service"), "")
        li.SubItems(10) = rec("datetime_start_clean")
        li.SubItems(11) = rec("datetime_end_clean")
        li.SubItems(12) = ModFormater.getValue(rec("datetime_end_real_clean"), "")
    rec.MoveNext
Loop
rec.Close
End Sub

Public Sub reloadForm()
Call loadList("Select * from vw_services order by number ASC")
End Sub

Private Sub tFiltro_Change(Index As Integer)
If ModComponents.cleaningFilters Then Exit Sub

ModComponents.cleanFilters tFiltro, Index

Select Case Index
    Case 2
        SQL = "Select * from vw_services WHERE user like '%" & tFiltro(Index) & "%'"
    Case 3
        SQL = "Select * from vw_services WHERE number like '%" & tFiltro(Index) & "%'"
    Case 4
        SQL = "Select * from vw_services WHERE type_room like '%" & tFiltro(Index) & "%'"
    Case 5
        SQL = "Select * from vw_services WHERE package like '%" & tFiltro(Index) & "%'"
    Case 6
        SQL = "Select * from vw_services WHERE net_value like '%" & tFiltro(Index) & "%'"
    Case 7
        SQL = "Select * from vw_services WHERE status like '%" & tFiltro(Index) & "%'"
    Case 8
        SQL = "Select * from vw_services WHERE datetime_start_service like '%" & tFiltro(Index) & "%'"
    Case 9
        SQL = "Select * from vw_services WHERE datetime_end_service like '%" & tFiltro(Index) & "%'"

End Select
Call loadList(SQL & " order by number ASC")
End Sub

