VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "CODEJO~1.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.ocx"
Begin VB.Form frmReportServices 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   10485
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   16800
   LinkTopic       =   "Form1"
   ScaleHeight     =   10485
   ScaleWidth      =   16800
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
      Height          =   9735
      Left            =   120
      TabIndex        =   0
      Top             =   600
      Width           =   16575
      Begin VB.CommandButton cmdStartQueryDates 
         Caption         =   "Consultar por fechas"
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
         Left            =   8880
         TabIndex        =   22
         Top             =   240
         Width           =   2055
      End
      Begin VB.Frame picDates 
         BackColor       =   &H00B18B60&
         Caption         =   "Filtrar servicios por fechas"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2415
         Left            =   6240
         TabIndex        =   14
         Top             =   600
         Visible         =   0   'False
         Width           =   4695
         Begin VB.CommandButton cmdQuitDates 
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
            Left            =   2880
            TabIndex        =   23
            Top             =   1800
            Width           =   1215
         End
         Begin VB.CommandButton cmdQueryByDates 
            Caption         =   "Consultar servicios"
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
            Left            =   720
            TabIndex        =   21
            Top             =   1800
            Width           =   2055
         End
         Begin MSComCtl2.DTPicker tDateStart 
            Height          =   375
            Left            =   1320
            TabIndex        =   16
            Top             =   840
            Width           =   1335
            _ExtentX        =   2355
            _ExtentY        =   661
            _Version        =   393216
            Format          =   126287873
            CurrentDate     =   43142
         End
         Begin MSComCtl2.DTPicker tTimeStart 
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "HH:mm:ss"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   9226
               SubFormatType   =   4
            EndProperty
            Height          =   375
            Left            =   2760
            TabIndex        =   17
            Top             =   840
            Width           =   1455
            _ExtentX        =   2566
            _ExtentY        =   661
            _Version        =   393216
            CustomFormat    =   "HH:mm:ss"
            Format          =   126287874
            CurrentDate     =   43142
         End
         Begin MSComCtl2.DTPicker tDateEnd 
            Height          =   375
            Left            =   1320
            TabIndex        =   19
            Top             =   1320
            Width           =   1335
            _ExtentX        =   2355
            _ExtentY        =   661
            _Version        =   393216
            Format          =   126287873
            CurrentDate     =   43142
         End
         Begin MSComCtl2.DTPicker tTimeEnd 
            Height          =   375
            Left            =   2760
            TabIndex        =   20
            Top             =   1320
            Width           =   1455
            _ExtentX        =   2566
            _ExtentY        =   661
            _Version        =   393216
            Format          =   126287874
            CurrentDate     =   43142
         End
         Begin VB.Label label 
            BackStyle       =   0  'Transparent
            Caption         =   "Donde la fecha de inicio del servicio sea"
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
            TabIndex        =   24
            Top             =   360
            Width           =   4215
         End
         Begin VB.Label label 
            BackStyle       =   0  'Transparent
            Caption         =   "hasta:"
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
            Left            =   480
            TabIndex        =   18
            Top             =   1320
            Width           =   735
         End
         Begin VB.Label label 
            BackStyle       =   0  'Transparent
            Caption         =   "desde:"
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
            Left            =   480
            TabIndex        =   15
            Top             =   840
            Width           =   735
         End
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
         TabIndex        =   13
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
      Begin VB.CommandButton cmdServicesToday 
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
         Height          =   8055
         Left            =   240
         TabIndex        =   10
         Top             =   1080
         Width           =   16095
         _ExtentX        =   28390
         _ExtentY        =   14208
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
         NumItems        =   11
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
            Text            =   "Hab."
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
            Alignment       =   1
            SubItemIndex    =   5
            Text            =   "Valor"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   6
            Text            =   "Estado"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   7
            Text            =   "Inicio Servicio"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(9) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   8
            Text            =   "Fin Servicio"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(10) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   9
            Text            =   "Fin Real Servicio"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(11) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   10
            Text            =   "Diferencia"
            Object.Width           =   2540
         EndProperty
      End
      Begin VB.Label tTotalDifference 
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
         Left            =   4320
         TabIndex        =   28
         Top             =   9240
         Width           =   375
      End
      Begin VB.Label tTotalValueServices 
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
         TabIndex        =   27
         Top             =   9240
         Width           =   375
      End
      Begin VB.Label label 
         Caption         =   "servicios listados"
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
         Left            =   930
         TabIndex        =   26
         Top             =   9240
         Width           =   1725
      End
      Begin VB.Label tTotalRows 
         Alignment       =   1  'Right Justify
         Caption         =   "10000"
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
         TabIndex        =   25
         Top             =   9240
         Width           =   615
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

'SQL actual para los reportes
Dim baseSQL As String
Dim filterDates As Boolean
Dim filtersApplied As Integer

Private Sub cmdQueryByDates_Click()
Dim dateTimeStart As String
Dim dateTimeEnd As String
dateTimeStart = Format(Me.tDateStart.value, "yyyy-MM-dd") & " " & Format(Me.tTimeStart.value, "HH:mm:ss")
dateTimeEnd = Format(Me.tDateEnd.value, "yyyy-MM-dd") & " " & Format(Me.tTimeEnd.value, "HH:mm:ss")

SQL = "Select * from vw_services WHERE datetime_start_service>='" & dateTimeStart & "' and datetime_start_service<='" & dateTimeEnd & "'"
Call loadList(SQL)

filterDates = True
Me.picDates.Visible = False
End Sub

Private Sub cmdQuitDates_Click()
picDates.Visible = False
End Sub

Private Sub cmdSalir_Click()
Unload Me
End Sub

Private Sub cmdServicesToday_Click()
Dim dateTimeNow As Date
dateTimeNow = Now()

SQL = "Select * from vw_services WHERE datetime_start_service>'" & Format(dateTimeNow, "yyyy-MM-dd 00:00:00") & "' and datetime_start_service<'" & Format(dateTimeNow, "yyyy-MM-dd 23:59:59") & "'"
Call loadList(SQL)
End Sub

Private Sub cmdSinFiltros_Click()
ModComponents.cleanFilters tFiltro, -1
filterDates = 0
filtersApplied = 0
Me.listProducts.Sorted = False
Me.reloadForm
End Sub

Private Sub cmdStartQueryDates_Click()
picDates.Visible = True
End Sub

Private Sub Form_Load()
ModSkin.applyDefaultSkin Me, Me.skinObject
Call loadBd

'width for the columns
Dim widthTotal As Double
Dim widthCols(11) As Double

widthTotal = Me.listProducts.Width
widthCols(1) = widthTotal * 0 'id
widthCols(2) = widthTotal * 0.08 'user
widthCols(3) = widthTotal * 0.04 'number room
widthCols(4) = widthTotal * 0.12 'type room
widthCols(5) = widthTotal * 0.09 'paquete
widthCols(6) = widthTotal * 0.1 'valor total
widthCols(7) = widthTotal * 0.07 'estado
widthCols(8) = widthTotal * 0.13 'fecha inicio servicio
widthCols(9) = widthTotal * 0.13 'fecha fin servicio
widthCols(10) = widthTotal * 0.13 'fecha fin servicio real
widthCols(11) = widthTotal * 0.088  'diferencia en tiempos


ModComponents.setWidthForColumnsAndFilters tFiltro, listProducts, widthCols

Me.tFiltro(1).Visible = False
Me.tDateStart = Now
Me.tDateEnd = Now
Me.tTimeEnd = Now
filterDates = False
filtersApplied = 0

'Configuracion de los totalizadores
'Total valor servicios
Me.tTotalValueServices.left = Me.tFiltro(6).left
Me.tTotalValueServices.Width = Me.tFiltro(6).Width

Me.tTotalDifference.Width = widthCols(11)
Me.tTotalDifference.left = Me.listProducts.Width - Me.tTotalDifference.Width - 100

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
Dim totalValueServices As Double
Dim totalTime As Double

SQL = SQL & " order by id DESC LIMIT 1000"
rec.Open SQL, conBd, adOpenStatic, adLockOptimistic
Me.listProducts.ListItems.Clear
Do Until rec.EOF
    Set li = Me.listProducts.ListItems.Add(, , rec("id"))
        li.SubItems(1) = rec("user")
        li.SubItems(2) = rec("number")
        li.SubItems(3) = rec("type_room")
        li.SubItems(4) = rec("package")
        totalValueServices = totalValueServices + ModFormater.getValue(rec("net_value"), 0)
        li.SubItems(5) = ModFormater.convertValueToCurrency(rec("net_value"), 0)
        li.SubItems(6) = IIf(rec("status") = "ACT", "Activo", "Finalizado")
        li.SubItems(7) = ModFormater.convertDateTime(rec("datetime_start_service"))
        li.SubItems(8) = ModFormater.convertDateTime(rec("datetime_end_service"))
        li.SubItems(9) = ModFormater.convertDateTime(rec("datetime_end_real_service"))
        totalTime = totalTime + ModFormater.getValue(rec("difference"), 0)
        li.SubItems(10) = ModFormater.convertSecondsToTime(rec("difference"))
    rec.MoveNext
Loop
rec.Close

Me.tTotalValueServices = ModFormater.convertValueToCurrency(totalValueServices, 0)
Me.tTotalDifference = ModFormater.convertSecondsToTime(totalTime)
Me.tTotalRows = Me.listProducts.ListItems.count
End Sub

'Agrega los parametros al SQL para su cosulta según los criterios de filtro
Private Function queryWithParameters()

SQL = "Select * from vw_services"

'Verifica y agrega los criterios de fechas
If filterDates = True Then
    Dim dateTimeStart As String
    Dim dateTimeEnd As String
    dateTimeStart = Format(Me.tDateStart.value, "yyyy-MM-dd") & " " & Format(Me.tTimeStart.value, "HH:mm:ss")
    dateTimeEnd = Format(Me.tDateEnd.value, "yyyy-MM-dd") & " " & Format(Me.tTimeEnd.value, "HH:mm:ss")
    
    addParameter " datetime_start_service>='" & dateTimeStart & "' and datetime_start_service<='" & dateTimeEnd & "'"
End If

'Verifica y agrega los criterios de los filtros
On Error GoTo control
Dim countFilters As Integer
For countFilters = 0 To Me.tFiltro.count - 1
    If Me.tFiltro(countFilters).Text <> "" Then
        Select Case countFilters
            Case 2
                addParameter "user like '%" & tFiltro(countFilters) & "%'"
            Case 3
                addParameter "number like '%" & tFiltro(countFilters) & "%'"
            Case 4
                addParameter "type_room like '%" & tFiltro(countFilters) & "%'"
            Case 5
                addParameter "package like '%" & tFiltro(countFilters) & "%'"
            Case 6
                addParameter "net_value like '%" & tFiltro(countFilters) & "%'"
            Case 7
                addParameter "status like '%" & tFiltro(countFilters) & "%'"
        End Select
    End If
Next
Call loadList(SQL)
filtersApplied = 0
Exit Function
control:
If Err.Number = 503 Then
    Resume Next
End If
End Function

Private Function addParameter(parameter As String)
If filtersApplied = 0 Then
    SQL = SQL & " WHERE "
Else
    SQL = SQL & " AND "
End If
SQL = SQL & parameter
filtersApplied = filtersApplied + 1
End Function

Public Sub reloadForm()
Call loadList("Select * from vw_services")
End Sub

Private Sub listProducts_ColumnClick(ByVal ColumnHeader As MSComctlLib.ColumnHeader)
ModComponents.orderByColumn listProducts, ColumnHeader, Me
End Sub

Private Sub listProducts_DblClick()
Set frmDetailsService.report = Me
frmDetailsService.tIdService = Me.listProducts.SelectedItem
frmDetailsService.Show vbModal
End Sub

Private Sub tFiltro_Change(Index As Integer)
If ModComponents.cleaningFilters Then Exit Sub

'ModComponents.cleanFilters tFiltro, Index
'
'Select Case Index
'    Case 2
'        SQL = "Select * from vw_services WHERE user like '%" & tFiltro(Index) & "%'"
'    Case 3
'        SQL = "Select * from vw_services WHERE number like '%" & tFiltro(Index) & "%'"
'    Case 4
'        SQL = "Select * from vw_services WHERE type_room like '%" & tFiltro(Index) & "%'"
'    Case 5
'        SQL = "Select * from vw_services WHERE package like '%" & tFiltro(Index) & "%'"
'    Case 6
'        SQL = "Select * from vw_services WHERE net_value like '%" & tFiltro(Index) & "%'"
'    Case 7
'        SQL = "Select * from vw_services WHERE status like '%" & tFiltro(Index) & "%'"
'
'End Select
'Call loadList(SQL)

Call queryWithParameters
End Sub

