VERSION 5.00
Begin VB.Form frmInspectorTest 
   Caption         =   "PuertaControl-Inspector"
   ClientHeight    =   3165
   ClientLeft      =   12165
   ClientTop       =   6645
   ClientWidth     =   6855
   ForeColor       =   &H000000FF&
   Icon            =   "frmInspectorTest.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   Picture         =   "frmInspectorTest.frx":08CA
   ScaleHeight     =   3165
   ScaleWidth      =   6855
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   3570
      Top             =   390
   End
   Begin VB.CommandButton cmdSend 
      Caption         =   "Send"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   5925
      TabIndex        =   6
      Top             =   1320
      Width           =   585
   End
   Begin VB.TextBox tRoom 
      Height          =   315
      Left            =   5280
      TabIndex        =   5
      Top             =   1320
      Width           =   615
   End
   Begin VB.ComboBox cmbStatus 
      Height          =   315
      ItemData        =   "frmInspectorTest.frx":4793C
      Left            =   4560
      List            =   "frmInspectorTest.frx":47946
      TabIndex        =   4
      Text            =   "RO"
      Top             =   1320
      Width           =   735
   End
   Begin VB.Timer timeToMin 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   4695
      Top             =   120
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "TEST"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   615
      Left            =   1920
      TabIndex        =   3
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label lPausa 
      BackStyle       =   0  'Transparent
      Height          =   960
      Left            =   5265
      TabIndex        =   2
      Top             =   30
      Width           =   1350
   End
   Begin VB.Label lConsole 
      BackColor       =   &H00404040&
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   240
      TabIndex        =   1
      Top             =   1800
      Width           =   3495
   End
   Begin VB.Label lArduino 
      BackStyle       =   0  'Transparent
      Caption         =   "Arduino disconnected"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   1320
      Width           =   2655
   End
   Begin VB.Menu mnuPopup 
      Caption         =   "popup"
      Visible         =   0   'False
      Begin VB.Menu mnuMostrar 
         Caption         =   "Restaurar"
      End
      Begin VB.Menu mnuLinea 
         Caption         =   "-"
      End
      Begin VB.Menu mnuAcerca 
         Caption         =   "Acerca de ..."
      End
   End
End
Attribute VB_Name = "frmInspectorTest"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim conectado As Boolean
Dim forceExit As Boolean
Dim con As ADODB.Connection
Dim fecha As String

Private Sub Command1_Click()

End Sub

Private Sub cmdSend_Click()
Call processMessage(Me.cmbStatus.Text & "-" & Me.tRoom)
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If (KeyCode = 81) Then
    forceExit = True
    Unload Me
End If
End Sub

Private Sub Form_Load()
On Error GoTo Control

If App.PrevInstance Then
     MsgBox "Ya existe una instancia corriendo de la aplicaci�n", vbInformation
     forceExit = True
     Unload Me
     Exit Sub
 End If

Set con = Modconexion.getNewConection
If conectado = False Then
    conectado = True
    Me.lArduino = "Test Connected"
    Me.lArduino.ForeColor = &HFF00&
Else
    conectado = False
    Me.lArduino = "Test Disconnected"
    Me.lArduino.ForeColor = vbRed
End If

Me.WindowState = vbMinimized
Exit Sub

Control:
MsgBox Err.Description, vbCritical
End
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
If forceExit Then
    con.Close
    RemoverSystray
    End
End If
Me.WindowState = vbMinimized
Cancel = True
End Sub

Private Sub lPausa_Click()
Me.timeToMin.Enabled = False
End Sub


Private Sub processMessage(message As String)
On Error GoTo controlError
Dim noRoom As String
If (message <> "" And Left$(message, 1) = "R") Then
    Me.lConsole.Caption = message
    noRoom = Right(message, 2)
    fecha = Format(Now(), "yyyy-MM-dd HH:mm:ss")
    SQL = "Insert into operation_room_log (date_action,number_room,message) " & _
            "values('" & fecha & "','" & noRoom & "','" & message & "')"
    con.Execute (SQL)
End If
Exit Sub

controlError:

Open fileLogPath For Append As #1
Print #1, Now()
Print #1, "SQL = " & SQL
Print #1, "ERROR = Number: " & Err.Number & " - Source: " & Err.Source & " - Description: " & Err.Description
Print #1, "-------------------------------------------------------------------------------------------"
Close #1
End Sub

Private Sub Form_MouseMove( _
    Button As Integer, _
    Shift As Integer, _
    X As Single, Y As Single)

Dim msg As Long

    If (Me.ScaleMode = vbPixels) Then
        msg = X
    Else
        msg = X / Screen.TwipsPerPixelX
    End If

    Select Case msg
        Case WM_LBUTTONDBLCLK
            ' -- Si hacemos doble click con el bot�n izquierdo restauramos el form
            Me.WindowState = vbNormal
            Call SetForegroundWindow(Me.hwnd)
            Me.Show

        Case WM_RBUTTONUP
            Call SetForegroundWindow(Me.hwnd)
            ' -- Si hacemos Click con el boton derecho mostramos el popup Menu
            Me.PopupMenu Me.mnuPopup

        Case WM_LBUTTONUP
    End Select
End Sub

Private Sub Form_Resize()
    If (Me.WindowState = vbMinimized) Then
        Me.Hide
        Call PonerSystray(Me)
    Else
        Call RemoverSystray
        If Me.WindowState = vbNormal Then
            Me.timeToMin.Enabled = True
        End If
    End If
End Sub

Private Sub mnuAcerca_Click()
    'ShellAbout Me.hWnd, App.Title, "Programa para ...", ByVal 0&
    frmAbout.Show
End Sub

Private Sub mnuMostrar_Click()
    Me.WindowState = vbNormal
    Call SetForegroundWindow(Me.hwnd)
    Me.Show
End Sub

Private Sub Timer1_Timer()
 Call processMessage("RO-1")
End Sub

Private Sub timeToMin_Timer()
Me.WindowState = vbMinimized
Me.timeToMin.Enabled = False
End Sub
