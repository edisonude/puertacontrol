VERSION 5.00
Begin VB.Form frmAbout 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "TuDesarrolloo"
   ClientHeight    =   5880
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   7305
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5880
   ScaleWidth      =   7305
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Image Image5 
      Height          =   375
      Left            =   2130
      Picture         =   "frmAbout.frx":0000
      Top             =   4425
      Width           =   375
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "tudesarrolloo"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H009F4320&
      Height          =   375
      Left            =   2520
      MouseIcon       =   "frmAbout.frx":07AE
      MousePointer    =   99  'Custom
      TabIndex        =   3
      Top             =   5160
      Width           =   1335
   End
   Begin VB.Image Image4 
      Height          =   300
      Left            =   2160
      Picture         =   "frmAbout.frx":0AB8
      Top             =   5160
      Width           =   315
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "313 704 9824 - 314 809 6466"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H009F4320&
      Height          =   375
      Left            =   2520
      TabIndex        =   2
      Top             =   4800
      Width           =   2895
   End
   Begin VB.Image Image3 
      Height          =   285
      Left            =   2160
      Picture         =   "frmAbout.frx":0FFA
      Top             =   4800
      Width           =   300
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "tudesarrolloo.com"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H009F4320&
      Height          =   375
      Left            =   2520
      MouseIcon       =   "frmAbout.frx":14B0
      MousePointer    =   99  'Custom
      TabIndex        =   1
      Top             =   4440
      Width           =   2895
   End
   Begin VB.Image Image2 
      Height          =   1110
      Left            =   240
      Picture         =   "frmAbout.frx":17BA
      Top             =   4440
      Width           =   1740
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00B18B60&
      BorderWidth     =   3
      X1              =   120
      X2              =   7200
      Y1              =   4200
      Y2              =   4200
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   $"frmAbout.frx":7C94
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   360
      TabIndex        =   0
      Top             =   2880
      Width           =   6735
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00B18B60&
      BorderWidth     =   3
      X1              =   120
      X2              =   7200
      Y1              =   2640
      Y2              =   2640
   End
   Begin VB.Image Image1 
      Height          =   2400
      Left            =   240
      Picture         =   "frmAbout.frx":7D60
      Top             =   120
      Width           =   6900
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Api ShellExecute para abrir el vínculo al presionar en el Label
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" ( _
    ByVal hwnd As Long, _
    ByVal lpOperation As String, _
    ByVal lpFile As String, _
    ByVal lpParameters As String, _
    ByVal lpDirectory As String, _
    ByVal nShowCmd As Long) As Long
  
'Para el modo de ventana en el ShellExecute
Private Const SW_SHOWNORMAL = 1

Private Sub Label2_Click()
Call ShellExecute(Me.hwnd, vbNullString, "http://tudesarrolloo.com/", _
                           vbNullString, "C:\", SW_SHOWNORMAL)
End Sub

Private Sub Label4_Click()
Call ShellExecute(Me.hwnd, vbNullString, "https://www.facebook.com/tudesarrolloo/", _
                           vbNullString, "C:\", SW_SHOWNORMAL)
End Sub
