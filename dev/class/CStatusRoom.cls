VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CStatusRoom"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

'Mapea directamente con la tabla status_room, para la gestión de los estados de las habitaciones

'Definition
Const F_TABLE As String = "status_room"

Const F_CODE As String = "code"
Const F_DESCRIPTION As String = "description"

Const L_DESCRIPTION As String = "Estado"

'Attributes


'Funciones con la definición de campos de la entidad
Public Function TABLE() As String
TABLE = F_TABLE
End Function
Public Function FIELD_CODE() As String
FIELD_CODE = F_CODE
End Function
Public Function FIELD_DESCRIPTION() As String
FIELD_DESCRIPTION = F_DESCRIPTION
End Function

Public Function LABEL_DESCRIPTION() As String
LABEL_DESCRIPTION = L_DESCRIPTION
End Function


