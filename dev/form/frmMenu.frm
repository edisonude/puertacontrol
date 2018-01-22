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
   Begin VB.Timer timeReload 
      Interval        =   5000
      Left            =   840
      Top             =   1560
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00E0E0E0&
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
      Height          =   3135
      Left            =   135
      TabIndex        =   8
      Top             =   5325
      Width           =   3135
      Begin VB.Image Image5 
         Height          =   210
         Left            =   120
         Picture         =   "frmMenu.frx":0000
         Top             =   525
         Width           =   150
      End
      Begin VB.Label Label1 
         Caption         =   "Gestión de productos"
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
         TabIndex        =   9
         Top             =   450
         Width           =   2610
      End
   End
   Begin VB.Timer timeProcessor 
      Interval        =   1000
      Left            =   225
      Top             =   1530
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
      Picture         =   "frmMenu.frx":0202
      Top             =   4080
      Width           =   2520
   End
   Begin VB.Image Image3 
      Height          =   630
      Left            =   240
      Picture         =   "frmMenu.frx":54F4
      Top             =   3120
      Width           =   2535
   End
   Begin VB.Image Image2 
      Height          =   615
      Left            =   240
      Picture         =   "frmMenu.frx":A88E
      Top             =   2160
      Width           =   2535
   End
   Begin VB.Image Image1 
      Height          =   990
      Left            =   0
      Picture         =   "frmMenu.frx":FA2C
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
    If IsNull(rec("datetime_end_clean")) Then
        Me.tNextAvailable = "00:00"
    Else
        Me.tNextAvailable = ModFormater.getHourAndMinuteFromDate(rec("datetime_end_clean"))
    End If
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


Private Sub timeReload_Timer()
Call loadResumen
End Sub
