VERSION 5.00
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "CODEJO~1.OCX"
Begin VB.Form frmRoom 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   8430
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   11355
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8430
   ScaleWidth      =   11355
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command5 
      Caption         =   "Command5"
      Height          =   615
      Left            =   7440
      TabIndex        =   16
      Top             =   360
      Width           =   2655
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Command4"
      Height          =   615
      Left            =   4560
      TabIndex        =   15
      Top             =   7800
      Width           =   975
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Command3"
      Height          =   255
      Left            =   3840
      TabIndex        =   14
      Top             =   7800
      Width           =   375
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Guardar"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1320
      TabIndex        =   12
      Top             =   7560
      Width           =   1935
   End
   Begin VB.Frame Frame1 
      Height          =   3135
      Left            =   720
      TabIndex        =   2
      Top             =   4320
      Width           =   6975
      Begin VB.ComboBox cType 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   2760
         TabIndex        =   9
         Top             =   1680
         Width           =   3015
      End
      Begin VB.TextBox tFloor 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   2760
         TabIndex        =   8
         Top             =   1080
         Width           =   975
      End
      Begin VB.TextBox tNumber 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   2760
         TabIndex        =   7
         Top             =   480
         Width           =   975
      End
      Begin VB.Label lId 
         BackColor       =   &H000080FF&
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4920
         TabIndex        =   13
         Top             =   360
         Width           =   1935
      End
      Begin VB.Label lRequired 
         Caption         =   "*"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   375
         Left            =   240
         TabIndex        =   11
         Top             =   360
         Width           =   255
      End
      Begin VB.Label lCurrentStatus 
         Caption         =   "Estado actual"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         TabIndex        =   10
         Top             =   2280
         Width           =   1935
      End
      Begin VB.Label lEtiqueta 
         Caption         =   "Estado actual"
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
         Left            =   600
         TabIndex        =   6
         Top             =   2280
         Width           =   1935
      End
      Begin VB.Label lEtiqueta 
         Caption         =   "Tipo habitación"
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
         Left            =   600
         TabIndex        =   5
         Top             =   1680
         Width           =   1935
      End
      Begin VB.Label lEtiqueta 
         Caption         =   "Piso o nivel"
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
         Left            =   600
         TabIndex        =   4
         Top             =   1080
         Width           =   1935
      End
      Begin VB.Label lEtiqueta 
         Caption         =   "Número habitación"
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
         Left            =   600
         TabIndex        =   3
         Top             =   480
         Width           =   1935
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   615
      Left            =   8160
      TabIndex        =   1
      Top             =   5040
      Width           =   2895
   End
   Begin VB.Label lTitle 
      Caption         =   "Gestión de habitaciones"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3735
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
Attribute VB_Name = "frmRoom"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


'Conexion a la base de datos para este formulario
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset


Public parent As frmMenu

Private Sub Command1_Click()
MsgBox cRoomStatic.FIELD_CODE_STATUS

End Sub


Private Sub Command2_Click()
rec.Update
End Sub

Private Sub Command3_Click()
rec.MovePrevious
End Sub

Private Sub Command4_Click()
rec.MoveNext
End Sub

Private Sub Command5_Click()
'SQL = "SELECT r." & cRoomStatic.FIELD_NUMBER & " as '" & cRoomStatic.LABEL_NUMBER & "'," & _
'    "r." & cRoomStatic.FIELD_FLOOR & " as '" & cRoomStatic.LABEL_FLOOR & "'," & _
'    "rt." & Ap.cRoomTypeStatic.FIELD_DESCRIPTION & " as '" & Ap.cRoomTypeStatic.LABEL_DESCRIPTION & "'," & _
'    "st." & Ap.cStatusRoomStatic.FIELD_DESCRIPTION & " as '" & Ap.cStatusRoomStatic.LABEL_DESCRIPTION & _
'    "' FROM " & Ap.cRoomStatic.TABLE & " r INNER JOIN " & Ap.cRoomTypeStatic.TABLE & " rt ON " & _
'    "r." & Ap.cRoomStatic.FIELD_ID_TYPE & " = rt." & Ap.cRoomTypeStatic.FIELD_ID & _
'    " INNER JOIN " & Ap.cStatusRoomStatic.TABLE & " st ON st." & Ap.cStatusRoomStatic.FIELD_CODE & " = r." & _
'    Ap.cRoomStatic.FIELD_CODE_STATUS
'
'Call ModFlexGrid.pv_Flexgrid_Initialize(MSHFlexGrid1)
'Call Cargar_MsFlexGrid(conBd, SQL, MSHFlexGrid1, Me)
'
'Call ModFlexGrid.paintByRows(MSHFlexGrid1, 15329769, 16637649)
End Sub

Private Sub Form_Load()
'Call loadBd

    On Error GoTo Error_Handler
    
    Set conBd = ModConexion.getNewConection
    

    
    ' -- Errores -----------------------------------------------
    Exit Sub
Error_Handler:
MsgBox Err.Number & " " & " Error " & Err.description, vbCritical


'rec.AddNew

ModSkin.applyDefaultSkin Me, Me.skinObject
End Sub


'Realiza el mapeo de los campos del formulario con la base de datos
Private Function mapFieldsWtihBD()

End Function

Private Function loadBd()
'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection

'Se carga la consulta base para el formulario
rec.CursorLocation = adUseClient
rec.Open "Select * from room", conBd, adOpenDynamic, adLockOptimistic
    
'Se mapean los campos del formulario
Set Me.lId.DataSource = rec
Me.lId.DataField = cRoomStatic.FIELD_ID

Set Me.tNumber.DataSource = rec
Me.tNumber.DataField = cRoomStatic.FIELD_NUMBER

Set Me.tFloor.DataSource = rec
Me.tFloor.DataField = cRoomStatic.FIELD_FLOOR

Set Me.cType.DataSource = rec
Me.cType.DataField = cRoomStatic.FIELD_ID_TYPE

Set Me.lCurrentStatus.DataSource = rec
Me.lCurrentStatus.DataField = cRoomStatic.FIELD_CODE_STATUS

End Function

Private Sub Form_Initialize()
    ' -- Evitar diálogos de error del sistema
    'Call SetErrorMode(2)
    Call InitCommonControls
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If Not conBd Is Nothing Then
       If conBd.State = adStateOpen Then conBd.Close
       Set conBd = Nothing
    End If
    
    'parent.reloadSkin
End Sub

