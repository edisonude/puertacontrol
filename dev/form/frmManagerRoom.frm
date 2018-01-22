VERSION 5.00
Begin VB.Form frmManagerRoom 
   BackColor       =   &H00404040&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   9630
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   16500
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmManagerRoom.frx":0000
   ScaleHeight     =   9630
   ScaleWidth      =   16500
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   27
      Left            =   10410
      ScaleHeight     =   2190
      ScaleWidth      =   6045
      TabIndex        =   208
      Top             =   105
      Width           =   6045
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   27
         Left            =   0
         TabIndex        =   269
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   27
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":209612
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   27
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":20BFAC
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   27
         Left            =   0
         TabIndex        =   242
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "503"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   27
         Left            =   30
         TabIndex        =   215
         Top             =   15
         Width           =   855
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   27
         Left            =   30
         TabIndex        =   214
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   27
         Left            =   60
         Picture         =   "frmManagerRoom.frx":20E826
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   27
         Left            =   30
         Picture         =   "frmManagerRoom.frx":20F144
         Top             =   1710
         Width           =   1950
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   27
         Left            =   240
         TabIndex        =   213
         Top             =   1040
         Width           =   945
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   27
         Left            =   1230
         TabIndex        =   212
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   27
         Left            =   240
         TabIndex        =   211
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   27
         Left            =   1230
         TabIndex        =   210
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   27
         Left            =   1425
         TabIndex        =   209
         Top             =   120
         Width           =   495
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   27
         Left            =   30
         Picture         =   "frmManagerRoom.frx":211ADE
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   27
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":214478
         Top             =   90
         Width           =   900
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H00CD7C10&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   26
      Left            =   6360
      ScaleHeight     =   2190
      ScaleWidth      =   4020
      TabIndex        =   200
      Top             =   105
      Width           =   4020
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   26
         Left            =   0
         TabIndex        =   268
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   26
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":215F72
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   26
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":21890C
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   26
         Left            =   0
         TabIndex        =   241
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "502"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   26
         Left            =   30
         TabIndex        =   207
         Top             =   15
         Width           =   855
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   26
         Left            =   30
         TabIndex        =   206
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   26
         Left            =   60
         Picture         =   "frmManagerRoom.frx":21B186
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   26
         Left            =   30
         Picture         =   "frmManagerRoom.frx":21BAA4
         Top             =   1710
         Width           =   1950
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   26
         Left            =   240
         TabIndex        =   205
         Top             =   1040
         Width           =   945
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   26
         Left            =   1230
         TabIndex        =   204
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   26
         Left            =   240
         TabIndex        =   203
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   26
         Left            =   1230
         TabIndex        =   202
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   26
         Left            =   1425
         TabIndex        =   201
         Top             =   120
         Width           =   495
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   26
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":21E43E
         Top             =   90
         Width           =   900
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   26
         Left            =   30
         Picture         =   "frmManagerRoom.frx":21FF38
         Top             =   1035
         Width           =   1950
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H000000C0&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   25
      Left            =   270
      ScaleHeight     =   2190
      ScaleWidth      =   6045
      TabIndex        =   192
      Top             =   105
      Width           =   6045
      Begin VB.Timer timeReload 
         Interval        =   5000
         Left            =   2400
         Top             =   120
      End
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   25
         Left            =   0
         TabIndex        =   267
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   25
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2228D2
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   25
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":22526C
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   25
         Left            =   0
         TabIndex        =   240
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   25
         Left            =   1425
         TabIndex        =   199
         Top             =   120
         Width           =   495
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   25
         Left            =   1230
         TabIndex        =   198
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   25
         Left            =   240
         TabIndex        =   197
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   25
         Left            =   1230
         TabIndex        =   196
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   25
         Left            =   240
         TabIndex        =   195
         Top             =   1040
         Width           =   945
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   25
         Left            =   60
         Picture         =   "frmManagerRoom.frx":227AE6
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   25
         Left            =   30
         Picture         =   "frmManagerRoom.frx":228404
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   25
         Left            =   30
         TabIndex        =   194
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   25
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":22AD9E
         Top             =   90
         Width           =   900
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "501"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   25
         Left            =   30
         TabIndex        =   193
         Top             =   15
         Width           =   855
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   25
         Left            =   30
         Picture         =   "frmManagerRoom.frx":22C898
         Top             =   1710
         Width           =   1950
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   24
      Left            =   14460
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   184
      Top             =   2325
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   24
         Left            =   0
         TabIndex        =   266
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   24
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":22F232
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   24
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":231BCC
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   24
         Left            =   0
         TabIndex        =   239
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   24
         Left            =   1425
         TabIndex        =   191
         Top             =   120
         Width           =   495
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   24
         Left            =   1230
         TabIndex        =   190
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   24
         Left            =   240
         TabIndex        =   189
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   24
         Left            =   1230
         TabIndex        =   188
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   24
         Left            =   240
         TabIndex        =   187
         Top             =   1040
         Width           =   945
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   24
         Left            =   60
         Picture         =   "frmManagerRoom.frx":234446
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   24
         Left            =   30
         Picture         =   "frmManagerRoom.frx":234D64
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   24
         Left            =   30
         TabIndex        =   186
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   24
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2376FE
         Top             =   90
         Width           =   900
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "408"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   24
         Left            =   30
         TabIndex        =   185
         Top             =   15
         Width           =   855
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   24
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2391F8
         Top             =   1710
         Width           =   1950
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   23
      Left            =   12435
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   176
      Top             =   2325
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   23
         Left            =   0
         TabIndex        =   265
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   23
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":23BB92
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   23
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":23E52C
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   23
         Left            =   0
         TabIndex        =   238
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   23
         Left            =   1425
         TabIndex        =   183
         Top             =   120
         Width           =   495
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   23
         Left            =   1230
         TabIndex        =   182
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   23
         Left            =   240
         TabIndex        =   181
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   23
         Left            =   1230
         TabIndex        =   180
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   23
         Left            =   240
         TabIndex        =   179
         Top             =   1040
         Width           =   945
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   23
         Left            =   60
         Picture         =   "frmManagerRoom.frx":240DA6
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   23
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2416C4
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   23
         Left            =   30
         TabIndex        =   178
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   23
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":24405E
         Top             =   90
         Width           =   900
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "407"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   23
         Left            =   30
         TabIndex        =   177
         Top             =   15
         Width           =   855
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   23
         Left            =   30
         Picture         =   "frmManagerRoom.frx":245B58
         Top             =   1710
         Width           =   1950
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   22
      Left            =   10410
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   168
      Top             =   2325
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   22
         Left            =   0
         TabIndex        =   264
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   22
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2484F2
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   22
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":24AE8C
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   22
         Left            =   0
         TabIndex        =   237
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   22
         Left            =   1440
         TabIndex        =   175
         Top             =   120
         Width           =   495
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   22
         Left            =   1230
         TabIndex        =   174
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   22
         Left            =   240
         TabIndex        =   173
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   22
         Left            =   1230
         TabIndex        =   172
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   22
         Left            =   240
         TabIndex        =   171
         Top             =   1040
         Width           =   945
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   22
         Left            =   60
         Picture         =   "frmManagerRoom.frx":24D706
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   22
         Left            =   30
         Picture         =   "frmManagerRoom.frx":24E024
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   22
         Left            =   30
         TabIndex        =   170
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   22
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2509BE
         Top             =   90
         Width           =   900
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "406"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   22
         Left            =   30
         TabIndex        =   169
         Top             =   15
         Width           =   855
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   22
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2524B8
         Top             =   1710
         Width           =   1950
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   21
      Left            =   8385
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   160
      Top             =   2325
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   21
         Left            =   0
         TabIndex        =   263
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   21
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":254E52
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   21
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2577EC
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   21
         Left            =   0
         TabIndex        =   236
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   21
         Left            =   1425
         TabIndex        =   167
         Top             =   120
         Width           =   495
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   21
         Left            =   1230
         TabIndex        =   166
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   21
         Left            =   240
         TabIndex        =   165
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   21
         Left            =   1230
         TabIndex        =   164
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   21
         Left            =   240
         TabIndex        =   163
         Top             =   1040
         Width           =   945
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   21
         Left            =   60
         Picture         =   "frmManagerRoom.frx":25A066
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   21
         Left            =   30
         Picture         =   "frmManagerRoom.frx":25A984
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   21
         Left            =   30
         TabIndex        =   162
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   21
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":25D31E
         Top             =   90
         Width           =   900
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "405"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   21
         Left            =   30
         TabIndex        =   161
         Top             =   15
         Width           =   855
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   21
         Left            =   0
         Picture         =   "frmManagerRoom.frx":25EE18
         Top             =   1710
         Width           =   1950
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   20
      Left            =   6360
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   152
      Top             =   2325
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   20
         Left            =   0
         TabIndex        =   262
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   20
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2617B2
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   20
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":26414C
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   20
         Left            =   0
         TabIndex        =   235
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   20
         Left            =   1425
         TabIndex        =   159
         Top             =   120
         Width           =   495
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   20
         Left            =   1230
         TabIndex        =   158
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   20
         Left            =   240
         TabIndex        =   157
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   20
         Left            =   1230
         TabIndex        =   156
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   20
         Left            =   240
         TabIndex        =   155
         Top             =   1040
         Width           =   945
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   20
         Left            =   60
         Picture         =   "frmManagerRoom.frx":2669C6
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   20
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2672E4
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   20
         Left            =   30
         TabIndex        =   154
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   20
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":269C7E
         Top             =   90
         Width           =   900
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "404"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   20
         Left            =   30
         TabIndex        =   153
         Top             =   0
         Width           =   855
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   20
         Left            =   30
         Picture         =   "frmManagerRoom.frx":26B778
         Top             =   1710
         Width           =   1950
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   19
      Left            =   4335
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   144
      Top             =   2325
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   19
         Left            =   0
         TabIndex        =   261
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   19
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":26E112
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   19
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":270AAC
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   19
         Left            =   0
         TabIndex        =   234
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   19
         Left            =   1425
         TabIndex        =   151
         Top             =   120
         Width           =   495
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   19
         Left            =   1230
         TabIndex        =   150
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   19
         Left            =   240
         TabIndex        =   149
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   19
         Left            =   1230
         TabIndex        =   148
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   19
         Left            =   240
         TabIndex        =   147
         Top             =   1040
         Width           =   945
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   19
         Left            =   60
         Picture         =   "frmManagerRoom.frx":273326
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   19
         Left            =   30
         Picture         =   "frmManagerRoom.frx":273C44
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   19
         Left            =   30
         TabIndex        =   146
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   19
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2765DE
         Top             =   90
         Width           =   900
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "403"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   19
         Left            =   30
         TabIndex        =   145
         Top             =   15
         Width           =   855
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   19
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2780D8
         Top             =   1710
         Width           =   1950
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   18
      Left            =   2310
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   136
      Top             =   2325
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   18
         Left            =   0
         TabIndex        =   260
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   18
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":27AA72
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   18
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":27D40C
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   18
         Left            =   0
         TabIndex        =   233
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   18
         Left            =   1425
         TabIndex        =   143
         Top             =   120
         Width           =   495
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   18
         Left            =   1230
         TabIndex        =   142
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   18
         Left            =   240
         TabIndex        =   141
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   18
         Left            =   1230
         TabIndex        =   140
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   18
         Left            =   240
         TabIndex        =   139
         Top             =   1040
         Width           =   945
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   18
         Left            =   60
         Picture         =   "frmManagerRoom.frx":27FC86
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   18
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2805A4
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   18
         Left            =   30
         TabIndex        =   138
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   18
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":282F3E
         Top             =   90
         Width           =   900
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "402"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   18
         Left            =   30
         TabIndex        =   137
         Top             =   15
         Width           =   855
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   18
         Left            =   30
         Picture         =   "frmManagerRoom.frx":284A38
         Top             =   1710
         Width           =   1950
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   17
      Left            =   285
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   128
      Top             =   2325
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   17
         Left            =   0
         TabIndex        =   259
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   17
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2873D2
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   17
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":289D6C
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   17
         Left            =   0
         TabIndex        =   232
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "401"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   17
         Left            =   30
         TabIndex        =   135
         Top             =   15
         Width           =   855
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   17
         Left            =   30
         TabIndex        =   134
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   17
         Left            =   60
         Picture         =   "frmManagerRoom.frx":28C5E6
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   17
         Left            =   30
         Picture         =   "frmManagerRoom.frx":28CF04
         Top             =   1710
         Width           =   1950
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   17
         Left            =   225
         TabIndex        =   133
         Top             =   1040
         Width           =   945
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   17
         Left            =   1230
         TabIndex        =   132
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   17
         Left            =   240
         TabIndex        =   131
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   17
         Left            =   1230
         TabIndex        =   130
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   17
         Left            =   1425
         TabIndex        =   129
         Top             =   120
         Width           =   495
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   17
         Left            =   30
         Picture         =   "frmManagerRoom.frx":28F89E
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   17
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":292238
         Top             =   90
         Width           =   900
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   16
      Left            =   14460
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   120
      Top             =   4545
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   16
         Left            =   0
         TabIndex        =   258
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   16
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":293D32
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   16
         Left            =   1560
         Picture         =   "frmManagerRoom.frx":2966CC
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   16
         Left            =   0
         TabIndex        =   231
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   16
         Left            =   1425
         TabIndex        =   127
         Top             =   120
         Width           =   495
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   16
         Left            =   1230
         TabIndex        =   126
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   16
         Left            =   240
         TabIndex        =   125
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   16
         Left            =   1230
         TabIndex        =   124
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   16
         Left            =   240
         TabIndex        =   123
         Top             =   1040
         Width           =   945
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   16
         Left            =   60
         Picture         =   "frmManagerRoom.frx":298F46
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   16
         Left            =   30
         Picture         =   "frmManagerRoom.frx":299864
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   16
         Left            =   30
         TabIndex        =   122
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   16
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":29C1FE
         Top             =   90
         Width           =   900
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "308"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   16
         Left            =   30
         TabIndex        =   121
         Top             =   15
         Width           =   855
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   16
         Left            =   30
         Picture         =   "frmManagerRoom.frx":29DCF8
         Top             =   1710
         Width           =   1950
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   15
      Left            =   12435
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   112
      Top             =   4545
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   15
         Left            =   0
         TabIndex        =   257
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   15
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2A0692
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   15
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2A302C
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   15
         Left            =   0
         TabIndex        =   230
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   15
         Left            =   1425
         TabIndex        =   119
         Top             =   120
         Width           =   495
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   15
         Left            =   1230
         TabIndex        =   118
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   15
         Left            =   240
         TabIndex        =   117
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   15
         Left            =   1230
         TabIndex        =   116
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   15
         Left            =   240
         TabIndex        =   115
         Top             =   1040
         Width           =   945
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   15
         Left            =   60
         Picture         =   "frmManagerRoom.frx":2A58A6
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   15
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2A61C4
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   15
         Left            =   30
         TabIndex        =   114
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   15
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2A8B5E
         Top             =   90
         Width           =   900
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "307"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   15
         Left            =   30
         TabIndex        =   113
         Top             =   0
         Width           =   855
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   15
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2AA658
         Top             =   1710
         Width           =   1950
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   14
      Left            =   10410
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   104
      Top             =   4545
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   14
         Left            =   0
         TabIndex        =   256
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   14
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2ACFF2
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   14
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2AF98C
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   14
         Left            =   0
         TabIndex        =   229
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   14
         Left            =   1425
         TabIndex        =   111
         Top             =   120
         Width           =   495
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   14
         Left            =   1230
         TabIndex        =   110
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   14
         Left            =   240
         TabIndex        =   109
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   14
         Left            =   1230
         TabIndex        =   108
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   14
         Left            =   240
         TabIndex        =   107
         Top             =   1040
         Width           =   945
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   14
         Left            =   60
         Picture         =   "frmManagerRoom.frx":2B2206
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   14
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2B2B24
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   14
         Left            =   30
         TabIndex        =   106
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   14
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2B54BE
         Top             =   90
         Width           =   900
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "306"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   14
         Left            =   30
         TabIndex        =   105
         Top             =   15
         Width           =   855
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   14
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2B6FB8
         Top             =   1710
         Width           =   1950
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   13
      Left            =   8400
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   96
      Top             =   4545
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   13
         Left            =   0
         TabIndex        =   255
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   13
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2B9952
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   13
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2BC2EC
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   13
         Left            =   0
         TabIndex        =   228
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   13
         Left            =   1425
         TabIndex        =   103
         Top             =   120
         Width           =   495
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   13
         Left            =   1230
         TabIndex        =   102
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   13
         Left            =   240
         TabIndex        =   101
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   13
         Left            =   1230
         TabIndex        =   100
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   13
         Left            =   240
         TabIndex        =   99
         Top             =   1040
         Width           =   945
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   13
         Left            =   60
         Picture         =   "frmManagerRoom.frx":2BEB66
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   13
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2BF484
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   13
         Left            =   30
         TabIndex        =   98
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   13
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2C1E1E
         Top             =   90
         Width           =   900
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "305"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   13
         Left            =   30
         TabIndex        =   97
         Top             =   15
         Width           =   855
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   13
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2C3918
         Top             =   1710
         Width           =   1950
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   12
      Left            =   6360
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   88
      Top             =   4545
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   12
         Left            =   0
         TabIndex        =   254
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   12
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2C62B2
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   12
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2C8C4C
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   12
         Left            =   0
         TabIndex        =   227
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   12
         Left            =   1425
         TabIndex        =   95
         Top             =   120
         Width           =   495
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   12
         Left            =   1230
         TabIndex        =   94
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   12
         Left            =   240
         TabIndex        =   93
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   12
         Left            =   1230
         TabIndex        =   92
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   12
         Left            =   225
         TabIndex        =   91
         Top             =   1040
         Width           =   945
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   12
         Left            =   60
         Picture         =   "frmManagerRoom.frx":2CB4C6
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   12
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2CBDE4
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   12
         Left            =   30
         TabIndex        =   90
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   12
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2CE77E
         Top             =   90
         Width           =   900
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "304"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   12
         Left            =   30
         TabIndex        =   89
         Top             =   15
         Width           =   855
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   12
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2D0278
         Top             =   1710
         Width           =   1950
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   11
      Left            =   4335
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   80
      Top             =   4545
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   11
         Left            =   0
         TabIndex        =   253
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   11
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2D2C12
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   11
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2D55AC
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   11
         Left            =   0
         TabIndex        =   226
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   11
         Left            =   1425
         TabIndex        =   87
         Top             =   120
         Width           =   495
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   11
         Left            =   1230
         TabIndex        =   86
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   11
         Left            =   240
         TabIndex        =   85
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   11
         Left            =   1230
         TabIndex        =   84
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   11
         Left            =   240
         TabIndex        =   83
         Top             =   1040
         Width           =   945
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   11
         Left            =   60
         Picture         =   "frmManagerRoom.frx":2D7E26
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   11
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2D8744
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   11
         Left            =   30
         TabIndex        =   82
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   11
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2DB0DE
         Top             =   90
         Width           =   900
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "303"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   11
         Left            =   30
         TabIndex        =   81
         Top             =   15
         Width           =   855
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   11
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2DCBD8
         Top             =   1710
         Width           =   1950
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   10
      Left            =   2310
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   72
      Top             =   4545
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   10
         Left            =   0
         TabIndex        =   252
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   10
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2DF572
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   10
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2E1F0C
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   10
         Left            =   0
         TabIndex        =   225
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   10
         Left            =   1425
         TabIndex        =   79
         Top             =   120
         Width           =   495
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   10
         Left            =   1230
         TabIndex        =   78
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   10
         Left            =   240
         TabIndex        =   77
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   10
         Left            =   1230
         TabIndex        =   76
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   10
         Left            =   240
         TabIndex        =   75
         Top             =   1040
         Width           =   945
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   10
         Left            =   60
         Picture         =   "frmManagerRoom.frx":2E4786
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   10
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2E50A4
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   10
         Left            =   30
         TabIndex        =   74
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   10
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2E7A3E
         Top             =   90
         Width           =   900
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "302"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   10
         Left            =   30
         TabIndex        =   73
         Top             =   15
         Width           =   855
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   10
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2E9538
         Top             =   1710
         Width           =   1950
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   9
      Left            =   285
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   64
      Top             =   4545
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   9
         Left            =   0
         TabIndex        =   251
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   9
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2EBED2
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   9
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2EE86C
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   9
         Left            =   0
         TabIndex        =   224
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "301"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   9
         Left            =   30
         TabIndex        =   71
         Top             =   15
         Width           =   855
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   9
         Left            =   30
         TabIndex        =   70
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   9
         Left            =   60
         Picture         =   "frmManagerRoom.frx":2F10E6
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   9
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2F1A04
         Top             =   1710
         Width           =   1950
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   9
         Left            =   240
         TabIndex        =   69
         Top             =   1040
         Width           =   945
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   9
         Left            =   1230
         TabIndex        =   68
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   9
         Left            =   240
         TabIndex        =   67
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   9
         Left            =   1230
         TabIndex        =   66
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   9
         Left            =   1425
         TabIndex        =   65
         Top             =   120
         Width           =   495
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   9
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2F439E
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   9
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2F6D38
         Top             =   90
         Width           =   900
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   8
      Left            =   14460
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   56
      Top             =   6765
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   8
         Left            =   0
         TabIndex        =   250
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   8
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2F8832
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   8
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2FB1CC
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   8
         Left            =   0
         TabIndex        =   223
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "208"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   8
         Left            =   30
         TabIndex        =   63
         Top             =   15
         Width           =   855
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   8
         Left            =   30
         TabIndex        =   62
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   8
         Left            =   60
         Picture         =   "frmManagerRoom.frx":2FDA46
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   8
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2FE364
         Top             =   1710
         Width           =   1950
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   8
         Left            =   240
         TabIndex        =   61
         Top             =   1040
         Width           =   945
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   8
         Left            =   1230
         TabIndex        =   60
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   8
         Left            =   240
         TabIndex        =   59
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   8
         Left            =   1230
         TabIndex        =   58
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   8
         Left            =   1425
         TabIndex        =   57
         Top             =   120
         Width           =   495
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   8
         Left            =   45
         Picture         =   "frmManagerRoom.frx":300CFE
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   8
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":303698
         Top             =   90
         Width           =   900
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   7
      Left            =   12435
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   48
      Top             =   6765
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   7
         Left            =   0
         TabIndex        =   249
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   7
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":305192
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   7
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":307B2C
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   7
         Left            =   0
         TabIndex        =   222
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "207"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   7
         Left            =   30
         TabIndex        =   55
         Top             =   15
         Width           =   855
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   7
         Left            =   30
         TabIndex        =   54
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   7
         Left            =   60
         Picture         =   "frmManagerRoom.frx":30A3A6
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   7
         Left            =   30
         Picture         =   "frmManagerRoom.frx":30ACC4
         Top             =   1710
         Width           =   1950
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   7
         Left            =   240
         TabIndex        =   53
         Top             =   1040
         Width           =   945
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   7
         Left            =   1230
         TabIndex        =   52
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   7
         Left            =   240
         TabIndex        =   51
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   7
         Left            =   1230
         TabIndex        =   50
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   7
         Left            =   1425
         TabIndex        =   49
         Top             =   120
         Width           =   495
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   7
         Left            =   30
         Picture         =   "frmManagerRoom.frx":30D65E
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   7
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":30FFF8
         Top             =   90
         Width           =   900
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   6
      Left            =   10410
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   40
      Top             =   6765
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   6
         Left            =   0
         TabIndex        =   248
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   6
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":311AF2
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   6
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":31448C
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   6
         Left            =   0
         TabIndex        =   221
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "206"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   6
         Left            =   30
         TabIndex        =   47
         Top             =   15
         Width           =   855
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   6
         Left            =   30
         TabIndex        =   46
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   6
         Left            =   60
         Picture         =   "frmManagerRoom.frx":316D06
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   6
         Left            =   30
         Picture         =   "frmManagerRoom.frx":317624
         Top             =   1710
         Width           =   1950
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   6
         Left            =   240
         TabIndex        =   45
         Top             =   1040
         Width           =   945
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   6
         Left            =   1230
         TabIndex        =   44
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   6
         Left            =   240
         TabIndex        =   43
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   6
         Left            =   1230
         TabIndex        =   42
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   6
         Left            =   1425
         TabIndex        =   41
         Top             =   120
         Width           =   495
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   6
         Left            =   30
         Picture         =   "frmManagerRoom.frx":319FBE
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   6
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":31C958
         Top             =   90
         Width           =   900
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   5
      Left            =   8385
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   32
      Top             =   6765
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   5
         Left            =   0
         TabIndex        =   247
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   5
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":31E452
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   5
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":320DEC
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   5
         Left            =   0
         TabIndex        =   220
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "205"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   5
         Left            =   30
         TabIndex        =   39
         Top             =   15
         Width           =   855
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   5
         Left            =   30
         TabIndex        =   38
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   5
         Left            =   60
         Picture         =   "frmManagerRoom.frx":323666
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   5
         Left            =   30
         Picture         =   "frmManagerRoom.frx":323F84
         Top             =   1710
         Width           =   1950
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   5
         Left            =   240
         TabIndex        =   37
         Top             =   1040
         Width           =   945
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   5
         Left            =   1230
         TabIndex        =   36
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   5
         Left            =   255
         TabIndex        =   35
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   5
         Left            =   1230
         TabIndex        =   34
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   5
         Left            =   1425
         TabIndex        =   33
         Top             =   120
         Width           =   495
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   5
         Left            =   30
         Picture         =   "frmManagerRoom.frx":32691E
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   5
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":3292B8
         Top             =   90
         Width           =   900
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   4
      Left            =   6360
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   24
      Top             =   6765
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   4
         Left            =   0
         TabIndex        =   246
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   4
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":32ADB2
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   4
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":32D74C
         Top             =   1725
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   4
         Left            =   0
         TabIndex        =   219
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "204"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   4
         Left            =   30
         TabIndex        =   31
         Top             =   15
         Width           =   855
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   4
         Left            =   30
         TabIndex        =   30
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   4
         Left            =   60
         Picture         =   "frmManagerRoom.frx":32FFC6
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   4
         Left            =   30
         Picture         =   "frmManagerRoom.frx":3308E4
         Top             =   1710
         Width           =   1950
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   4
         Left            =   240
         TabIndex        =   29
         Top             =   1040
         Width           =   945
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   4
         Left            =   1230
         TabIndex        =   28
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   4
         Left            =   240
         TabIndex        =   27
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   4
         Left            =   1230
         TabIndex        =   26
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   4
         Left            =   1425
         TabIndex        =   25
         Top             =   120
         Width           =   495
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   4
         Left            =   30
         Picture         =   "frmManagerRoom.frx":33327E
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   4
         Left            =   1065
         Picture         =   "frmManagerRoom.frx":335C18
         Top             =   90
         Width           =   900
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   3
      Left            =   4335
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   16
      Top             =   6765
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   3
         Left            =   0
         TabIndex        =   245
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   3
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":337712
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   3
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":33A0AC
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   3
         Left            =   0
         TabIndex        =   218
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "203"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   3
         Left            =   45
         TabIndex        =   23
         Top             =   15
         Width           =   855
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   3
         Left            =   75
         TabIndex        =   22
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   3
         Left            =   60
         Picture         =   "frmManagerRoom.frx":33C926
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   3
         Left            =   30
         Picture         =   "frmManagerRoom.frx":33D244
         Top             =   1710
         Width           =   1950
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   3
         Left            =   240
         TabIndex        =   21
         Top             =   1040
         Width           =   945
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   3
         Left            =   1230
         TabIndex        =   20
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   3
         Left            =   240
         TabIndex        =   19
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   3
         Left            =   1230
         TabIndex        =   18
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   3
         Left            =   1425
         TabIndex        =   17
         Top             =   120
         Width           =   495
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   3
         Left            =   30
         Picture         =   "frmManagerRoom.frx":33FBDE
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   3
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":342578
         Top             =   120
         Width           =   900
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   2
      Left            =   2310
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   8
      Top             =   6765
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   2
         Left            =   0
         TabIndex        =   244
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   2
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":344072
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   2
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":346A0C
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   2
         Left            =   0
         TabIndex        =   217
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "202"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   2
         Left            =   30
         TabIndex        =   15
         Top             =   15
         Width           =   855
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   2
         Left            =   30
         TabIndex        =   14
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   2
         Left            =   60
         Picture         =   "frmManagerRoom.frx":349286
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   2
         Left            =   30
         Picture         =   "frmManagerRoom.frx":349BA4
         Top             =   1710
         Width           =   1950
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   2
         Left            =   240
         TabIndex        =   13
         Top             =   1040
         Width           =   945
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   2
         Left            =   1230
         TabIndex        =   12
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   2
         Left            =   240
         TabIndex        =   11
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   2
         Left            =   1230
         TabIndex        =   10
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   2
         Left            =   1425
         TabIndex        =   9
         Top             =   120
         Width           =   495
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   2
         Left            =   30
         Picture         =   "frmManagerRoom.frx":34C53E
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   2
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":34EED8
         Top             =   90
         Width           =   900
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   1
      Left            =   285
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   0
      Top             =   6765
      Width           =   1995
      Begin VB.Label tIdService 
         BackColor       =   &H000000FF&
         Height          =   255
         Index           =   1
         Left            =   0
         TabIndex        =   243
         Top             =   0
         Visible         =   0   'False
         Width           =   255
      End
      Begin VB.Image iEndClean 
         Height          =   405
         Index           =   1
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":3509D2
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   1
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":35336C
         Top             =   1710
         Width           =   1965
      End
      Begin VB.Label lType 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Habitación sencilla"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   1
         Left            =   0
         TabIndex        =   216
         Top             =   1440
         Width           =   2025
      End
      Begin VB.Label lNoRoom 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "201"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   630
         Index           =   1
         Left            =   30
         TabIndex        =   7
         Top             =   15
         Width           =   855
      End
      Begin VB.Label lStatus 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Disponible"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Index           =   1
         Left            =   30
         TabIndex        =   6
         Top             =   650
         Width           =   1935
      End
      Begin VB.Image iShowInfo 
         Height          =   405
         Index           =   1
         Left            =   60
         Picture         =   "frmManagerRoom.frx":355BE6
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   1
         Left            =   30
         Picture         =   "frmManagerRoom.frx":356504
         Top             =   1710
         Width           =   1950
      End
      Begin VB.Label labelHoraInicio 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora inicio:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   1
         Left            =   240
         TabIndex        =   5
         Top             =   1040
         Width           =   945
      End
      Begin VB.Label lHourStart 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   1
         Left            =   1230
         TabIndex        =   4
         Top             =   1040
         Width           =   570
      End
      Begin VB.Label labelHoraFin 
         BackStyle       =   0  'Transparent
         Caption         =   "Hora fin:"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   1
         Left            =   240
         TabIndex        =   3
         Top             =   1250
         Width           =   930
      End
      Begin VB.Label lHourEnd 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   240
         Index           =   1
         Left            =   1230
         TabIndex        =   2
         Top             =   1250
         Width           =   570
      End
      Begin VB.Label lWarnings 
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008080&
         Height          =   405
         Index           =   1
         Left            =   1425
         TabIndex        =   1
         Top             =   120
         Width           =   495
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   1
         Left            =   30
         Picture         =   "frmManagerRoom.frx":358E9E
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   1
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":35B838
         Top             =   90
         Width           =   900
      End
   End
End
Attribute VB_Name = "frmManagerRoom"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Conexión activa de BD  para asignar un servicio
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset

Public parent As frmMenu
Private Const COLOR_FREE_ROOM = &H2BB509
Private Const COLOR_RESERVED_ROOM = &HC0&
Private Const COLOR_CLEAN_ROOM = &HCD7C10

'Posiciones para los elementos de la pantalla
Private Const START_CLEAN_TOP = 1035
Private Const START_CLEAN_LEFT = 20

Private Const END_CLEAN_TOP = 1710
Private Const END_CLEAN_LEFT = 30

Private Sub cmdAsign_Click(Index As Integer)
frmAsignServiceRoom.tNoRoom = Me.lNoRoom(Index)
Set frmAsignServiceRoom.manager = Me
frmAsignServiceRoom.Show vbModal
End Sub

Private Sub cmdFree_Click(Index As Integer)
Call initFreeRoom(Index)
End Sub

Private Sub Form_Load()
Call loadBd

Call Me.loadInfoRooms

Call setPositionElements
End Sub

Private Sub initFreeRoom(idRoom As Integer)
frmFreeRoom.tNoRoom = Me.lNoRoom(idRoom)
Set frmFreeRoom.manager = Me
frmFreeRoom.Show vbModal
End Sub

Private Sub hideAll(idRoom As Integer)
Me.cmdAsign(idRoom).Visible = False
Me.labelHoraInicio(idRoom).Visible = False
Me.labelHoraFin(idRoom).Visible = False
Me.lHourStart(idRoom).Visible = False
Me.lHourEnd(idRoom).Visible = False
Me.iStartClean(idRoom).Visible = False
Me.cmdFree(idRoom).Visible = False
Me.iEndClean(idRoom).Visible = False
End Sub

'Muestra la habitación como libre
Private Sub freeRoom(idRoom As Integer)
Call hideAll(idRoom)

Me.picRoom(idRoom).BackColor = COLOR_FREE_ROOM
Me.cmdAsign(idRoom).Visible = True
End Sub

'Muestra la habitación como reservada
Private Sub reserveRoom(noRoom As Integer, hourStart As Date, hourEnd As Date)
Call hideAll(noRoom)

Me.picRoom(noRoom).BackColor = COLOR_RESERVED_ROOM
Me.labelHoraInicio(noRoom).Visible = True
Me.labelHoraFin(noRoom).Visible = True
Me.lHourStart(noRoom).Visible = True
Me.lHourEnd(noRoom).Visible = True
Me.cmdFree(noRoom).Visible = True
Me.lHourStart(noRoom).Caption = ModFormater.getHourAndMinuteFromDate(hourStart)
Me.lHourEnd(noRoom).Caption = ModFormater.getHourAndMinuteFromDate(hourEnd)
End Sub

'Muestra la habitación como que requiere limpieza
Private Sub cleanRoom(noRoom As Integer)
Call hideAll(noRoom)

Me.picRoom(noRoom).BackColor = COLOR_CLEAN_ROOM
Me.iStartClean(noRoom).Visible = True
End Sub

'Muestra la habitación como que se encuentra en limpieza
Private Sub cleanRoomInProgress(noRoom As Integer, hourStart As Date, hourEnd As Date)
Call hideAll(noRoom)

Me.picRoom(noRoom).BackColor = COLOR_CLEAN_ROOM
Me.iEndClean(noRoom).Visible = True

Me.labelHoraInicio(noRoom).Visible = True
Me.labelHoraFin(noRoom).Visible = True
Me.lHourStart(noRoom).Visible = True
Me.lHourEnd(noRoom).Visible = True
Me.lHourStart(noRoom).Caption = ModFormater.getHourAndMinuteFromDate(hourStart)
Me.lHourEnd(noRoom).Caption = ModFormater.getHourAndMinuteFromDate(hourEnd)
End Sub


Public Sub compleReserveRoom(idRoom As Integer, hourStart As Date, hourEnd As Date)
Call reserveRoom(idRoom, hourStart, hourEnd)
End Sub

Public Sub checkStatusRoom(idRoom As Integer)
rec.Open "SELECT * from service where id_room=" & idRoom & " and status='ACT'", conBd, adOpenStatic, adLockOptimistic
If (rec.RecordCount = 1) Then
    Call reserveRoom(idRoom, rec("datetime_start_service"), rec("datetime_end_clean"))
Else
    Call freeRoom(idRoom)
End If
rec.Close
End Sub

Public Sub loadInfoRooms()
rec.Open "SELECT * from room_details", conBd, adOpenStatic, adLockOptimistic
Dim idRoom As Integer
Do Until rec.EOF
    idRoom = rec("id").value
    Me.lType(idRoom).Caption = rec("type").value
    Me.lStatus(idRoom).Caption = rec("status").value
    Me.lWarnings(idRoom).Caption = ModFormater.getValue(rec("alerts").value, 0)
    Me.tIdService(idRoom) = ModFormater.getValue(rec("service_id"), 0)
    
    If (Ap.cStatusRoomStatic.BUSY.description = Me.lStatus(idRoom).Caption) Then
        Call reserveRoom(idRoom, rec("datetime_start_service"), rec("datetime_end_service"))
    Else
        If (Ap.cStatusRoomStatic.CLEAN.description = Me.lStatus(idRoom).Caption) Then
            Call cleanRoom(idRoom)
        Else
            If (Ap.cStatusRoomStatic.CLEAN_PROGRESS.description = Me.lStatus(idRoom).Caption) Then
                Call cleanRoomInProgress(idRoom, rec("datetime_start_clean"), rec("datetime_end_clean"))
            Else
                Call freeRoom(idRoom)
            End If
        End If
    End If
    
    rec.MoveNext
Loop
rec.Close
End Sub



Public Sub loadInfoRoom(idRoom As Integer)
rec.Open "SELECT r.*,rt.description as type from room r inner join room_type rt on r.id_type=rt.id " & _
    "where r.id=" & idRoom & "", conBd, adOpenStatic, adLockOptimistic
If (rec.RecordCount = 1) Then
    Me.lType(idRoom).Caption = rec("type")
End If
rec.Close
End Sub

Public Sub loadAlertRoom(idRoom As Integer)
rec.Open "select count(id) as count from alert where id_room=" & idRoom & " and code_type='IDO'", conBd, adOpenStatic, adLockOptimistic
Me.lWarnings(idRoom).Caption = rec("count")
rec.Close
End Sub

Public Sub loadCleanRoom(idRoom As Integer)
rec.Open "SELECT r.*,rt.description as type from room r inner join room_type rt on r.id_type=rt.id " & _
    "where r.id=" & idRoom & "", conBd, adOpenStatic, adLockOptimistic
If (rec.RecordCount = 1) Then
    Me.lType(idRoom).Caption = rec("type")
End If
rec.Close
End Sub

Private Function loadBd()
'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient
End Function

Private Sub iEndClean_Click(Index As Integer)
If MsgBox("¿Está seguro de terminar la limpieza de esta habitación?", vbQuestion + vbYesNo) = vbNo Then
    Exit Sub
End If

Dim dateTimeEndCleanReal As Date
dateTimeEndCleanReal = Now()
dateTimeEndCleanRealFormated = Format(dateTimeEndCleanReal, "yyyy-MM-dd HH:mm:ss")

SQL = "UPDATE service SET datetime_end_real_clean= '" & dateTimeEndCleanRealFormated & "',status='FIN' WHERE id=" & Me.tIdService(Index) & ""
conBd.Execute (SQL)

SQL = "UPDATE room SET code_status = '" & Ap.cStatusRoomStatic.AVAILABLE.code & "' WHERE id=" & Index & ""
conBd.Execute (SQL)

Call freeRoom(Index)
End Sub

Private Sub iStartClean_Click(Index As Integer)
If MsgBox("¿Está seguro de iniciar la limpieza de esta habitación?", vbQuestion + vbYesNo) = vbNo Then
    Exit Sub
End If

Dim timeClean As Integer
rec.Open "SELECT time_clean FROM service where id=" & Me.tIdService(Index) & "", conBd, adOpenStatic, adLockOptimistic
If (rec.RecordCount = 1) Then
    timeClean = rec("time_clean")
End If
rec.Close

Dim dateTimeStartClean As Date
Dim dateTimeEndClean As Date
dateTimeStartClean = Now()
dateTimeEndClean = DateAdd("n", timeClean, dateTimeStartClean)

dateTimeStartCleanFormated = Format(dateTimeStartClean, "yyyy-MM-dd HH:mm:ss")
dateTimeEndCleanFormated = Format(dateTimeEndClean, "yyyy-MM-dd HH:mm:ss")

SQL = "UPDATE service SET datetime_start_clean= '" & dateTimeStartCleanFormated & "', datetime_end_clean= '" & dateTimeEndCleanFormated & "' WHERE id=" & Me.tIdService(Index) & ""
conBd.Execute (SQL)

SQL = "UPDATE room SET code_status = '" & Ap.cStatusRoomStatic.CLEAN_PROGRESS.code & "' WHERE id=" & Index & ""
conBd.Execute (SQL)

Call cleanRoomInProgress(Index, dateTimeStartClean, dateTimeEndClean)
End Sub

Private Sub timeReload_Timer()
Call Me.loadInfoRooms
End Sub

'Establece la posicion de los elementos de la pantalla
Public Sub setPositionElements()
Dim i As Integer
For i = 1 To 27
    Me.iStartClean(i).Top = START_CLEAN_TOP
    Me.iStartClean(i).Left = START_CLEAN_LEFT
    
    Me.iEndClean(i).Top = END_CLEAN_TOP
    Me.iEndClean(i).Left = END_CLEAN_LEFT
Next
End Sub
