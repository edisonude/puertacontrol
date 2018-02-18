VERSION 5.00
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "CODEJO~1.OCX"
Begin VB.Form frmAssignMaintenance 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Asignar Mantenimiento"
   ClientHeight    =   2775
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   8370
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2775
   ScaleWidth      =   8370
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame frmAfter 
      BackColor       =   &H00C0C0C0&
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
      Left            =   1920
      TabIndex        =   10
      Top             =   120
      Visible         =   0   'False
      Width           =   5535
      Begin VB.CommandButton cmdAfterNo 
         Caption         =   "No"
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
         Left            =   2760
         TabIndex        =   14
         Top             =   1800
         Width           =   1455
      End
      Begin VB.CommandButton cmdAfterYes 
         Caption         =   "Si"
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
         Left            =   1200
         TabIndex        =   13
         Top             =   1800
         Width           =   1455
      End
      Begin VB.Label label 
         Caption         =   "¿Quiere programar el mantenimiento de esta habitación luego de que finalicen los actuales?"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   6
         Left            =   240
         TabIndex        =   15
         Top             =   960
         Width           =   5175
      End
      Begin VB.Label label 
         Caption         =   "Actualmente existe otra u otras habitaciones en mantenimiento. "
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   2
         Left            =   240
         TabIndex        =   11
         Top             =   240
         Width           =   5175
      End
   End
   Begin VB.CommandButton cmdAsignMaintenance 
      Caption         =   "Si"
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
      Left            =   3840
      TabIndex        =   4
      Top             =   2040
      Width           =   1455
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0C0C0&
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Left            =   2640
      TabIndex        =   0
      Top             =   120
      Width           =   5535
      Begin VB.Label label 
         Caption         =   "¿Desea iniciar el mantenimiento de esta habitación ahora?"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   0
         Left            =   240
         TabIndex        =   9
         Top             =   1080
         Width           =   5175
      End
      Begin VB.Label label 
         Caption         =   "programados para su mantenimiento."
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
         Left            =   225
         TabIndex        =   8
         Top             =   600
         Width           =   3720
      End
      Begin VB.Label label 
         Caption         =   "minutos"
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
         Left            =   4215
         TabIndex        =   7
         Top             =   360
         Width           =   1080
      End
      Begin VB.Label tTimeMaintenance 
         Alignment       =   1  'Right Justify
         Caption         =   "20"
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
         Left            =   3900
         TabIndex        =   6
         Top             =   360
         Width           =   255
      End
      Begin VB.Label label 
         Caption         =   "tiene un tiempo de"
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
         Left            =   2040
         TabIndex        =   5
         Top             =   360
         Width           =   1860
      End
      Begin VB.Label label 
         Caption         =   "La habitación "
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
         Left            =   225
         TabIndex        =   3
         Top             =   360
         Width           =   1335
      End
      Begin VB.Label tNoRoom 
         Alignment       =   1  'Right Justify
         Caption         =   "401"
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
         Left            =   1560
         TabIndex        =   2
         Top             =   360
         Width           =   435
      End
      Begin VB.Label tIdRoom 
         BackColor       =   &H000000FF&
         Height          =   255
         Left            =   4920
         TabIndex        =   1
         Top             =   240
         Visible         =   0   'False
         Width           =   375
      End
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "No"
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
      Left            =   5400
      TabIndex        =   12
      Top             =   2040
      Width           =   1455
   End
   Begin XtremeSkinFramework.SkinFramework skinObject 
      Left            =   0
      Top             =   0
      _Version        =   851970
      _ExtentX        =   635
      _ExtentY        =   635
      _StockProps     =   0
   End
   Begin VB.Image Image1 
      Height          =   2250
      Left            =   240
      Picture         =   "frmAssignMaintenance.frx":0000
      Top             =   240
      Width           =   2235
   End
End
Attribute VB_Name = "frmAssignMaintenance"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Conexión activa de BD  para asignar un servicio
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset

Private Function loadBd()
'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient
End Function

Private Sub cmdAsignMaintenance_Click()

End Sub

Private Sub cmdExit_Click()
Unload Me
End Sub

Private Sub Form_Load()
ModSkin.applyDefaultSkin Me, Me.skinObject
Call loadBd
End Sub

Private Sub loadInfoRoom()
rec.Open "SELECT * from room where id=" & Me.tIdRoom & "", conBd, adOpenStatic, adLockOptimistic
If (rec.RecordCount > 0) Then
    Me.tNoRoom = rec("number")
    Me.tTimeMaintenance = rec("time_maintenance")
End If
rec.Close
End Sub

Private Sub tIdRoom_Change()
Call loadInfoRoom
End Sub

