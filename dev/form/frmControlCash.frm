VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BD0C1912-66C3-49CC-8B12-7B347BF6C846}#13.2#0"; "Codejock.SkinFramework.v13.2.1.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmControlCash 
   BorderStyle     =   0  'None
   Caption         =   "Control de caja"
   ClientHeight    =   9855
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   16560
   LinkTopic       =   "Form1"
   ScaleHeight     =   9855
   ScaleWidth      =   16560
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame picDetails 
      BackColor       =   &H00926F47&
      Caption         =   "Detalles de la operación"
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
      Left            =   4800
      TabIndex        =   37
      Top             =   3720
      Visible         =   0   'False
      Width           =   6855
      Begin VB.CommandButton cmdQuitDetails 
         Caption         =   "Cancelar"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   2640
         TabIndex        =   38
         Top             =   3720
         Width           =   1815
      End
      Begin VB.Label lUser 
         BackStyle       =   0  'Transparent
         Caption         =   "Tipo"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   1560
         TabIndex        =   48
         Top             =   1560
         Width           =   3495
      End
      Begin VB.Label lValue 
         BackStyle       =   0  'Transparent
         Caption         =   "Tipo"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   1560
         TabIndex        =   47
         Top             =   1200
         Width           =   3495
      End
      Begin VB.Label lDate 
         BackStyle       =   0  'Transparent
         Caption         =   "Tipo"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   1560
         TabIndex        =   46
         Top             =   840
         Width           =   3495
      End
      Begin VB.Label lType 
         BackStyle       =   0  'Transparent
         Caption         =   "Tipo"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   1560
         TabIndex        =   45
         Top             =   480
         Width           =   3495
      End
      Begin VB.Line Line2 
         BorderColor     =   &H0058432C&
         X1              =   360
         X2              =   6360
         Y1              =   2280
         Y2              =   2280
      End
      Begin VB.Label lDescription 
         BackStyle       =   0  'Transparent
         Caption         =   "Descripción"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   1335
         Left            =   360
         TabIndex        =   44
         Top             =   2280
         Width           =   6015
      End
      Begin VB.Label label 
         BackStyle       =   0  'Transparent
         Caption         =   "Descripción"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   8
         Left            =   360
         TabIndex        =   43
         Top             =   1920
         Width           =   1455
      End
      Begin VB.Label label 
         BackStyle       =   0  'Transparent
         Caption         =   "Usuario"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   7
         Left            =   360
         TabIndex        =   42
         Top             =   1560
         Width           =   1095
      End
      Begin VB.Label label 
         BackStyle       =   0  'Transparent
         Caption         =   "Valor"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   6
         Left            =   360
         TabIndex        =   41
         Top             =   1200
         Width           =   1095
      End
      Begin VB.Label label 
         BackStyle       =   0  'Transparent
         Caption         =   "Fecha"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   5
         Left            =   360
         TabIndex        =   40
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label label 
         BackStyle       =   0  'Transparent
         Caption         =   "Tipo"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   4
         Left            =   360
         TabIndex        =   39
         Top             =   480
         Width           =   1095
      End
   End
   Begin VB.Frame picSave 
      BackColor       =   &H00C0C0C0&
      Height          =   3615
      Left            =   3600
      TabIndex        =   32
      Top             =   2040
      Visible         =   0   'False
      Width           =   6855
      Begin VB.CommandButton actCancel 
         Caption         =   "Cancelar"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   3840
         TabIndex        =   36
         Top             =   2880
         Width           =   1815
      End
      Begin VB.CommandButton actSave 
         Caption         =   "Completar operación"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   840
         TabIndex        =   35
         Top             =   2880
         Width           =   2895
      End
      Begin VB.TextBox tJustification 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2010
         Left            =   240
         MultiLine       =   -1  'True
         TabIndex        =   33
         Top             =   720
         Width           =   6375
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Justificación de la operación"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   34
         Top             =   240
         Width           =   3735
      End
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "Salir"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   13320
      TabIndex        =   31
      Top             =   120
      Width           =   1575
   End
   Begin VB.Frame frmEmpleados 
      Caption         =   "Historial de operaciones"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6900
      Left            =   360
      TabIndex        =   8
      Top             =   2280
      Width           =   14535
      Begin VB.Frame picDates 
         BackColor       =   &H00B18B60&
         Caption         =   "Filtrar operaciones por fechas"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2415
         Left            =   7440
         TabIndex        =   10
         Top             =   600
         Visible         =   0   'False
         Width           =   4695
         Begin VB.CommandButton cmdQueryByDates 
            Caption         =   "Consultar operaciones"
            BeginProperty Font 
               Name            =   "Calibri"
               Size            =   11.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   480
            TabIndex        =   12
            Top             =   1800
            Width           =   2295
         End
         Begin VB.CommandButton cmdQuitDates 
            Caption         =   "Salir"
            BeginProperty Font 
               Name            =   "Calibri"
               Size            =   11.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   2880
            TabIndex        =   11
            Top             =   1800
            Width           =   1215
         End
         Begin MSComCtl2.DTPicker tDateStart 
            Height          =   375
            Left            =   1320
            TabIndex        =   13
            Top             =   840
            Width           =   1335
            _ExtentX        =   2355
            _ExtentY        =   661
            _Version        =   393216
            Format          =   135856129
            CurrentDate     =   43142
         End
         Begin MSComCtl2.DTPicker tTimeStart 
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "HH:mm:ss"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   9226
               SubFormatType   =   4
            EndProperty
            Height          =   375
            Left            =   2760
            TabIndex        =   14
            Top             =   840
            Width           =   1455
            _ExtentX        =   2566
            _ExtentY        =   661
            _Version        =   393216
            CustomFormat    =   "HH:mm:ss"
            Format          =   135856130
            CurrentDate     =   43142
         End
         Begin MSComCtl2.DTPicker tDateEnd 
            Height          =   375
            Left            =   1320
            TabIndex        =   15
            Top             =   1320
            Width           =   1335
            _ExtentX        =   2355
            _ExtentY        =   661
            _Version        =   393216
            Format          =   135856129
            CurrentDate     =   43142
         End
         Begin MSComCtl2.DTPicker tTimeEnd 
            Height          =   375
            Left            =   2760
            TabIndex        =   16
            Top             =   1320
            Width           =   1455
            _ExtentX        =   2566
            _ExtentY        =   661
            _Version        =   393216
            Format          =   135856130
            CurrentDate     =   43142
         End
         Begin VB.Label label 
            BackStyle       =   0  'Transparent
            Caption         =   "desde:"
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
            Left            =   480
            TabIndex        =   19
            Top             =   840
            Width           =   735
         End
         Begin VB.Label label 
            BackStyle       =   0  'Transparent
            Caption         =   "hasta:"
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
            Left            =   480
            TabIndex        =   18
            Top             =   1320
            Width           =   735
         End
         Begin VB.Label label 
            BackStyle       =   0  'Transparent
            Caption         =   "Donde la fecha de inicio de la operación sea"
            BeginProperty Font 
               Name            =   "Calibri"
               Size            =   11.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Index           =   2
            Left            =   240
            TabIndex        =   17
            Top             =   360
            Width           =   4215
         End
      End
      Begin VB.TextBox tFiltro 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   0
         Left            =   60
         TabIndex        =   26
         Top             =   720
         Visible         =   0   'False
         Width           =   210
      End
      Begin VB.TextBox tFiltro 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   1
         Left            =   600
         TabIndex        =   25
         Top             =   720
         Width           =   375
      End
      Begin VB.TextBox tFiltro 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   2
         Left            =   960
         TabIndex        =   24
         Top             =   720
         Width           =   375
      End
      Begin VB.TextBox tFiltro 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   3
         Left            =   1320
         TabIndex        =   23
         Top             =   720
         Width           =   375
      End
      Begin VB.TextBox tFiltro 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   4
         Left            =   1680
         TabIndex        =   22
         Top             =   720
         Width           =   375
      End
      Begin VB.TextBox tFiltro 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   5
         Left            =   2040
         TabIndex        =   21
         Top             =   720
         Width           =   375
      End
      Begin VB.CommandButton cmdSinFiltros 
         Caption         =   "Limpiar filtros"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   12360
         TabIndex        =   20
         Top             =   240
         Width           =   1815
      End
      Begin VB.CommandButton cmdStartQueryDates 
         Caption         =   "Consultar por fechas"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   10080
         TabIndex        =   9
         Top             =   240
         Width           =   2055
      End
      Begin MSComctlLib.ListView list 
         Height          =   5295
         Left            =   240
         TabIndex        =   27
         Top             =   1080
         Width           =   14055
         _ExtentX        =   24791
         _ExtentY        =   9340
         View            =   3
         LabelEdit       =   1
         LabelWrap       =   -1  'True
         HideSelection   =   0   'False
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   6
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Id"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Tipo Operación"
            Object.Width           =   5644
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Fecha"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            SubItemIndex    =   3
            Text            =   "Valor"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "Usuario"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Text            =   "Descripción"
            Object.Width           =   0
         EndProperty
      End
      Begin VB.Label tTotalRows 
         Alignment       =   1  'Right Justify
         Caption         =   "900"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H009F4320&
         Height          =   375
         Left            =   240
         TabIndex        =   30
         Top             =   6420
         Width           =   375
      End
      Begin VB.Label label 
         Caption         =   "operaciones listadas"
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
         Left            =   690
         TabIndex        =   29
         Top             =   6420
         Width           =   2085
      End
      Begin VB.Label tTotal 
         Alignment       =   1  'Right Justify
         Caption         =   "900"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H009F4320&
         Height          =   375
         Left            =   3360
         TabIndex        =   28
         Top             =   6420
         Width           =   375
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Operaciones de caja"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   360
      TabIndex        =   2
      Top             =   600
      Width           =   14535
      Begin VB.CommandButton cmdApply 
         Caption         =   "Guardar operación"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   4920
         TabIndex        =   1
         Top             =   960
         Width           =   2655
      End
      Begin VB.TextBox tValue 
         Alignment       =   1  'Right Justify
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2520
         TabIndex        =   0
         Top             =   960
         Width           =   2295
      End
      Begin VB.Label tValueCash 
         Alignment       =   2  'Center
         Caption         =   "$0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H002BB509&
         Height          =   615
         Left            =   11640
         TabIndex        =   7
         Top             =   840
         Width           =   2655
      End
      Begin VB.Label Label1 
         Caption         =   "Valor actual en la caja"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   11640
         TabIndex        =   6
         Top             =   360
         Width           =   2655
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00721F21&
         BorderWidth     =   2
         X1              =   11400
         X2              =   11400
         Y1              =   360
         Y2              =   1440
      End
      Begin VB.Label Label2 
         Caption         =   "Seleccione el tipo de operación"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   5
         Top             =   360
         Width           =   3735
      End
      Begin VB.Label lOperation 
         Caption         =   "Valor del ingreso"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   4
         Top             =   960
         Width           =   2175
      End
      Begin VB.Image actGasto 
         Height          =   465
         Left            =   8880
         Picture         =   "frmControlCash.frx":0000
         Top             =   360
         Width           =   2295
      End
      Begin VB.Image actRecaudo 
         Height          =   465
         Left            =   6480
         Picture         =   "frmControlCash.frx":37F6
         Top             =   360
         Width           =   2295
      End
      Begin VB.Image actIngreso 
         Height          =   465
         Left            =   4080
         Picture         =   "frmControlCash.frx":6FEC
         Top             =   360
         Width           =   2295
      End
   End
   Begin VB.Label titulo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Control de Caja"
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
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   1890
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
Attribute VB_Name = "frmControlCash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Conexión activa de BD  para asignar un servicio
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset

'Tipo de la operación a realizar
Dim typeOperation As String
Dim fieldOperation As String
Dim totalOperations As Double

'SQL actual para los reportes
Dim baseSQL As String
Dim filterDates As Boolean
Dim filtersApplied As Integer


Private Sub actCancel_Click()
Me.tJustification = ""
Me.picSave.Visible = False
End Sub

Private Sub actGasto_Click()
typeOperation = "GASTO"
fieldOperation = "total_expenses"
Me.lOperation = "Valor del gasto"
Me.tValue = ""
Me.tValue.SetFocus
End Sub

Private Sub actIngreso_Click()
typeOperation = "INGRESO"
fieldOperation = "total_income"
Me.lOperation = "Valor del ingreso"
Me.tValue = ""
End Sub

Private Sub actRecaudo_Click()
typeOperation = "RECAUDO"
fieldOperation = "total_collection"
Me.lOperation = "Valor del recaudo"
Me.tValue = ""
Me.tValue.SetFocus
End Sub

Private Sub actSave_Click()
Dim valueCash As Double
Dim dateTimeOperationFormated As String
dateTimeOperationFormated = Format(Now(), "yyyy-MM-dd HH:mm:ss")
valueCash = ModFormater.convertCurrencyToValue(Me.tValue)

SQL = "INSERT INTO cash_operations " & _
    "(type, date, value, id_user,description) VALUES " & _
    "('" & typeOperation & "','" & dateTimeOperationFormated & "'," & valueCash & "," & Ap.cUserLogued.id & ",'" & Me.tJustification & "');"
conBd.Execute (SQL)

If typeOperation = "INGRESO" Then
    SQL = "UPDATE cash SET cash = cash + " & valueCash & "," & fieldOperation & "=" & fieldOperation & "+1"
Else
    SQL = "UPDATE cash SET cash = cash - " & valueCash & "," & fieldOperation & "=" & fieldOperation & "+1"
End If
conBd.Execute (SQL)

Me.tValue = ""
Me.tJustification = ""
Me.picSave.Visible = False
Call queryWithParameters
Call loadInfoCash
End Sub

Private Sub cmdApply_Click()
Me.picSave.Visible = True
Me.tJustification.SetFocus
End Sub

Private Sub cmdExit_Click()
Unload Me
End Sub

Private Sub cmdQueryByDates_Click()
Dim dateTimeStart As String
Dim dateTimeEnd As String
dateTimeStart = Format(Me.tDateStart.value, "yyyy-MM-dd") & " " & Format(Me.tTimeStart.value, "HH:mm:ss")
dateTimeEnd = Format(Me.tDateEnd.value, "yyyy-MM-dd") & " " & Format(Me.tTimeEnd.value, "HH:mm:ss")

SQL = "select c.*,u.username from cash_operations c inner join user u on c.id_user = u.id WHERE date>='" & dateTimeStart & "' and date<='" & dateTimeEnd & "'"
Call loadList(SQL)

filterDates = True
Me.picDates.Visible = False
End Sub

Private Sub cmdQuitDetails_Click()
Me.picDetails.Visible = False
End Sub

Private Sub cmdSinFiltros_Click()
ModComponents.cleanFilters tFiltro, -1
filterDates = 0
filtersApplied = 0
Me.list.Sorted = False
Me.reloadForm
End Sub

Private Sub cmdStartQueryDates_Click()
picDates.Visible = True
End Sub

Private Sub Command1_Click()

End Sub

Private Sub Form_Load()
ModSkin.applyDefaultSkin Me, Me.skinObject
Call loadBd

'width for the columns
Dim widthTotal As Double
Dim widthCols(5) As Double

widthTotal = Me.list.Width
widthCols(1) = widthTotal * 0 'id
widthCols(2) = widthTotal * 0.2 'tipo
widthCols(3) = widthTotal * 0.3 'fecha
widthCols(4) = widthTotal * 0.29 'valor
widthCols(5) = widthTotal * 0.2 'usuario

ModComponents.setWidthForColumnsAndFilters tFiltro, list, widthCols

Me.tFiltro(1).Visible = False
Me.tFiltro(3).Visible = False
Me.tDateStart = Now
Me.tDateEnd = Now
Me.tTimeEnd = Now
filterDates = False
filtersApplied = 0

'Configuracion de los totalizadores
'Total valor servicios
Me.tTotal.left = Me.tFiltro(4).left
Me.tTotal.Width = Me.tFiltro(4).Width

Call loadInfoCash

'Iniciar
Me.reloadForm
seleccion = 0

Call actIngreso_Click
End Sub

Private Function loadBd()
'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient
End Function

Private Sub list_DblClick()
If Me.list.ListItems.Count = 0 Then Exit Sub
Me.lType = Me.list.SelectedItem.SubItems(1)
Me.lDate = Me.list.SelectedItem.SubItems(2)
Me.lValue = Me.list.SelectedItem.SubItems(3)
Me.lUser = Me.list.SelectedItem.SubItems(4)
Me.lDescription = Me.list.SelectedItem.SubItems(5)
Me.picDetails.Visible = True
End Sub

Private Sub tValue_GotFocus()
Me.tValue = ModFormater.convertCurrencyToValue(Me.tValue)
Me.tValue.SelStart = Len(Me.tValue)
End Sub

Private Sub tValue_KeyPress(KeyAscii As Integer)
KeyAscii = ModComponents.SoloNumeros(KeyAscii)
End Sub

Private Sub tValue_LostFocus()
Me.tValue = ModFormater.convertValueToCurrency(Me.tValue, 0)
End Sub

Public Sub reloadForm()
Call loadList("select c.*,u.username from cash_operations c inner join user u on c.id_user = u.id")
End Sub

Private Sub loadList(SQL As String)
Dim totalValueServices As Double
totalOperations = 0

SQL = SQL & " order by id DESC"
rec.Open SQL, conBd, adOpenStatic, adLockOptimistic
Me.list.ListItems.Clear
Do Until rec.EOF
    Set li = Me.list.ListItems.Add(, , rec("id"))
        li.SubItems(1) = rec("type")
        li.SubItems(2) = rec("date")
        li.SubItems(3) = ModFormater.convertValueToCurrency(rec("value"), 0)
        li.SubItems(4) = rec("username")
        li.SubItems(5) = ModFormater.getValue(rec("description"), "")
        totalOperations = totalOperations + ModFormater.getValue(rec("value"), 0)
    rec.MoveNext
Loop
rec.Close

Me.tTotal = ModFormater.convertValueToCurrency(totalOperations, 0)
Me.tTotalRows = Me.list.ListItems.Count
End Sub

Private Sub tFiltro_Change(Index As Integer)
If ModComponents.cleaningFilters Then Exit Sub
Call queryWithParameters
End Sub

'Agrega los parametros al SQL para su cosulta según los criterios de filtro
Private Function queryWithParameters()

SQL = "select c.*,u.username from cash_operations c inner join user u on c.id_user = u.id"

'Verifica y agrega los criterios de fechas
If filterDates = True Then
    Dim dateTimeStart As String
    Dim dateTimeEnd As String
    dateTimeStart = Format(Me.tDateStart.value, "yyyy-MM-dd") & " " & Format(Me.tTimeStart.value, "HH:mm:ss")
    dateTimeEnd = Format(Me.tDateEnd.value, "yyyy-MM-dd") & " " & Format(Me.tTimeEnd.value, "HH:mm:ss")
    
    addParameter " date>='" & dateTimeStart & "' and date<='" & dateTimeEnd & "'"
End If

'Verifica y agrega los criterios de los filtros
On Error GoTo control
Dim countFilters As Integer
For countFilters = 0 To Me.tFiltro.Count - 1
    If Me.tFiltro(countFilters).Text <> "" Then
        Select Case countFilters
            Case 2
                addParameter "type like '%" & tFiltro(countFilters) & "%'"
            Case 4
                addParameter "value like '%" & tFiltro(countFilters) & "%'"
            Case 5
                addParameter "username like '%" & tFiltro(countFilters) & "%'"
        End Select
    End If
Next
Call loadList(SQL)
filtersApplied = 0
Exit Function
control:
If Err.Number = 503 Then
    Resume Next
End If
End Function

Private Function addParameter(parameter As String)
If filtersApplied = 0 Then
    SQL = SQL & " WHERE "
Else
    SQL = SQL & " AND "
End If
SQL = SQL & parameter
filtersApplied = filtersApplied + 1
End Function

Private Sub loadInfoCash()
rec.Open "SELECT * from cash", conBd, adOpenStatic, adLockOptimistic
If rec.RecordCount > 0 Then
    Me.tValueCash = ModFormater.convertValueToCurrency(rec("cash"), 0)
    rec.MoveNext
End If
rec.Close
End Sub

Private Sub tValueCash_Change()
If (ModFormater.convertCurrencyToValue(Me.tValueCash) < 0) Then
    Me.tValueCash.ForeColor = vbRed
Else
    Me.tValueCash.ForeColor = &H2BB509
End If
End Sub
