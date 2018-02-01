VERSION 5.00
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "CODEJO~1.OCX"
Begin VB.Form frmLogin 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Ingresar al sistema"
   ClientHeight    =   2595
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6150
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmLogin.frx":0000
   ScaleHeight     =   2595
   ScaleWidth      =   6150
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer timeFoco 
      Interval        =   100
      Left            =   720
      Top             =   1920
   End
   Begin VB.TextBox tPass 
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
      IMEMode         =   3  'DISABLE
      Left            =   3240
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   1080
      Width           =   2415
   End
   Begin VB.TextBox tUser 
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
      Left            =   3240
      TabIndex        =   0
      Top             =   480
      Width           =   2415
   End
   Begin XtremeSkinFramework.SkinFramework skinObject 
      Left            =   0
      Top             =   0
      _Version        =   851970
      _ExtentX        =   635
      _ExtentY        =   635
      _StockProps     =   0
   End
   Begin VB.Label cmdLogin 
      BackStyle       =   0  'Transparent
      Height          =   435
      Left            =   2160
      TabIndex        =   2
      Top             =   1920
      Width           =   2370
   End
   Begin VB.Label label 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Contraseña"
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
      Index           =   1
      Left            =   1920
      TabIndex        =   4
      Top             =   1080
      Width           =   1215
   End
   Begin VB.Label label 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Usuario"
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
      Index           =   0
      Left            =   1920
      TabIndex        =   3
      Top             =   480
      Width           =   1215
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Conexión activa de BD  para asignar un servicio
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset

Private Sub cmdLogin_Click()
Dim typePackage As String
rec.Open "Select * from user where username='" & LCase(Me.tUser) & "' and password='" & Me.tPass & "'", conBd, adOpenStatic, adLockOptimistic

If rec.RecordCount > 0 Then
    Call Ap.cUserLogued.loadUser(rec("id"), rec("username"), rec("password"), rec("code_rol"), rec("email"))
    rec.Close
    frmMenu.Show
    Unload Me
Else
    rec.Close
    MsgBox "Los datos de ingreso son incorrectos", vbCritical, "Error ingreso"
End If

End Sub

Private Sub Form_Load()
ModSkin.applyDefaultSkin Me, Me.skinObject

'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient
End Sub

Private Sub timeFoco_Timer()
Me.tUser.SetFocus
Me.timeFoco.Enabled = False
End Sub

Private Sub tPass_KeyPress(KeyAscii As Integer)
If (KeyAscii = 13) Then
    Call cmdLogin_Click
End If
End Sub
