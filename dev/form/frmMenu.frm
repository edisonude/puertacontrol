VERSION 5.00
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "CODEJO~1.OCX"
Begin VB.Form frmMenu 
   Caption         =   "Puerta Control"
   ClientHeight    =   9450
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   13305
   LinkTopic       =   "Form1"
   ScaleHeight     =   9450
   ScaleWidth      =   13305
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Timer timeReload 
      Interval        =   5000
      Left            =   2760
      Top             =   2160
   End
   Begin VB.Frame frmOptionsAdmin 
      Caption         =   "Adiministración"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2175
      Left            =   120
      TabIndex        =   6
      Top             =   5445
      Visible         =   0   'False
      Width           =   3135
      Begin VB.Label lRoomPrices 
         Caption         =   "Precio Habitaciones"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H009F4320&
         Height          =   375
         Left            =   360
         TabIndex        =   14
         Top             =   1440
         Width           =   2610
      End
      Begin VB.Image Image5 
         Height          =   210
         Index           =   3
         Left            =   120
         Picture         =   "frmMenu.frx":0000
         Top             =   1560
         Width           =   150
      End
      Begin VB.Image Image5 
         Height          =   210
         Index           =   1
         Left            =   120
         Picture         =   "frmMenu.frx":0202
         Top             =   1080
         Width           =   150
      End
      Begin VB.Label lReportServices 
         Caption         =   "Reporte de servicios"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H009F4320&
         Height          =   375
         Left            =   360
         TabIndex        =   8
         Top             =   960
         Width           =   2610
      End
      Begin VB.Image Image5 
         Height          =   210
         Index           =   0
         Left            =   120
         Picture         =   "frmMenu.frx":0404
         Top             =   525
         Width           =   150
      End
      Begin VB.Label Label1 
         Caption         =   "Reporte de productos"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H009F4320&
         Height          =   375
         Left            =   330
         TabIndex        =   7
         Top             =   450
         Width           =   2610
      End
   End
   Begin VB.Timer timeProcessor 
      Interval        =   1000
      Left            =   2280
      Top             =   2160
   End
   Begin VB.Frame Frame1 
      Caption         =   "Resumen"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2895
      Left            =   120
      TabIndex        =   1
      Top             =   2400
      Width           =   3135
      Begin VB.Label actControlCash 
         Caption         =   "Control de caja"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H009F4320&
         Height          =   375
         Left            =   315
         TabIndex        =   13
         Top             =   2280
         Width           =   2610
      End
      Begin VB.Image Image5 
         Height          =   210
         Index           =   2
         Left            =   120
         Picture         =   "frmMenu.frx":0606
         Top             =   2355
         Width           =   150
      End
      Begin VB.Line Line2 
         X1              =   240
         X2              =   2880
         Y1              =   2160
         Y2              =   2160
      End
      Begin VB.Label label 
         Alignment       =   2  'Center
         Caption         =   "Habitaciones disponibles"
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
         Left            =   120
         TabIndex        =   5
         Top             =   1320
         Width           =   2895
      End
      Begin VB.Label tRoomsFree 
         Alignment       =   2  'Center
         Caption         =   "Tipo de Habitación"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H009F4320&
         Height          =   375
         Left            =   120
         TabIndex        =   4
         Top             =   1680
         Width           =   2895
      End
      Begin VB.Label label 
         Alignment       =   2  'Center
         Caption         =   "Habitaciones en servicio"
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
         Left            =   120
         TabIndex        =   3
         Top             =   480
         Width           =   2895
      End
      Begin VB.Label tRoomsInService 
         Alignment       =   2  'Center
         Caption         =   "Tipo de Habitación"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H009F4320&
         Height          =   375
         Left            =   120
         TabIndex        =   2
         Top             =   840
         Width           =   2895
      End
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   3360
      Top             =   0
   End
   Begin VB.Label lVersion 
      Alignment       =   1  'Right Justify
      Caption         =   "2.0"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00CD7C10&
      Height          =   255
      Left            =   2745
      TabIndex        =   12
      Top             =   1215
      Width           =   375
   End
   Begin VB.Label cmdChangePwd 
      Caption         =   "Cambiar contraseña"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00CD7C10&
      Height          =   375
      Left            =   1200
      TabIndex        =   11
      Top             =   1800
      Width           =   2055
   End
   Begin VB.Label tUser 
      Caption         =   "Usuario:"
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
      Left            =   1200
      TabIndex        =   10
      Top             =   1440
      Width           =   2055
   End
   Begin VB.Label label 
      Alignment       =   2  'Center
      Caption         =   "Usuario:"
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
      TabIndex        =   9
      Top             =   1440
      Width           =   855
   End
   Begin VB.Label lReferencia 
      BackColor       =   &H00404040&
      Caption         =   "Label1"
      Height          =   495
      Left            =   4440
      TabIndex        =   0
      Top             =   1320
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00B18B60&
      X1              =   240
      X2              =   3120
      Y1              =   1320
      Y2              =   1320
   End
   Begin VB.Image Image4 
      Height          =   630
      Left            =   240
      Picture         =   "frmMenu.frx":0808
      Top             =   4080
      Width           =   2520
   End
   Begin VB.Image Image3 
      Height          =   630
      Left            =   240
      Picture         =   "frmMenu.frx":5AFA
      Top             =   3120
      Width           =   2535
   End
   Begin VB.Image Image2 
      Height          =   615
      Left            =   240
      Picture         =   "frmMenu.frx":AE94
      Top             =   2400
      Width           =   2535
   End
   Begin VB.Image Image1 
      Appearance      =   0  'Flat
      BorderStyle     =   1  'Fixed Single
      Height          =   1020
      Left            =   240
      Picture         =   "frmMenu.frx":10032
      Top             =   120
      Width           =   2850
   End
   Begin XtremeSkinFramework.SkinFramework skinObject 
      Left            =   120
      Top             =   0
      _Version        =   851970
      _ExtentX        =   635
      _ExtentY        =   635
      _StockProps     =   0
   End
End
Attribute VB_Name = "frmMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Conexión activa de BD  para asignar un servicio
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset

Dim operationUtil As New COperationRoomLog

Private Sub actControlCash_Click()
frmControlCash.left = Me.lReferencia.left - 1000
frmControlCash.Top = Me.lReferencia.Top - 500
frmControlCash.Show , Me
End Sub

Private Sub cmdChangePwd_Click()
frmChangePwd.Show vbModal
End Sub

Private Sub Form_Load()
ModSkin.applyDefaultSkin Me, Me.skinObject
Call loadBd
Call loadInformationApp
Call openManager
Call loadResumen
Call loadInformationUserLogued
End Sub

Private Function loadInformationApp()
'Carga la información del usuario administrador
rec.Open "Select * from user where id=1", conBd, adOpenStatic, adLockOptimistic
Call Ap.admon.loadUser(rec("id"), rec("username"), rec("password"), rec("code_rol"), rec("email"))
rec.Close

'Carga la información de los usuarios a notificar por correo electrónico
Dim emailsToNotify As String
Dim email As String
If Ap.test = False Then
    rec.Open "Select u.email from user_x_alert_type uat inner join user u on u.id = uat.id_user where code_alert_type='IDO';", conBd, adOpenStatic, adLockOptimistic
    Do Until rec.EOF
        email = ModFormater.getValue(rec("email"), "")
        If email <> "" Then
            emailsToNotify = rec("email") & ";" & emailsToNotify
        End If
        rec.MoveNext
    Loop
    rec.Close
    emailsToNotify = left(emailsToNotify, Len(emailsToNotify) - 1)
Else
    emailsToNotify = Ap.admon.email
End If
Ap.emailsToNotify = emailsToNotify
End Function

Private Function loadInformationUserLogued()
Me.tUser = Ap.cUserLogued.username

If (Ap.cUserLogued.codeRol = "ADM") Then
    frmOptionsAdmin.Visible = True
End If
End Function

Private Sub Image2_Click()
frmRoom.left = Me.lReferencia.left
frmRoom.Top = Me.lReferencia.Top
Set frmRoom.parent = Me

frmRoom.Show , Me
End Sub

Public Function reloadSkin()
'ModSkin.applyDefaultSkin Me, Me.skinObject
Timer1.Enabled = True
End Function

Private Sub Label1_Click()
frmReportProducts.left = Me.lReferencia.left - 1000
frmReportProducts.Top = Me.lReferencia.Top - 500
Set frmReportProducts.parent = Me

frmReportProducts.Show , Me
End Sub

Private Sub lRoomPrices_Click()
frmRoomPrices.left = Me.lReferencia.left - 1000
frmRoomPrices.Top = Me.lReferencia.Top - 500
Set frmRoomPrices.parent = Me

frmRoomPrices.Show , Me
End Sub

Private Sub lReportServices_Click()
frmReportServices.left = Me.lReferencia.left - 1000
frmReportServices.Top = Me.lReferencia.Top - 500
Set frmReportServices.parent = Me

frmReportServices.Show , Me
End Sub

Private Sub timeProcessor_Timer()
Dim operationsToProcess(10) As COperationRoomLog
 operationUtil.loadLast10OperationsNoProcessed
End Sub

Private Sub Timer1_Timer()
ModSkin.applyDefaultSkin Me, Me.skinObject
Timer1.Enabled = False
End Sub

Private Sub openManager()
frmManagerRoom.left = Me.lReferencia.left - 1000
frmManagerRoom.Top = Me.lReferencia.Top - 500
Set frmManagerRoom.parent = Me

frmManagerRoom.Show , Me
End Sub

Private Function loadBd()
'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient
End Function

Private Sub loadResumen()
Call loadNumbersAvailable
End Sub

Private Sub loadNextAvailable()
'rec.Open "SELECT * from service where status='ACT' order by datetime_end_clean asc limit 1", conBd, adOpenStatic, adLockOptimistic
'If (rec.RecordCount >= 1) Then
'    If IsNull(rec("datetime_end_clean")) Then
'        Me.tNextAvailable = "00:00"
'    Else
'        Me.tNextAvailable = ModFormater.getHourAndMinuteFromDate(rec("datetime_end_clean"))
'    End If
'Else
'    Me.tNextAvailable = "No aplica"
'End If
'rec.Close
End Sub

Private Sub loadNumbersAvailable()
rec.Open "select count(id) as count from service where status='ACT';", conBd, adOpenStatic, adLockOptimistic
If (rec.RecordCount >= 1) Then
    Me.tRoomsInService = rec("count")
    Me.tRoomsFree = MAX_NO_ROOMS - Val(tRoomsInService)
End If
rec.Close

End Sub


Private Sub timeReload_Timer()
Call loadResumen
End Sub
