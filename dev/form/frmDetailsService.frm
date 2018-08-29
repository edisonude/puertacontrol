VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "CODEJO~1.OCX"
Begin VB.Form frmDetailsService 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Detalles del servicio"
   ClientHeight    =   6675
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   12555
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6675
   ScaleWidth      =   12555
   StartUpPosition =   2  'CenterScreen
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
      Height          =   5415
      Left            =   5880
      TabIndex        =   23
      Top             =   240
      Width           =   6495
      Begin MSComctlLib.ListView listDetails 
         Height          =   4950
         Left            =   120
         TabIndex        =   24
         Top             =   345
         Width           =   6255
         _ExtentX        =   11033
         _ExtentY        =   8731
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
            Text            =   "Concepto"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   1
            Text            =   "Cantidad"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   2
            Text            =   "Precio"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   3
            Text            =   "Descuento"
            Object.Width           =   2540
         EndProperty
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Información del servicio"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5415
      Left            =   240
      TabIndex        =   1
      Top             =   240
      Width           =   5535
      Begin VB.Label label 
         Caption         =   "Fecha inicio limpieza"
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
         Index           =   9
         Left            =   240
         TabIndex        =   22
         Top             =   3840
         Width           =   2055
      End
      Begin VB.Label tDateStartClean 
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
         Left            =   2640
         TabIndex        =   21
         Top             =   3840
         Width           =   2655
      End
      Begin VB.Label label 
         Caption         =   "Fecha fin limpieza"
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
         Index           =   8
         Left            =   240
         TabIndex        =   20
         Top             =   4320
         Width           =   1935
      End
      Begin VB.Label tDateEndClean 
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
         Left            =   2640
         TabIndex        =   19
         Top             =   4320
         Width           =   2655
      End
      Begin VB.Label label 
         Caption         =   "Fecha real fin limpieza"
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
         Left            =   240
         TabIndex        =   18
         Top             =   4800
         Width           =   2295
      End
      Begin VB.Label tDateEndRealClean 
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
         Left            =   2640
         TabIndex        =   17
         Top             =   4800
         Width           =   2655
      End
      Begin VB.Label label 
         Caption         =   "Fecha inicio servicio"
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
         Left            =   240
         TabIndex        =   16
         Top             =   2400
         Width           =   2055
      End
      Begin VB.Label tDateStartService 
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
         Left            =   2640
         TabIndex        =   15
         Top             =   2400
         Width           =   2655
      End
      Begin VB.Label label 
         Caption         =   "Fecha fin servicio"
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
         TabIndex        =   14
         Top             =   2880
         Width           =   1935
      End
      Begin VB.Label tDateEndService 
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
         Left            =   2640
         TabIndex        =   13
         Top             =   2880
         Width           =   2655
      End
      Begin VB.Label label 
         Caption         =   "Fecha real fin servicio"
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
         TabIndex        =   12
         Top             =   3360
         Width           =   2175
      End
      Begin VB.Label tDateEndRealService 
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
         Left            =   2640
         TabIndex        =   11
         Top             =   3360
         Width           =   2655
      End
      Begin VB.Label label 
         Caption         =   "Estado"
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
         TabIndex        =   10
         Top             =   1920
         Width           =   1935
      End
      Begin VB.Label tStatus 
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
         Left            =   2640
         TabIndex        =   9
         Top             =   1920
         Width           =   2655
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
         TabIndex        =   8
         Top             =   480
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
         Left            =   2640
         TabIndex        =   7
         Top             =   480
         Width           =   2655
      End
      Begin VB.Label label 
         Caption         =   "Tipo de habitación "
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
         TabIndex        =   6
         Top             =   960
         Width           =   1935
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
         Left            =   2640
         TabIndex        =   5
         Top             =   960
         Width           =   2655
      End
      Begin VB.Label label 
         Caption         =   "Paquete"
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
         TabIndex        =   4
         Top             =   1440
         Width           =   1935
      End
      Begin VB.Label tPackage 
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
         Left            =   2640
         TabIndex        =   3
         Top             =   1440
         Width           =   2655
      End
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Left            =   4920
         TabIndex        =   2
         Top             =   240
         Visible         =   0   'False
         Width           =   375
      End
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "Salir"
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
      Left            =   1320
      TabIndex        =   0
      Top             =   5880
      Width           =   3375
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
      Left            =   10560
      TabIndex        =   26
      Top             =   5760
      Width           =   1695
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
      Index           =   10
      Left            =   9360
      TabIndex        =   25
      Top             =   5760
      Width           =   975
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
Attribute VB_Name = "frmDetailsService"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Conexión activa de BD  para asignar un servicio
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset

Public report As frmReportServices
Private Function loadBd()
'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient
End Function

Private Sub cmdExit_Click()
Unload Me
End Sub

Private Sub Form_Load()
Dim ancho As Double
ancho = Me.listDetails.Width
Me.listDetails.ColumnHeaders(1).Width = ancho * 0.39
Me.listDetails.ColumnHeaders(2).Width = ancho * 0.18
Me.listDetails.ColumnHeaders(3).Width = ancho * 0.2
Me.listDetails.ColumnHeaders(4).Width = ancho * 0.22

ModSkin.applyDefaultSkin Me, Me.skinObject
Call loadBd
End Sub

Private Sub tIdService_Change()
Call loadInfoService
Call loadServiceDetails
End Sub

Private Sub loadInfoService()
rec.Open "SELECT * FROM vw_services WHERE id='" & Me.tIdService & "'", conBd, adOpenStatic, adLockOptimistic

If rec.RecordCount > 0 Then
    Me.tNoRoom = rec("number")
    Me.tTypeRoom = rec("type_room")
    Me.tPackage = rec("package")
    Me.tStatus = rec("status")
    Me.tDateStartService = ModFormater.convertDateTime(rec("datetime_start_service"))
    Me.tDateEndService = ModFormater.convertDateTime(rec("datetime_end_service"))
    Me.tDateEndRealService = ModFormater.convertDateTime(rec("datetime_end_real_service"))
    Me.tDateStartClean = ModFormater.convertDateTime(rec("datetime_start_clean"))
    Me.tDateEndClean = ModFormater.convertDateTime(rec("datetime_end_clean"))
    Me.tDateEndRealClean = ModFormater.convertDateTime(rec("datetime_end_real_clean"))
End If
rec.Close
End Sub

'Carga la información dele servicio activo
Private Sub loadServiceDetails()
rec.Open "SELECT case when id_product is null then p.description else pr.description end as item, s.quantity,s.price,s.discount from service_details s left join package p on p.id=s.id_package left join product pr on s.id_product = pr.id where s.id_service='" & Me.tIdService & "'", conBd, adOpenStatic, adLockOptimistic
Me.listDetails.ListItems.Clear
Dim netValueService As Double
Do Until rec.EOF
    Set li = Me.listDetails.ListItems.Add(, , rec("item"))
        li.SubItems(1) = rec("quantity")
        li.SubItems(2) = ModFormater.convertValueToCurrency(rec("price"), 0)
        netValueService = netValueService + rec("price")
        li.SubItems(3) = Val(ModFormater.getValue(rec("discount"), 0)) & "%"
    rec.MoveNext
Loop
rec.Close
Me.tTotal = ModFormater.convertValueToCurrency(netValueService, 0)
End Sub
