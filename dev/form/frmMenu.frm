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
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   1455
      Left            =   1080
      TabIndex        =   8
      Top             =   5400
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.Timer timeProcessor 
      Interval        =   1000
      Left            =   120
      Top             =   5280
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
      Height          =   3135
      Left            =   120
      TabIndex        =   1
      Top             =   2040
      Width           =   3135
      Begin VB.Label label 
         Alignment       =   2  'Center
         Caption         =   "Próxima disponibilidad"
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
         Top             =   2160
         Width           =   2775
      End
      Begin VB.Label tNextAvailable 
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
         Left            =   240
         TabIndex        =   6
         Top             =   2520
         Width           =   2775
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
         Left            =   240
         TabIndex        =   5
         Top             =   1320
         Width           =   2775
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
         Left            =   240
         TabIndex        =   4
         Top             =   1680
         Width           =   2775
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
         Left            =   240
         TabIndex        =   3
         Top             =   480
         Width           =   2775
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
         Left            =   240
         TabIndex        =   2
         Top             =   840
         Width           =   2775
      End
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   2400
      Top             =   -120
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
'Conexión activa de BD  para asignar un servicio
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset

Dim operationUtil As New COperationRoomLog




Private Sub Command1_Click()
'http://www.programming.rzb.ir | visit me ;D

 
'start SendMail code
'Private Function SendMail(Sender As String, Subject As String, Reciever As String, Text As String, Password As String, AttachFile As String, mailserver As String, portnum As String) As Boolean
    'If Sender <> "" Or Password <> "" Then
        Dim iMsg, iConf, Flds, schema, SendEmailGmail
        Set iMsg = CreateObject("CDO.Message")
        Set iConf = CreateObject("CDO.Configuration")
        Set Flds = iConf.Fields
    
        ' send one copy with Google SMTP server (with autentication)
        schema = "http://schemas.microsoft.com/cdo/configuration/"
        Flds.Item(schema & "sendusing") = 2
        Flds.Item(schema & "smtpserver") = "smtp.gmail.com"
        Flds.Item(schema & "smtpserverport") = "25"
        Flds.Item(schema & "smtpauthenticate") = 1
        Flds.Item(schema & "sendusername") = "puertacontrol.notify@gmail.com"
        Flds.Item(schema & "sendpassword") = "puertacontrol2017"
        Flds.Item(schema & "smtpusessl") = 1
        Flds.Update
    
        With iMsg
            DoEvents
            .To = "edisonandres2@hotmail.com"
            .From = "puertacontrol.notify@gmail.com"
            .Subject = "Alerta - Apertura habitación"
            .HTMLBody = "<html><head> </head> <body> <table style=' width: 400px; text-align: center; font-family: Calibri,Arial,sans-serif; font-size: 18px; '> <tbody><tr> <th style=' border-bottom: 3px solid #608BB1; '><img src='https://image.ibb.co/gBaUSw/puertacontrol_small.png' alt='puertacontrol_small' border='0'></th> </tr> <tr> <td style=' font-weight: 700; font-size: 22px; '>ALERTA</td> </tr> <tr> <td style=' border-bottom: 1px solid #608BB1; '>La habitación #NO# fue abierta el #FECHA# por fuera de los horarios permitidos.</td> </tr><tr> <td style='font-size: 6px;font-weight: 600;'>&nbsp;</td> </tr> <tr> <td style=' font-size: 14px; '>Cualquier inquietud, estaremos dispuesto a solucionarla</td> </tr><tr> <td style='font-size: 14px;font-weight: 600;'>tudesarrolloo@gmail.com - 313 704 9824</td> </tr> </tbody></table> </body></html>"
            .Sender = "puertacontrol.notify@gmail.com"
            .Organization = "S.M.B Productions"
            .ReplyTo = "puertacontrol.notify@gmail.com"
            'If AttachFile <> "" Then
            '    .AddAttachment (AttachFile)
            'End If
            Set .Configuration = iConf
            SendEmailGmail = .send
        End With
    
        Set iMsg = Nothing
        Set iConf = Nothing
        Set Flds = Nothing
        SendMail = True
        MsgBox "end"
'    Else
'        MsgBox "Please, Fill the Sender Mail Address or Sender Mail Password", vbCritical, "Connection Error"
'        SendMail = False
'    End If

End Sub

Private Sub Form_Load()
ModSkin.applyDefaultSkin Me, Me.skinObject
Call loadBd
Call openManager
Call loadResumen

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

Private Sub timeProcessor_Timer()
Dim operationsToProcess(10) As COperationRoomLog
 operationUtil.loadLast10OperationsNoProcessed
End Sub

Private Sub Timer1_Timer()
ModSkin.applyDefaultSkin Me, Me.skinObject
Timer1.Enabled = False
End Sub

Private Sub openManager()
frmManagerRoom.Left = Me.lReferencia.Left - 1000
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
Call loadNextAvailable
Call loadNumbersAvailable
End Sub

Private Sub loadNextAvailable()
rec.Open "SELECT * from service where status='ACT' order by datetime_end_clean asc limit 1", conBd, adOpenStatic, adLockOptimistic
If (rec.RecordCount >= 1) Then
    Me.tNextAvailable = ModFormater.getHourAndMinuteFromDate(rec("datetime_end_clean"))
Else
    Me.tNextAvailable = "No aplica"
End If
rec.Close
End Sub

Private Sub loadNumbersAvailable()
rec.Open "select count(id) as count from service where status='ACT';", conBd, adOpenStatic, adLockOptimistic
If (rec.RecordCount >= 1) Then
    Me.tRoomsInService = rec("count")
    Me.tRoomsFree = MAX_NO_ROOMS - Val(tRoomsInService)
End If
rec.Close

End Sub


