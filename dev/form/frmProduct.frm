VERSION 5.00
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "CODEJO~1.OCX"
Begin VB.Form frmProduct 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Productos"
   ClientHeight    =   4425
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   7770
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4425
   ScaleWidth      =   7770
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
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
      Left            =   3840
      TabIndex        =   13
      Top             =   3600
      Width           =   2535
   End
   Begin VB.CommandButton cmdEndService 
      Caption         =   "Guardar producto"
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
      Left            =   1200
      TabIndex        =   12
      Top             =   3600
      Width           =   2535
   End
   Begin VB.Frame Frame2 
      Caption         =   "Información del producto"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3015
      Left            =   480
      TabIndex        =   1
      Top             =   360
      Width           =   6495
      Begin VB.TextBox tPriceSale 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   2280
         TabIndex        =   11
         Top             =   2280
         Width           =   2175
      End
      Begin VB.TextBox tPriceBuy 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   2280
         TabIndex        =   10
         Top             =   1800
         Width           =   2175
      End
      Begin VB.TextBox tQuantityMin 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   2280
         TabIndex        =   9
         Top             =   1320
         Width           =   855
      End
      Begin VB.TextBox tQuantity 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   2280
         TabIndex        =   8
         Top             =   840
         Width           =   855
      End
      Begin VB.TextBox tDescription 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   2280
         TabIndex        =   7
         Top             =   360
         Width           =   3975
      End
      Begin VB.Label etiqueta 
         Caption         =   "Precio venta"
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
         Index           =   4
         Left            =   240
         TabIndex        =   6
         Top             =   2280
         Width           =   1935
      End
      Begin VB.Label etiqueta 
         Caption         =   "Precio compra"
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
         Left            =   240
         TabIndex        =   5
         Top             =   1800
         Width           =   1935
      End
      Begin VB.Label etiqueta 
         Caption         =   "Cantidad mínima"
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
         TabIndex        =   4
         Top             =   1320
         Width           =   1935
      End
      Begin VB.Label etiqueta 
         Caption         =   "Cantidad"
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
         Top             =   840
         Width           =   1935
      End
      Begin VB.Label etiqueta 
         Caption         =   "Descripción"
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
         TabIndex        =   2
         Top             =   360
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
   Begin VB.Label tIdProduct 
      BackColor       =   &H000000FF&
      Height          =   255
      Left            =   480
      TabIndex        =   0
      Top             =   120
      Visible         =   0   'False
      Width           =   375
   End
End
Attribute VB_Name = "frmProduct"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Conexión activa de BD  para asignar un servicio
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset

Private Sub cmdEndService_Click()
If Me.tDescription = "" Or Me.tQuantity = "" Or Me.tQuantityMin = "" Or Me.tPriceSale = "" Then
    MsgBox "Debe completar todos los campos para poder guardar el producto", vbCritical
    Exit Sub
End If

If Me.tIdProduct <> "" Then
    SQL = "UPDATE product SET description= '" & Me.tDescription & "',quantity=" & Me.tQuantity & ", quantity_min=" & Me.tQuantityMin & ",price_sale=" & Me.tPriceSale & " where id=" & Me.tIdProduct & ""
Else
    SQL = "INSERT INTO product " & _
    "(description, quantity, quantity_min, last_price_buy, price_sale) VALUES " & _
    "('" & Me.tDescription & "','" & Me.tQuantity & "','" & Me.tQuantityMin & "','" & Me.tPriceBuy & "','" & Me.tPriceSale & "');"
End If
conBd.Execute (SQL)

MsgBox "El producto se guardó con éxito", vbInformation
End Sub

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_Load()
ModSkin.applyDefaultSkin Me, Me.skinObject
Call loadBd
End Sub

Private Function loadBd()
'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient
End Function

Private Sub tIdProduct_Change()
If Me.tIdProduct <> "" Then
    
    rec.Open "SELECT * from product where id='" & tIdProduct & "'", conBd, adOpenStatic, adLockOptimistic
    
        Me.tDescription = rec("description")
        Me.tQuantity = rec("quantity")
        Me.tQuantityMin = rec("quantity_min")
        Me.tPriceBuy = ModFormater.getValue(rec("last_price_buy"), "")
        Me.tPriceSale = rec("price_sale")
   
    rec.Close

End If
End Sub

