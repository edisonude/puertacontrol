VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CRoom"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

'Clase CRoom, mapea directamente con la tabla room, para la gestión de habitaciones

'Definition
Const F_TABLE As String = "room"

Const F_ID As String = "id"
Const F_NUMBER As String = "number"
Const F_FLOOR As String = "floor"
Const F_PHOTO As String = "photo"
Const F_ID_TYPE As String = "id_type"
Const F_CODE_STATUS As String = "code_status"

Const L_NUMBER As String = "Número habitación"
Const L_FLOOR As String = "Piso o nivel"
Const L_PHOTO As String = "Foto"

'Attributes


'Funciones con la definición de campos de la entidad
Public Function TABLE() As String
TABLE = F_TABLE
End Function

Public Function FIELD_ID() As String
FIELD_ID = F_ID
End Function
Public Function FIELD_NUMBER() As String
FIELD_NUMBER = F_NUMBER
End Function
Public Function FIELD_FLOOR() As String
FIELD_FLOOR = F_FLOOR
End Function
Public Function FIELD_PHOTO() As String
FIELD_PHOTO = F_PHOTO
End Function
Public Function FIELD_ID_TYPE() As String
FIELD_ID_TYPE = F_ID_TYPE
End Function
Public Function FIELD_CODE_STATUS() As String
FIELD_CODE_STATUS = F_CODE_STATUS
End Function

Public Function LABEL_NUMBER() As String
LABEL_NUMBER = L_NUMBER
End Function
Public Function LABEL_FLOOR() As String
LABEL_FLOOR = L_FLOOR
End Function
Public Function LABEL_PHOTO() As String
LABEL_PHOTO = L_PHOTO
End Function
