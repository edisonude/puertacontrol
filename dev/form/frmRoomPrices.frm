VERSION 5.00
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "CODEJO~1.OCX"
Begin VB.Form frmRoomPrices 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Gestionar los precios de las habitaciones"
   ClientHeight    =   7065
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   11805
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7065
   ScaleWidth      =   11805
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdSave 
      Caption         =   "Guardar"
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
      Left            =   5760
      TabIndex        =   15
      Top             =   6360
      Width           =   1695
   End
   Begin VB.CommandButton cmdSalir 
      Caption         =   "Salir"
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
      Left            =   7680
      TabIndex        =   14
      Top             =   6360
      Width           =   1695
   End
   Begin VB.Frame Frame1 
      Caption         =   "Seleccione el tipo de habitación"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4455
      Left            =   240
      TabIndex        =   4
      Top             =   840
      Width           =   3855
      Begin VB.ListBox listRoomType 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3570
         Left            =   360
         TabIndex        =   5
         Top             =   600
         Width           =   3135
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Configuración de precio"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5295
      Left            =   4560
      TabIndex        =   0
      Top             =   840
      Width           =   6495
      Begin VB.TextBox tAddHour 
         Alignment       =   1  'Right Justify
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   2
         Left            =   3600
         TabIndex        =   17
         Text            =   "0"
         Top             =   3360
         Width           =   1455
      End
      Begin VB.TextBox tAddPerson 
         Alignment       =   1  'Right Justify
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   2
         Left            =   3600
         TabIndex        =   16
         Text            =   "0"
         Top             =   4440
         Width           =   1455
      End
      Begin VB.TextBox tAddPerson 
         Alignment       =   1  'Right Justify
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   1
         Left            =   960
         TabIndex        =   13
         Text            =   "0"
         Top             =   4440
         Width           =   1455
      End
      Begin VB.TextBox tAddHour 
         Alignment       =   1  'Right Justify
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   1
         Left            =   960
         TabIndex        =   9
         Text            =   "0"
         Top             =   3360
         Width           =   1455
      End
      Begin VB.TextBox tPrice 
         Alignment       =   1  'Right Justify
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   2
         Left            =   3600
         TabIndex        =   8
         Text            =   "0"
         Top             =   1800
         Width           =   1455
      End
      Begin VB.TextBox tPrice 
         Alignment       =   1  'Right Justify
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   1
         Left            =   960
         TabIndex        =   1
         Text            =   "0"
         Top             =   1800
         Width           =   1455
      End
      Begin VB.Label lPrecio 
         Alignment       =   2  'Center
         Caption         =   "Hora adicional"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   7
         Left            =   3120
         TabIndex        =   19
         Top             =   2880
         Width           =   2295
      End
      Begin VB.Label lPrecio 
         Alignment       =   2  'Center
         Caption         =   "Persona adicional"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   2
         Left            =   3120
         TabIndex        =   18
         Top             =   3960
         Width           =   2295
      End
      Begin VB.Label lPrecio 
         Alignment       =   2  'Center
         Caption         =   "Persona adicional"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   6
         Left            =   480
         TabIndex        =   12
         Top             =   3960
         Width           =   2295
      End
      Begin VB.Label lPrecio 
         Caption         =   "Precios de los adicionales:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   5
         Left            =   240
         TabIndex        =   11
         Top             =   2400
         Width           =   5295
      End
      Begin VB.Label lPrecio 
         Alignment       =   2  'Center
         Caption         =   "Hora adicional"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   4
         Left            =   480
         TabIndex        =   10
         Top             =   2880
         Width           =   2295
      End
      Begin VB.Label lPrecio 
         Alignment       =   2  'Center
         Caption         =   "Paquete: Amanecida"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   3
         Left            =   3000
         TabIndex        =   7
         Top             =   1320
         Width           =   2535
      End
      Begin VB.Label lPrecio 
         Caption         =   "Precios de los paquetes de las habitaciones"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   1
         Left            =   240
         TabIndex        =   6
         Top             =   720
         Width           =   5295
      End
      Begin VB.Label lPrecio 
         Alignment       =   2  'Center
         Caption         =   "Paquete: 4 horas"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   0
         Left            =   480
         TabIndex        =   3
         Top             =   1320
         Width           =   2295
      End
   End
   Begin VB.Label titulo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Administración de precio de las habitaciones"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00985F00&
      Height          =   330
      Left            =   240
      TabIndex        =   2
      Top             =   120
      Width           =   5355
   End
   Begin XtremeSkinFramework.SkinFramework skinObject 
      Left            =   0
      Top             =   480
      _Version        =   851970
      _ExtentX        =   635
      _ExtentY        =   635
      _StockProps     =   0
   End
End
Attribute VB_Name = "frmRoomPrices"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public parent As frmMenu
'Conexión activa de BD  para asignar un servicio
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset

Private Sub cmdEndService_Click()

End Sub

Private Sub cmdSalir_Click()
Unload Me
End Sub

Private Sub cmdSave_Click()
If (Me.listRoomType.ListIndex = -1) Then
    MsgBox "Debes seleccionar un tipo de habitación para poder configurarle sus precios", vbCritical
    Exit Sub
End If

Dim idRoomType As Integer
idRoomType = Me.listRoomType.ListIndex + 1

SQL = "UPDATE package_x_type_room SET price = " & Me.tPrice(1) & ", price_add_hour = " & Me.tAddHour(1) & ", price_add_person = " & Me.tAddPerson(1) & " WHERE id_package=1 AND id_room_type = " & idRoomType & ""
conBd.Execute (SQL)

SQL = "UPDATE package_x_type_room SET price = " & Me.tPrice(2) & ", price_add_hour = " & Me.tAddHour(2) & ", price_add_person = " & Me.tAddPerson(2) & " WHERE id_package=2 AND id_room_type = " & idRoomType & ""
conBd.Execute (SQL)

MsgBox "Los precios de la habitación: " & Me.listRoomType.Text & " se actualiarón con éxito", vbInformation
Me.listRoomType.ListIndex = -1
Me.tPrice(1) = 0
Me.tPrice(2) = 0
Me.tAddHour(1) = 0
Me.tAddHour(2) = 0
Me.tAddPerson(1) = 0
Me.tAddPerson(2) = 0
End Sub

Private Sub Form_Load()
ModSkin.applyDefaultSkin Me, Me.skinObject
Call loadBd

SQL = SQL & " order by number ASC"
rec.Open "SELECT * FROM room_type ORDER BY id ASC", conBd, adOpenStatic, adLockOptimistic


Do Until rec.EOF
    Me.listRoomType.AddItem rec("description")
'    Set li = Me.listRoomType.ListItems.Add(, , rec("id"))
'        li.SubItems(1) = rec("user")
'        li.SubItems(2) = rec("number")
'        li.SubItems(3) = rec("type_room")
'        li.SubItems(4) = rec("package")
'        totalValueServices = totalValueServices + ModFormater.getValue(rec("net_value"), 0)
'        li.SubItems(5) = ModFormater.convertValueToCurrency(rec("net_value"), 0)
'        li.SubItems(6) = IIf(rec("status") = "ACT", "Activo", "Finalizado")
'        li.SubItems(7) = ModFormater.convertDateTime(rec("datetime_start_service"))
'        li.SubItems(8) = ModFormater.convertDateTime(rec("datetime_end_service"))
'        li.SubItems(9) = ModFormater.convertDateTime(rec("datetime_end_real_service"))
    rec.MoveNext
Loop
rec.Close
End Sub

Private Function loadBd()
'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient
End Function

Private Sub listRoomType_DblClick()

Dim packages() As CPackagexTypeRoom
packages = Ap.cPackagexTypeRoomStatic.findPackagesForRoomType(Me.listRoomType.ListIndex + 1)

For i = LBound(packages) + 1 To UBound(packages)
    Me.tPrice(packages(i).id_package) = packages(i).price
    Me.tAddHour(packages(i).id_package) = packages(i).priceAddHour
    Me.tAddPerson(packages(i).id_package) = packages(i).priceAddPerson
Next i
End Sub

Private Sub tAddHour_KeyPress(Index As Integer, KeyAscii As Integer)
KeyAscii = ModComponents.SoloNumeros(KeyAscii)
End Sub

Private Sub tAddPerson_KeyPress(Index As Integer, KeyAscii As Integer)
KeyAscii = ModComponents.SoloNumeros(KeyAscii)
End Sub

Private Sub tPrice_KeyPress(Index As Integer, KeyAscii As Integer)
KeyAscii = ModComponents.SoloNumeros(KeyAscii)
End Sub
