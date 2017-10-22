VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "Mscomctl.ocx"
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "CODEJO~1.OCX"
Begin VB.Form frmTest 
   Caption         =   "Form1"
   ClientHeight    =   7695
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   13695
   LinkTopic       =   "Form1"
   ScaleHeight     =   7695
   ScaleWidth      =   13695
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   2775
      Left            =   360
      TabIndex        =   2
      Top             =   240
      Width           =   4095
      Begin VB.HScrollBar HScroll1 
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   2400
         Width           =   1935
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Index           =   0
         Left            =   1680
         TabIndex        =   7
         Text            =   "Text1"
         Top             =   240
         Width           =   2175
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check1"
         Height          =   255
         Index           =   0
         Left            =   1800
         TabIndex        =   6
         Top             =   840
         Width           =   975
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Option1"
         Height          =   255
         Index           =   0
         Left            =   3000
         TabIndex        =   5
         Top             =   840
         Width           =   975
      End
      Begin VB.ListBox List1 
         Height          =   1620
         ItemData        =   "frmTest.frx":0000
         Left            =   120
         List            =   "frmTest.frx":001C
         TabIndex        =   4
         Top             =   600
         Width           =   1575
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "frmTest.frx":0058
         Left            =   1800
         List            =   "frmTest.frx":0068
         TabIndex        =   3
         Text            =   "Combo1"
         Top             =   1920
         Width           =   1935
      End
      Begin VB.Timer Timer1 
         Interval        =   50
         Left            =   2160
         Top             =   2160
      End
      Begin MSComctlLib.ProgressBar ProgressBar1 
         Height          =   375
         Left            =   1800
         TabIndex        =   9
         Top             =   1320
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   661
         _Version        =   393216
         Appearance      =   1
      End
      Begin VB.Label Label2 
         Caption         =   "Label2"
         Height          =   375
         Index           =   0
         Left            =   240
         TabIndex        =   10
         Top             =   240
         Width           =   1215
      End
      Begin XtremeSkinFramework.SkinFramework skinObject 
         Left            =   2880
         Top             =   2280
         _Version        =   851970
         _ExtentX        =   635
         _ExtentY        =   635
         _StockProps     =   0
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   375
      Left            =   4680
      TabIndex        =   1
      Top             =   4800
      Width           =   2655
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   1680
      TabIndex        =   0
      Top             =   4800
      Width           =   2895
   End
   Begin MSComctlLib.TreeView TreeView1 
      Height          =   2535
      Left            =   4680
      TabIndex        =   11
      Top             =   360
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   4471
      _Version        =   393217
      Style           =   7
      Appearance      =   1
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   1575
      Left            =   360
      TabIndex        =   12
      Top             =   3120
      Width           =   8055
      _ExtentX        =   14208
      _ExtentY        =   2778
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   6
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "aaaaaaaa"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "sssssssssss"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "ddddddddddd"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   3
         Text            =   "fffffffffffffff"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   4
         Text            =   "fccccccccc"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   5
         Object.Width           =   2540
      EndProperty
   End
End
Attribute VB_Name = "frmTest"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
ModSkin.applyDefaultSkin Me, Me.skinObject
End Sub

