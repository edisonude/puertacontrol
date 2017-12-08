VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4110
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10260
   LinkTopic       =   "Form1"
   ScaleHeight     =   4110
   ScaleWidth      =   10260
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "Command3"
      Height          =   615
      Left            =   8520
      TabIndex        =   7
      Top             =   3240
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   1335
      Left            =   9120
      TabIndex        =   6
      Top             =   1080
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   2055
      Left            =   6240
      TabIndex        =   5
      Top             =   960
      Width           =   2055
   End
   Begin VB.TextBox tEnviar 
      Height          =   735
      Left            =   360
      TabIndex        =   3
      Top             =   240
      Width           =   4215
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "frmCommunication.frx":0000
      Left            =   360
      List            =   "frmCommunication.frx":0016
      TabIndex        =   2
      Top             =   1800
      Width           =   1575
   End
   Begin VB.CommandButton cmdCon 
      Caption         =   "Conectar"
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton cmdSend 
      Caption         =   "Enviar"
      Height          =   375
      Left            =   3000
      TabIndex        =   0
      Top             =   1800
      Width           =   1575
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   4080
      Top             =   2280
   End
   Begin MSCommLib.MSComm puerto 
      Left            =   5640
      Top             =   240
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
   End
   Begin VB.Label tMostrar 
      BackColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   360
      TabIndex        =   4
      Top             =   1080
      Width           =   4215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCon_Click()
If conectado = False Then
    puerto.CommPort = Val(Me.Combo1.ListIndex + 1)
    puerto.PortOpen = True
    Timer1.Enabled = True
    conectado = True
    Me.cmdCon.Caption = "Desconectar"
Else
    Timer1.Enabled = False
    puerto.PortOpen = False
    conectado = False
End If
End Sub

Private Sub Command1_Click()
Dim con As ADODB.Connection
Set con = Modconexion.getNewConection

Dim rs As New ADODB.Recordset
SQL = "select description from rol"
rs.Open SQL, con, adOpenDynamic, adLockBatchOptimistic
MsgBox rs(0)
con.Close
End Sub

Private Sub Command2_Click()
Dim con As ADODB.Connection
Set con = Modconexion.getNewConection

SQL = "Insert into status_room values('TT','TEST')"
con.Execute (SQL)
MsgBox "EXITO"
con.Close
End Sub

Private Sub Command3_Click()
Dim con As ADODB.Connection
Dim fecha As String
Set con = Modconexion.getNewConection

fecha = Format(Now(), "yyyy-MM-dd HH:mm:ss")
SQL = "Insert into operation_room_log (date_action,number_room,message) " & _
        "values('" & fecha & "',9,'este mensaje9')"
con.Execute (SQL)
MsgBox "EXITO"
con.Close
End Sub

Private Sub Timer1_Timer()
textin = puerto.Input
If textin <> "" Then
Me.tMostrar.Caption = textin
End If
End Sub
