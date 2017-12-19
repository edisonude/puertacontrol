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
         Picture         =   "frmManagerRoom.frx":209612
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   27
         Left            =   30
         Picture         =   "frmManagerRoom.frx":209F30
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
         Picture         =   "frmManagerRoom.frx":20C8CA
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   27
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":20F264
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
      Index           =   26
      Left            =   6360
      ScaleHeight     =   2190
      ScaleWidth      =   4020
      TabIndex        =   200
      Top             =   105
      Width           =   4020
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
         Picture         =   "frmManagerRoom.frx":210D5E
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   26
         Left            =   30
         Picture         =   "frmManagerRoom.frx":21167C
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
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   26
         Left            =   30
         Picture         =   "frmManagerRoom.frx":214016
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   26
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2169B0
         Top             =   90
         Width           =   900
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H000000C0&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   25
      Left            =   285
      ScaleHeight     =   2190
      ScaleWidth      =   6045
      TabIndex        =   192
      Top             =   105
      Width           =   6045
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
         Picture         =   "frmManagerRoom.frx":2184AA
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   25
         Left            =   30
         Picture         =   "frmManagerRoom.frx":218DC8
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
         Picture         =   "frmManagerRoom.frx":21B762
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
         Picture         =   "frmManagerRoom.frx":21D25C
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
         Picture         =   "frmManagerRoom.frx":21FBF6
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   24
         Left            =   30
         Picture         =   "frmManagerRoom.frx":220514
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
         Picture         =   "frmManagerRoom.frx":222EAE
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
         Picture         =   "frmManagerRoom.frx":2249A8
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
         Picture         =   "frmManagerRoom.frx":227342
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   23
         Left            =   30
         Picture         =   "frmManagerRoom.frx":227C60
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
         Picture         =   "frmManagerRoom.frx":22A5FA
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
         Picture         =   "frmManagerRoom.frx":22C0F4
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
         Picture         =   "frmManagerRoom.frx":22EA8E
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   22
         Left            =   30
         Picture         =   "frmManagerRoom.frx":22F3AC
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
         Picture         =   "frmManagerRoom.frx":231D46
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
         Picture         =   "frmManagerRoom.frx":233840
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
         Picture         =   "frmManagerRoom.frx":2361DA
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   21
         Left            =   30
         Picture         =   "frmManagerRoom.frx":236AF8
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
         Picture         =   "frmManagerRoom.frx":239492
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
         Left            =   30
         Picture         =   "frmManagerRoom.frx":23AF8C
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
         Picture         =   "frmManagerRoom.frx":23D926
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   20
         Left            =   30
         Picture         =   "frmManagerRoom.frx":23E244
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
         Picture         =   "frmManagerRoom.frx":240BDE
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
         Picture         =   "frmManagerRoom.frx":2426D8
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
         Picture         =   "frmManagerRoom.frx":245072
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   19
         Left            =   30
         Picture         =   "frmManagerRoom.frx":245990
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
         Picture         =   "frmManagerRoom.frx":24832A
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
         Picture         =   "frmManagerRoom.frx":249E24
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
         Picture         =   "frmManagerRoom.frx":24C7BE
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   18
         Left            =   30
         Picture         =   "frmManagerRoom.frx":24D0DC
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
         Picture         =   "frmManagerRoom.frx":24FA76
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
         Picture         =   "frmManagerRoom.frx":251570
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
         Picture         =   "frmManagerRoom.frx":253F0A
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   17
         Left            =   30
         Picture         =   "frmManagerRoom.frx":254828
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
         Picture         =   "frmManagerRoom.frx":2571C2
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   17
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":259B5C
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
         Picture         =   "frmManagerRoom.frx":25B656
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   16
         Left            =   30
         Picture         =   "frmManagerRoom.frx":25BF74
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
         Picture         =   "frmManagerRoom.frx":25E90E
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
         Picture         =   "frmManagerRoom.frx":260408
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
         Picture         =   "frmManagerRoom.frx":262DA2
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   15
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2636C0
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
         Picture         =   "frmManagerRoom.frx":26605A
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
         Picture         =   "frmManagerRoom.frx":267B54
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
         Picture         =   "frmManagerRoom.frx":26A4EE
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   14
         Left            =   30
         Picture         =   "frmManagerRoom.frx":26AE0C
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
         Picture         =   "frmManagerRoom.frx":26D7A6
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
         Picture         =   "frmManagerRoom.frx":26F2A0
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
         Picture         =   "frmManagerRoom.frx":271C3A
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   13
         Left            =   30
         Picture         =   "frmManagerRoom.frx":272558
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
         Picture         =   "frmManagerRoom.frx":274EF2
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
         Picture         =   "frmManagerRoom.frx":2769EC
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
         Picture         =   "frmManagerRoom.frx":279386
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   12
         Left            =   30
         Picture         =   "frmManagerRoom.frx":279CA4
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
         Picture         =   "frmManagerRoom.frx":27C63E
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
         Picture         =   "frmManagerRoom.frx":27E138
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
         Picture         =   "frmManagerRoom.frx":280AD2
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   11
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2813F0
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
         Picture         =   "frmManagerRoom.frx":283D8A
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
         Picture         =   "frmManagerRoom.frx":285884
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
         Picture         =   "frmManagerRoom.frx":28821E
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   10
         Left            =   30
         Picture         =   "frmManagerRoom.frx":288B3C
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
         Picture         =   "frmManagerRoom.frx":28B4D6
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
         Picture         =   "frmManagerRoom.frx":28CFD0
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
         Picture         =   "frmManagerRoom.frx":28F96A
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   9
         Left            =   30
         Picture         =   "frmManagerRoom.frx":290288
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
         Picture         =   "frmManagerRoom.frx":292C22
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   9
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2955BC
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
         Picture         =   "frmManagerRoom.frx":2970B6
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   8
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2979D4
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
         Picture         =   "frmManagerRoom.frx":29A36E
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   8
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":29CD08
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
         Picture         =   "frmManagerRoom.frx":29E802
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   7
         Left            =   30
         Picture         =   "frmManagerRoom.frx":29F120
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
         Picture         =   "frmManagerRoom.frx":2A1ABA
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   7
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2A4454
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
         Picture         =   "frmManagerRoom.frx":2A5F4E
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   6
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2A686C
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
         Picture         =   "frmManagerRoom.frx":2A9206
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   6
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2ABBA0
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
         Picture         =   "frmManagerRoom.frx":2AD69A
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   5
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2ADFB8
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
         Picture         =   "frmManagerRoom.frx":2B0952
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   5
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2B32EC
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
         Picture         =   "frmManagerRoom.frx":2B4DE6
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   4
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2B5704
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
         Picture         =   "frmManagerRoom.frx":2B809E
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   4
         Left            =   1065
         Picture         =   "frmManagerRoom.frx":2BAA38
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
         Picture         =   "frmManagerRoom.frx":2BC532
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   3
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2BCE50
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
         Picture         =   "frmManagerRoom.frx":2BF7EA
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   3
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2C2184
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
         Picture         =   "frmManagerRoom.frx":2C3C7E
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   2
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2C459C
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
         Picture         =   "frmManagerRoom.frx":2C6F36
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   2
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2C98D0
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
         Picture         =   "frmManagerRoom.frx":2CB3CA
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   1
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2CBCE8
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
         Picture         =   "frmManagerRoom.frx":2CE682
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   1
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2D101C
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
Private Const LABEL_RESERVED_ROOM = "Ocupada"
Private Const LABEL_FREE_ROOM = "Disponible"


Private Sub Label5_Click()

End Sub

Private Sub cmdAsign_Click(Index As Integer)
'Call reserveRoom(Index, "12:00", "14:00")
'frmAsignService.Show vbModal
frmAsignServiceRoom.tNoRoom = Me.lNoRoom(Index)
Set frmAsignServiceRoom.manager = Me
frmAsignServiceRoom.Show vbModal
End Sub

Private Sub cmdFree_Click(Index As Integer)
Call initFreeRoom(Index)
End Sub

Private Sub Form_Load()
Call loadBd

Dim i As Integer
For i = 1 To 27
    Call loadInfoRoom(i)
    Call checkStatusRoom(i)
    Me.iShowInfo(i).Visible = False
Next
End Sub

Private Sub initFreeRoom(idRoom As Integer)
If (MsgBox("¿Está seguro de desocupar la habitación " & Me.lNoRoom(idRoom) & "?", vbQuestion + vbYesNo) = vbNo) Then
    Exit Sub
End If

Dim datetimeEndReal As Date
Dim dateTimeEndRealFormated As String

datetimeEndReal = Now()
dateTimeEndRealFormated = Format(datetimeEndReal, "yyyy-MM-dd HH:mm:ss")

SQL = "UPDATE service SET datetime_end_real = '" & dateTimeEndRealFormated & "', " & _
    "status='FIN' where id_room=" & idRoom & " and status='ACT'"
conBd.Execute (SQL)
Call freeRoom(idRoom)
MsgBox "Se desocupó la habitación correctamente", vbInformation
End Sub

Private Sub freeRoom(idRoom As Integer)
Me.picRoom(idRoom).BackColor = COLOR_FREE_ROOM
Me.lStatus(idRoom).Caption = LABEL_FREE_ROOM
Me.cmdAsign(idRoom).Visible = True
Me.labelHoraInicio(idRoom).Visible = False
Me.labelHoraFin(idRoom).Visible = False
Me.lHourStart(idRoom).Visible = False
Me.lHourEnd(idRoom).Visible = False
Me.cmdFree(idRoom).Visible = False
End Sub

Private Sub reserveRoom(noRoom As Integer, hourStart As Date, hourEnd As Date)
Me.picRoom(noRoom).BackColor = COLOR_RESERVED_ROOM
Me.lStatus(noRoom).Caption = LABEL_RESERVED_ROOM
Me.cmdAsign(noRoom).Visible = False
Me.labelHoraInicio(noRoom).Visible = True
Me.labelHoraFin(noRoom).Visible = True
Me.lHourStart(noRoom).Visible = True
Me.lHourEnd(noRoom).Visible = True
Me.cmdFree(noRoom).Visible = True
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

Public Sub loadInfoRoom(idRoom As Integer)
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
