VERSION 5.00
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "CODEJO~1.OCX"
Begin VB.Form frmAsignServiceRoom 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Asignar servicio para habitación"
   ClientHeight    =   6180
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   11055
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6180
   ScaleWidth      =   11055
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame2 
      Caption         =   "Paquetes disponibles"
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
      Left            =   240
      TabIndex        =   9
      Top             =   2760
      Width           =   5535
      Begin VB.TextBox tDiscount 
         Alignment       =   1  'Right Justify
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
         TabIndex        =   15
         Top             =   1320
         Width           =   615
      End
      Begin VB.ComboBox cmbTypePackage 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   2280
         TabIndex        =   10
         Top             =   360
         Width           =   3015
      End
      Begin VB.Label Label4 
         Caption         =   "%"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   2925
         TabIndex        =   19
         Top             =   1365
         Width           =   255
      End
      Begin VB.Label tTotal 
         Caption         =   "$0"
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
         TabIndex        =   18
         Top             =   1800
         Width           =   3015
      End
      Begin VB.Label Label5 
         Caption         =   "Valor total parcial"
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
         Left            =   240
         TabIndex        =   17
         Top             =   1800
         Width           =   1935
      End
      Begin VB.Label tPrice 
         Caption         =   "$0"
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
         TabIndex        =   16
         Top             =   840
         Width           =   3015
      End
      Begin VB.Label Label3 
         Caption         =   "% de descuento"
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
         Left            =   240
         TabIndex        =   14
         Top             =   1320
         Width           =   1935
      End
      Begin VB.Label Label1 
         Caption         =   "Valor del paquete"
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
         Left            =   240
         TabIndex        =   13
         Top             =   840
         Width           =   1935
      End
      Begin VB.Label Label2 
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
         Left            =   240
         TabIndex        =   11
         Top             =   360
         Width           =   1935
      End
   End
   Begin VB.PictureBox Picture1 
      Height          =   4215
      Left            =   5880
      ScaleHeight     =   4155
      ScaleWidth      =   4755
      TabIndex        =   6
      Top             =   360
      Width           =   4815
      Begin VB.Image Image1 
         Height          =   4170
         Left            =   0
         Picture         =   "frmAsignServiceRoom.frx":0000
         Stretch         =   -1  'True
         Top             =   0
         Width           =   4800
      End
   End
   Begin VB.CommandButton cmdAsignService 
      Caption         =   "Asignar servicio"
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
      Left            =   1560
      TabIndex        =   3
      Top             =   5280
      Width           =   3375
   End
   Begin VB.Frame Frame1 
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
      Height          =   2415
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   5535
      Begin VB.Label tIdRoom 
         BackColor       =   &H000000FF&
         Height          =   255
         Left            =   4920
         TabIndex        =   12
         Top             =   240
         Visible         =   0   'False
         Width           =   375
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
         TabIndex        =   8
         Top             =   1680
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
         TabIndex        =   7
         Top             =   1680
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
         TabIndex        =   5
         Top             =   1080
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
         TabIndex        =   4
         Top             =   1080
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
         TabIndex        =   2
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
         TabIndex        =   1
         Top             =   480
         Width           =   1935
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
End
Attribute VB_Name = "frmAsignServiceRoom"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Conexión activa de BD  para asignar un servicio
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset

'Informacion del paquete seleccionado
Dim idPackage As Integer
Dim timeService As Integer
Dim timeClean As Integer
Dim price As Double
Dim discount As Double
Dim total As Double
Dim dateTimeStartService As Date
Dim dateTimeEndService As Date
Dim dateTimeStartServiceFormated As String
Dim dateTimeEndServiceFormated As String
Dim dateTimeStartClean As Date
Dim dateTimeEndClean As Date
Dim dateTimeStartCleanFormated As String
Dim dateTimeEndCleanFormated As String

'Administrador que abrio la ventana
Public manager As frmManagerRoom


Private Sub cmbTypePackage_Click()

'Se busca el tipo de paquete seleccionado.
rec.Open "SELECT pr.* from package p inner join package_x_type_room pr on p.id = pr.id_package inner join room_type rt on pr.id_room_type = rt.id where p.description='" & Me.cmbTypePackage & "' and rt.description='" & Me.tTypeRoom & "'; ", conBd, adOpenStatic, adLockOptimistic
Do Until rec.EOF
    idPackage = rec("id")
    timeClean = rec("time_clean")
    timeService = rec("time_service")
    price = rec("price")
    rec.MoveNext
Loop
rec.Close

Call calculateTotals
End Sub

Private Function calculateTotals()
Me.tPrice = ModFormater.convertValueToCurrency(price, 0)
discount = Val(Me.tDiscount)
total = price * (1 - discount / 100)
Me.tTotal = ModFormater.convertValueToCurrency(total, 0)
End Function

Private Sub cmdAsignService_Click()
If (Me.cmbTypePackage = "") Then
    MsgBox "Debe seleccionar el tipo de paquete con el que quiere realizar el servicio", vbCritical, "Error"
    Exit Sub
End If

'Se busca el tipo de paquete seleccionado.
rec.Open "SELECT pr.id,pr.time_clean,pr.time_service from package p inner join package_x_type_room pr on p.id = pr.id_package inner join room_type rt on pr.id_room_type = rt.id where p.description='" & Me.cmbTypePackage & "' and rt.description='" & Me.tTypeRoom & "'; ", conBd, adOpenStatic, adLockOptimistic
Do Until rec.EOF
    idPackage = rec("id")
    timeClean = rec("time_clean")
    timeService = rec("time_service")
    rec.MoveNext
Loop
rec.Close

dateTimeStartService = Now()
dateTimeEndService = DateAdd("n", timeService, dateTimeStartService)
dateTimeStartClean = DateAdd("n", 1, dateTimeEndService)
dateTimeEndClean = DateAdd("n", timeClean, dateTimeStartClean)

dateTimeStartServiceFormated = Format(dateTimeStartService, "yyyy-MM-dd HH:mm:ss")
dateTimeEndServiceFormated = Format(dateTimeEndService, "yyyy-MM-dd HH:mm:ss")
dateTimeStartCleanFormated = Format(dateTimeStartClean, "yyyy-MM-dd HH:mm:ss")
dateTimeEndCleanFormated = Format(dateTimeEndClean, "yyyy-MM-dd HH:mm:ss")

Dim con As ADODB.Connection
Set con = ModConexion.getNewConection

SQL = "INSERT INTO service " & _
    "(id_user, id_room, id_package, time_service, time_clean, datetime_start_service, datetime_end_service, datetime_start_clean, datetime_end_clean,status) VALUES " & _
    "(" & Ap.cUserLogued.id & "," & Me.tIdRoom & "," & idPackage & "," & timeService & "," & timeClean & _
    ",'" & dateTimeStartServiceFormated & "','" & dateTimeEndServiceFormated & _
    "','" & dateTimeStartCleanFormated & "','" & dateTimeEndCleanFormated & "','ACT');"
con.Execute (SQL)

Dim idService As Integer
rec.Open "select id from service order by id desc limit 1;", conBd, adOpenStatic, adLockOptimistic
idService = rec("id")
rec.Close

SQL = "INSERT INTO service_details " & _
    "(id_service, id_package, quantity, price, discount, total) VALUES " & _
    "(" & idService & "," & idPackage & ",1," & price & ",'" & discount & "'," & total & ");"
con.Execute (SQL)

SQL = "UPDATE room SET code_status = '" & Ap.cStatusRoomStatic.BUSY.code & "' WHERE id=" & Me.tIdRoom & ""
con.Execute (SQL)


MsgBox "Se asignó el servicio correctamente"
Call manager.compleReserveRoom(Me.tIdRoom, dateTimeStartService, dateTimeEndService)
Unload Me
End Sub

Private Sub Form_Load()
ModSkin.applyDefaultSkin Me, Me.skinObject
Call loadBd
End Sub

Private Sub tDiscount_Change()
Call calculateTotals
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

Call loadPackages(Me.tTypeRoom)
End Sub

'Carga los paquetes según el tipo de habitación
Private Sub loadPackages(typeRoom As String)
Dim typePackage As String
rec.Open "Select p.description from package p inner join package_x_type_room ptr on p.id = ptr.id_package " & _
"inner join room_type rt on rt.id=ptr.id_room_type where rt.description='" & typeRoom & "'", conBd, adOpenStatic, adLockOptimistic
Me.cmbTypePackage.Clear
Do Until rec.EOF
    typePackage = rec("description").value
    If Not IsNull(typePackage) Then
        Me.cmbTypePackage.AddItem typePackage
    End If
    rec.MoveNext
Loop
rec.Close
End Sub

Private Function loadBd()
'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient
End Function


