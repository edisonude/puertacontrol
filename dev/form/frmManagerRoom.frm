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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   27
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":209612
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":209EDC
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   27
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":20C876
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
         Picture         =   "frmManagerRoom.frx":20F0F0
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   27
         Left            =   30
         Picture         =   "frmManagerRoom.frx":20FA0E
         Top             =   1710
         Width           =   1395
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
         Picture         =   "frmManagerRoom.frx":2117D8
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   27
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":214172
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
      Left            =   6345
      ScaleHeight     =   2190
      ScaleWidth      =   4020
      TabIndex        =   200
      Top             =   105
      Width           =   4020
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   26
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":215C6C
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":216536
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   26
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":218ED0
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
         Picture         =   "frmManagerRoom.frx":21B74A
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   26
         Left            =   30
         Picture         =   "frmManagerRoom.frx":21C068
         Top             =   1710
         Width           =   1395
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
         Picture         =   "frmManagerRoom.frx":21DE32
         Top             =   90
         Width           =   900
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   26
         Left            =   30
         Picture         =   "frmManagerRoom.frx":21F92C
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
      Left            =   285
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   25
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":2222C6
         Top             =   1710
         Width           =   405
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
         Picture         =   "frmManagerRoom.frx":222B90
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   25
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":22552A
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
         Picture         =   "frmManagerRoom.frx":227DA4
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   25
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2286C2
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
         Picture         =   "frmManagerRoom.frx":22B05C
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
         Picture         =   "frmManagerRoom.frx":22CB56
         Top             =   1710
         Width           =   1395
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   24
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":22E920
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":22F1EA
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   24
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":231B84
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
         Picture         =   "frmManagerRoom.frx":2343FE
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   24
         Left            =   30
         Picture         =   "frmManagerRoom.frx":234D1C
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
         Picture         =   "frmManagerRoom.frx":2376B6
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
         Picture         =   "frmManagerRoom.frx":2391B0
         Top             =   1710
         Width           =   1395
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   23
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":23AF7A
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":23B844
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   23
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":23E1DE
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
         Picture         =   "frmManagerRoom.frx":240A58
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   23
         Left            =   30
         Picture         =   "frmManagerRoom.frx":241376
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
         Picture         =   "frmManagerRoom.frx":243D10
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
         Picture         =   "frmManagerRoom.frx":24580A
         Top             =   1710
         Width           =   1395
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   22
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":2475D4
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":247E9E
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   22
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":24A838
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
         Picture         =   "frmManagerRoom.frx":24D0B2
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   22
         Left            =   30
         Picture         =   "frmManagerRoom.frx":24D9D0
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
         Picture         =   "frmManagerRoom.frx":25036A
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
         Picture         =   "frmManagerRoom.frx":251E64
         Top             =   1710
         Width           =   1395
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   21
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":253C2E
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":2544F8
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   21
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":256E92
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
         Picture         =   "frmManagerRoom.frx":25970C
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   21
         Left            =   30
         Picture         =   "frmManagerRoom.frx":25A02A
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
         Picture         =   "frmManagerRoom.frx":25C9C4
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
         Picture         =   "frmManagerRoom.frx":25E4BE
         Top             =   1710
         Width           =   1395
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   20
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":260288
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":260B52
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   20
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2634EC
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
         Picture         =   "frmManagerRoom.frx":265D66
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   20
         Left            =   30
         Picture         =   "frmManagerRoom.frx":266684
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
         Picture         =   "frmManagerRoom.frx":26901E
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
         Picture         =   "frmManagerRoom.frx":26AB18
         Top             =   1710
         Width           =   1395
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   19
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":26C8E2
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":26D1AC
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   19
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":26FB46
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
         Picture         =   "frmManagerRoom.frx":2723C0
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   19
         Left            =   30
         Picture         =   "frmManagerRoom.frx":272CDE
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
         Picture         =   "frmManagerRoom.frx":275678
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
         Picture         =   "frmManagerRoom.frx":277172
         Top             =   1710
         Width           =   1395
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   18
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":278F3C
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":279806
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   18
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":27C1A0
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
         Picture         =   "frmManagerRoom.frx":27EA1A
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   18
         Left            =   30
         Picture         =   "frmManagerRoom.frx":27F338
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
         Picture         =   "frmManagerRoom.frx":281CD2
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
         Picture         =   "frmManagerRoom.frx":2837CC
         Top             =   1710
         Width           =   1395
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   17
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":285596
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":285E60
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   17
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2887FA
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
         Picture         =   "frmManagerRoom.frx":28B074
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   17
         Left            =   30
         Picture         =   "frmManagerRoom.frx":28B992
         Top             =   1710
         Width           =   1395
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
         Picture         =   "frmManagerRoom.frx":28D75C
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   17
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2900F6
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   16
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":291BF0
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":2924BA
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   16
         Left            =   1560
         Picture         =   "frmManagerRoom.frx":294E54
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
         Picture         =   "frmManagerRoom.frx":2976CE
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   16
         Left            =   30
         Picture         =   "frmManagerRoom.frx":297FEC
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
         Picture         =   "frmManagerRoom.frx":29A986
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
         Picture         =   "frmManagerRoom.frx":29C480
         Top             =   1710
         Width           =   1395
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   15
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":29E24A
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":29EB14
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   15
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2A14AE
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
         Picture         =   "frmManagerRoom.frx":2A3D28
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   15
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2A4646
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
         Picture         =   "frmManagerRoom.frx":2A6FE0
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
         Picture         =   "frmManagerRoom.frx":2A8ADA
         Top             =   1710
         Width           =   1395
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   14
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":2AA8A4
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":2AB16E
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   14
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2ADB08
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
         Picture         =   "frmManagerRoom.frx":2B0382
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   14
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2B0CA0
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
         Picture         =   "frmManagerRoom.frx":2B363A
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
         Picture         =   "frmManagerRoom.frx":2B5134
         Top             =   1710
         Width           =   1395
      End
   End
   Begin VB.PictureBox picRoom 
      Appearance      =   0  'Flat
      BackColor       =   &H002BB509&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2190
      Index           =   13
      Left            =   8385
      ScaleHeight     =   2190
      ScaleWidth      =   1995
      TabIndex        =   96
      Top             =   4545
      Width           =   1995
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   13
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":2B6EFE
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":2B77C8
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   13
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2BA162
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
         Picture         =   "frmManagerRoom.frx":2BC9DC
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   13
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2BD2FA
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
         Picture         =   "frmManagerRoom.frx":2BFC94
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
         Picture         =   "frmManagerRoom.frx":2C178E
         Top             =   1710
         Width           =   1395
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   12
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":2C3558
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":2C3E22
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   12
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2C67BC
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
         Picture         =   "frmManagerRoom.frx":2C9036
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   12
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2C9954
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
         Picture         =   "frmManagerRoom.frx":2CC2EE
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
         Picture         =   "frmManagerRoom.frx":2CDDE8
         Top             =   1710
         Width           =   1395
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   11
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":2CFBB2
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":2D047C
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   11
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2D2E16
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
         Picture         =   "frmManagerRoom.frx":2D5690
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   11
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2D5FAE
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
         Picture         =   "frmManagerRoom.frx":2D8948
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
         Picture         =   "frmManagerRoom.frx":2DA442
         Top             =   1710
         Width           =   1395
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   10
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":2DC20C
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":2DCAD6
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   10
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2DF470
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
         Picture         =   "frmManagerRoom.frx":2E1CEA
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdAsign 
         Height          =   405
         Index           =   10
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2E2608
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
         Picture         =   "frmManagerRoom.frx":2E4FA2
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
         Picture         =   "frmManagerRoom.frx":2E6A9C
         Top             =   1710
         Width           =   1395
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   9
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":2E8866
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":2E9130
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   9
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2EBACA
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
         Picture         =   "frmManagerRoom.frx":2EE344
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   9
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2EEC62
         Top             =   1710
         Width           =   1395
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
         Picture         =   "frmManagerRoom.frx":2F0A2C
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   9
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2F33C6
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   8
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":2F4EC0
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":2F578A
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   8
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":2F8124
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
         Picture         =   "frmManagerRoom.frx":2FA99E
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   8
         Left            =   30
         Picture         =   "frmManagerRoom.frx":2FB2BC
         Top             =   1710
         Width           =   1395
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
         Picture         =   "frmManagerRoom.frx":2FD086
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   8
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":2FFA20
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   7
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":30151A
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":301DE4
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   7
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":30477E
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
         Picture         =   "frmManagerRoom.frx":306FF8
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   7
         Left            =   30
         Picture         =   "frmManagerRoom.frx":307916
         Top             =   1710
         Width           =   1395
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
         Picture         =   "frmManagerRoom.frx":3096E0
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   7
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":30C07A
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   6
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":30DB74
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":30E43E
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   6
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":310DD8
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
         Picture         =   "frmManagerRoom.frx":313652
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   6
         Left            =   30
         Picture         =   "frmManagerRoom.frx":313F70
         Top             =   1710
         Width           =   1395
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
         Picture         =   "frmManagerRoom.frx":315D3A
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   6
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":3186D4
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   5
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":31A1CE
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":31AA98
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   5
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":31D432
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
         Picture         =   "frmManagerRoom.frx":31FCAC
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   5
         Left            =   30
         Picture         =   "frmManagerRoom.frx":3205CA
         Top             =   1710
         Width           =   1395
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
         Picture         =   "frmManagerRoom.frx":322394
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   5
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":324D2E
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   4
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":326828
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":3270F2
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   4
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":329A8C
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
         Picture         =   "frmManagerRoom.frx":32C306
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   4
         Left            =   30
         Picture         =   "frmManagerRoom.frx":32CC24
         Top             =   1710
         Width           =   1395
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
         Picture         =   "frmManagerRoom.frx":32E9EE
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   4
         Left            =   1065
         Picture         =   "frmManagerRoom.frx":331388
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   3
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":332E82
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":33374C
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   3
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":3360E6
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
         Picture         =   "frmManagerRoom.frx":338960
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   3
         Left            =   30
         Picture         =   "frmManagerRoom.frx":33927E
         Top             =   1710
         Width           =   1395
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
         Picture         =   "frmManagerRoom.frx":33B048
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   3
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":33D9E2
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   2
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":33F4DC
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":33FDA6
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   2
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":342740
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
         Picture         =   "frmManagerRoom.frx":344FBA
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   2
         Left            =   30
         Picture         =   "frmManagerRoom.frx":3458D8
         Top             =   1710
         Width           =   1395
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
         Picture         =   "frmManagerRoom.frx":3476A2
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   2
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":34A03C
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
      Begin VB.Image iModifyService 
         Height          =   390
         Index           =   1
         Left            =   1020
         Picture         =   "frmManagerRoom.frx":34BB36
         Top             =   1710
         Width           =   405
      End
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
         Picture         =   "frmManagerRoom.frx":34C400
         Top             =   1920
         Width           =   1950
      End
      Begin VB.Image iStartClean 
         Height          =   390
         Index           =   1
         Left            =   1575
         Picture         =   "frmManagerRoom.frx":34ED9A
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
         Picture         =   "frmManagerRoom.frx":351614
         Top             =   1710
         Width           =   405
      End
      Begin VB.Image cmdFree 
         Height          =   405
         Index           =   1
         Left            =   30
         Picture         =   "frmManagerRoom.frx":351F32
         Top             =   1710
         Width           =   1395
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
         Picture         =   "frmManagerRoom.frx":353CFC
         Top             =   1035
         Width           =   1950
      End
      Begin VB.Image Image1 
         Height          =   570
         Index           =   1
         Left            =   1080
         Picture         =   "frmManagerRoom.frx":356696
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

Private Const MODIFY_SERVICE_TOP = 1710
Private Const MODIFY_SERVICE_LEFT = 1560

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
frmFreeRoom.tIdService = Me.tIdService(idRoom)
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
Me.iModifyService(idRoom).Visible = False
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
Me.iModifyService(noRoom).Visible = True
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

Private Sub iModifyService_Click(idRoom As Integer)
frmModifyService.tIdService = Me.tIdService(idRoom)
frmModifyService.tNoRoom = Me.lNoRoom(idRoom)
Set frmModifyService.manager = Me
frmModifyService.Show vbModal
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
    Me.iStartClean(i).left = START_CLEAN_LEFT
    
    Me.iEndClean(i).Top = END_CLEAN_TOP
    Me.iEndClean(i).left = END_CLEAN_LEFT
    
    Me.iModifyService(i).Top = MODIFY_SERVICE_TOP
    Me.iModifyService(i).left = MODIFY_SERVICE_LEFT

    'Se oculta la lupa temporalmente
    Me.iShowInfo(i).Visible = False
    Me.iModifyService(i).Visible = False
Next
End Sub
