VERSION 5.00
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "CODEJO~1.OCX"
Begin VB.Form frmMenu 
   Caption         =   "Puerta Control"
   ClientHeight    =   7605
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10755
   LinkTopic       =   "Form1"
   ScaleHeight     =   7605
   ScaleWidth      =   10755
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   3240
      Top             =   4440
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   1215
      Left            =   4920
      TabIndex        =   1
      Top             =   2400
      Width           =   2295
   End
   Begin VB.Label lReferencia 
      BackColor       =   &H00404040&
      Caption         =   "Label1"
      Height          =   495
      Left            =   4440
      TabIndex        =   0
      Top             =   1320
      Width           =   615
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00B18B60&
      X1              =   0
      X2              =   2880
      Y1              =   1320
      Y2              =   1320
   End
   Begin VB.Image Image4 
      Height          =   630
      Left            =   240
      Picture         =   "frmMenu.frx":0000
      Top             =   4080
      Width           =   2520
   End
   Begin VB.Image Image3 
      Height          =   630
      Left            =   240
      Picture         =   "frmMenu.frx":52F2
      Top             =   3120
      Width           =   2535
   End
   Begin VB.Image Image2 
      Height          =   615
      Left            =   240
      Picture         =   "frmMenu.frx":A68C
      Top             =   2160
      Width           =   2535
   End
   Begin VB.Image Image1 
      Height          =   990
      Left            =   0
      Picture         =   "frmMenu.frx":F82A
      Top             =   240
      Width           =   2820
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
Private Sub Command1_Click()
reloadSkin
End Sub

Private Sub Form_Load()
ModSkin.applyDefaultSkin Me, Me.skinObject
End Sub

Private Sub Image2_Click()
frmRoom.Left = Me.lReferencia.Left
frmRoom.Top = Me.lReferencia.Top
Set frmRoom.parent = Me

frmRoom.Show , Me
End Sub

Public Function reloadSkin()
'ModSkin.applyDefaultSkin Me, Me.skinObject
Timer1.Enabled = True
End Function

Private Sub Timer1_Timer()
ModSkin.applyDefaultSkin Me, Me.skinObject
Timer1.Enabled = False
End Sub
