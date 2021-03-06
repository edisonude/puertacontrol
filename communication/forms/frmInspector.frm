VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form frmInspector 
   Caption         =   "PuertaControl-Inspector"
   ClientHeight    =   3165
   ClientLeft      =   12165
   ClientTop       =   6645
   ClientWidth     =   6855
   ForeColor       =   &H000000FF&
   Icon            =   "frmInspector.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   Picture         =   "frmInspector.frx":08CA
   ScaleHeight     =   3165
   ScaleWidth      =   6855
   Begin VB.Timer timeToMin 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   4695
      Top             =   120
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   2880
      Top             =   120
   End
   Begin MSCommLib.MSComm puerto 
      Left            =   2160
      Top             =   120
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
      BaudRate        =   19200
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "v1.2"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   375
      Left            =   6225
      TabIndex        =   3
      Top             =   1125
      Width           =   480
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
Attribute VB_Name = "frmInspector"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim conectado As Boolean
Dim forceExit As Boolean
Dim con As ADODB.Connection
Dim fecha As String

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
    puerto.CommPort = 3
    puerto.PortOpen = True
    Timer1.Enabled = True
    conectado = True
    Me.lArduino = "Arduino Connected"
    Me.lArduino.ForeColor = &HFF00&
Else
    Timer1.Enabled = False
    puerto.PortOpen = False
    conectado = False
    Me.lArduino = "Arduino Disconnected"
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

Private Sub Timer1_Timer()
textin = puerto.Input
processMessage (textin)
End Sub

Private Sub processMessage(message As String)
'Limpiado del mensaje
message = Trim$((Replace(message, vbCrLf, "")))

If Not validMessage(message) Then
    Exit Sub
End If

On Error GoTo controlError
Dim noRoom As String
Me.lConsole.Caption = message
noRoom = Mid(message, 4, Len(message))
fecha = Format(Now(), "yyyy-MM-dd HH:mm:ss")
SQL = "Insert into operation_room_log (date_action,number_room,message) " & _
        "values('" & fecha & "','" & noRoom & "','" & message & "')"
con.Execute (SQL)
Exit Sub

controlError:

Open fileLogPath For Append As #1
Print #1, Now()
Print #1, "SQL = " & SQL
Print #1, "ERROR = Number: " & Err.Number & " - Source: " & Err.Source & " - Description: " & Err.Description
Print #1, "-------------------------------------------------------------------------------------------"
Close #1
End Sub

Private Function validMessage(message As String) As Boolean
Dim lenMessage As Integer
Dim isValid As Boolean
lenMessage = Len(message)
isValid = True

If (lenMessage < 4 And lenMessage > 5) Then
    isValid = False
End If

If (isValid And Left(message, 1) <> "R") Then
    isValid = False
End If

If (isValid And Mid(message, 3, 1) <> "-") Then
    isValid = False
End If

If (isValid And Not IsNumeric(Right(message, 1))) Then
    isValid = False
End If

If Not isValid Then
    Open fileLogFailMessages For Append As #1
    Print #1, Now()
    Print #1, "FailMessage = " & message
    Print #1, "-------------------------------------------------------------------------------------------"
    Close #1
End If

validMessage = isValid
End Function

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

Private Sub timeToMin_Timer()
Me.WindowState = vbMinimized
Me.timeToMin.Enabled = False
End Sub
