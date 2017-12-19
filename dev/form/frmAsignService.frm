VERSION 5.00
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "CODEJO~1.OCX"
Begin VB.Form frmAsignService 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Asignar servicio"
   ClientHeight    =   6810
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   8115
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6810
   ScaleWidth      =   8115
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      BackColor       =   &H00808080&
      Caption         =   "Datos para el servicio"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4335
      Left            =   480
      TabIndex        =   0
      Top             =   240
      Width           =   6615
      Begin VB.ComboBox cmbTypePackage 
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
         Left            =   2400
         TabIndex        =   3
         Top             =   1080
         Width           =   3735
      End
      Begin VB.ComboBox cmbTypeRooms 
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
         Left            =   2400
         TabIndex        =   2
         Top             =   480
         Width           =   3735
      End
      Begin VB.Label Label2 
         Caption         =   "Paquete"
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
         Left            =   360
         TabIndex        =   4
         Top             =   1080
         Width           =   1935
      End
      Begin VB.Label Label1 
         Caption         =   "Tipo de Habitación"
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
         Left            =   360
         TabIndex        =   1
         Top             =   480
         Width           =   1935
      End
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
Attribute VB_Name = "frmAsignService"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Conexión activa de BD  para asignar un servicio
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset

Private Sub cmbTypeRooms_Click()
Me.cmbTypePackage.Text = ""
End Sub

Private Sub cmbTypeRooms_LostFocus()
Call loadPackages(Me.cmbTypeRooms)
End Sub

Private Sub Form_Load()
ModSkin.applyDefaultSkin Me, Me.skinObject
Call loadBd
Call loadTypeRooms
End Sub

Private Function loadBd()
'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient
End Function

'Carga los tipos de habitaciones
Private Sub loadTypeRooms()
Dim typeRoom As String
rec.Open "SELECT * FROM room_type", conBd, adOpenStatic, adLockOptimistic
Me.cmbTypeRooms.Clear
Do Until rec.EOF
    typeRoom = rec("description").Value
    If Not IsNull(typeRoom) Then
        Me.cmbTypeRooms.AddItem typeRoom
    End If
    rec.MoveNext
Loop
rec.Close
End Sub

'Carga los paquetes según el tipo de habitación
Private Sub loadPackages(typeRoom As String)
Dim typePackage As String
rec.Open "Select p.description from package p inner join package_x_type_room ptr on p.id = ptr.id_package " & _
"inner join room_type rt on rt.id=ptr.id_room_type where rt.description='" & typeRoom & "'", conBd, adOpenStatic, adLockOptimistic
Me.cmbTypePackage.Clear
Do Until rec.EOF
    typePackage = rec("description").Value
    If Not IsNull(typePackage) Then
        Me.cmbTypePackage.AddItem typePackage
    End If
    rec.MoveNext
Loop
rec.Close
End Sub
