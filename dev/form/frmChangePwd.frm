VERSION 5.00
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "CODEJO~1.OCX"
Begin VB.Form frmChangePwd 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cambiar contraseña"
   ClientHeight    =   3645
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   7035
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3645
   ScaleWidth      =   7035
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame2 
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
      Left            =   480
      TabIndex        =   5
      Top             =   240
      Width           =   5895
      Begin VB.TextBox tConfirmPwd 
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
         IMEMode         =   3  'DISABLE
         Left            =   2400
         PasswordChar    =   "*"
         TabIndex        =   2
         Top             =   1800
         Width           =   2775
      End
      Begin VB.TextBox tLastPwd 
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
         IMEMode         =   3  'DISABLE
         Left            =   2400
         PasswordChar    =   "*"
         TabIndex        =   0
         Top             =   840
         Width           =   2775
      End
      Begin VB.TextBox tNewPwd 
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
         IMEMode         =   3  'DISABLE
         Left            =   2400
         PasswordChar    =   "*"
         TabIndex        =   1
         Top             =   1320
         Width           =   2775
      End
      Begin VB.Label tUser 
         Caption         =   "Descripción"
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
         Left            =   2400
         TabIndex        =   10
         Top             =   360
         Width           =   2655
      End
      Begin VB.Label etiqueta 
         Caption         =   "Usuario actual"
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
         TabIndex        =   9
         Top             =   360
         Width           =   1815
      End
      Begin VB.Label etiqueta 
         Caption         =   "Contraseña anterior"
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
         Top             =   840
         Width           =   2055
      End
      Begin VB.Label etiqueta 
         Caption         =   "Nueva Contraseña"
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
         Top             =   1320
         Width           =   2055
      End
      Begin VB.Label etiqueta 
         Caption         =   "Confirme Contraseña"
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
         TabIndex        =   6
         Top             =   1800
         Width           =   2055
      End
   End
   Begin VB.CommandButton cmdChangePwd 
      Caption         =   "Actualizar contraseña"
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
      Left            =   960
      TabIndex        =   3
      Top             =   2880
      Width           =   2535
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
      Left            =   3600
      TabIndex        =   4
      Top             =   2880
      Width           =   2535
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
Attribute VB_Name = "frmChangePwd"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Conexión activa de BD  para asignar un servicio
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset

Private Sub cmdChangePwd_Click()
If Ap.cUserLogued.pwd <> tLastPwd Then
    MsgBox "La contraseña ingresada no coincide con su contraseña actual", vbCritical
    Me.tLastPwd = ""
    Me.tLastPwd.SetFocus
    Exit Sub
End If

If Me.tNewPwd.Text <> Me.tConfirmPwd Then
    MsgBox "La confirmación de la nueva contraseña no coincide.", vbCritical
    ModComponents.selectText tConfirmPwd
    tConfirmPwd.SetFocus
    Exit Sub
End If

SQL = "UPDATE user SET password= '" & Me.tNewPwd & "' where id=" & Ap.cUserLogued.id & ""
conBd.Execute (SQL)

MsgBox "Su contraseña fue actualizaa correctamente y podrá usarse en el próximo inicio de sesión.", vbInformation
Unload Me
End Sub

Private Sub cmdExit_Click()
Unload Me
End Sub

Private Sub Form_Load()
ModSkin.applyDefaultSkin Me, Me.skinObject
Call loadBd

'Carga la información del usuario en sesión
Me.tUser = Ap.cUserLogued.username
End Sub

Private Function loadBd()
'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient
End Function

Private Sub tLastPwd_LostFocus()
If Ap.cUserLogued.pwd <> tLastPwd Then
    MsgBox "La contraseña ingresada no coincide con su contraseña actual", vbCritical
    Me.tLastPwd = ""
    Me.tLastPwd.SetFocus
End If
End Sub

Private Sub tConfirmPwd_LostFocus()
If Me.tNewPwd.Text <> Me.tConfirmPwd Then
    MsgBox "La confirmación de la nueva contraseña no coincide.", vbCritical
    ModComponents.selectText tConfirmPwd
    tConfirmPwd.SetFocus
End If
End Sub
