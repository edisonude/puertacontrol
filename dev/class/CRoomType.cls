VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CRoomType"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

'Clase CRoomType, mapea directamente con la tabla room_type, para la gestión de los tipos de habitaciones

'Definition
Const F_TABLE As String = "room_type"

Const F_ID As String = "id"
Const F_DESCRIPTION As String = "description"

Const L_DESCRIPTION As String = "Tipo habitación"

'Attributes


'Funciones con la definición de campos de la entidad
Public Function TABLE() As String
TABLE = F_TABLE
End Function
Public Function FIELD_ID() As String
FIELD_ID = F_ID
End Function
Public Function FIELD_DESCRIPTION() As String
FIELD_DESCRIPTION = F_DESCRIPTION
End Function

Public Function LABEL_DESCRIPTION() As String
LABEL_DESCRIPTION = L_DESCRIPTION
End Function

