VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CUser"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

'Clase CUser, mapea directamente con la tabla usuer para la gesti�n de usuarios

'Attributes
Public id As Integer
Public username As String
Public pwd As String
Public codeRol As String
Public email As String

Public Sub loadUser(id As Integer, username As String, pwd As String, codeRol As String, email As String)
    Me.id = id
    Me.username = username
    Me.pwd = pwd
    Me.codeRol = codeRol
    Me.email = email
End Sub



