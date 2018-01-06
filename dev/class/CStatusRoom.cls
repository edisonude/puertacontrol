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

'Posibles estados de las habitaciones

'Habitación disponible
Public AVAILABLE As CStatusRoom

'Habitación ocupada
Public BUSY As CStatusRoom

'Habitación reservada
Public RESERVED As CStatusRoom

'Habitación en limpieza
Public CLEAN As CStatusRoom

'Attributes
Public code As String
Public description As String

'Definition
Const F_TABLE As String = "status_room"

Const F_CODE As String = "code"
Const F_DESCRIPTION As String = "description"

Const L_DESCRIPTION As String = "Estado"

'Carga las instancias base para los estados de las habitaciones
Public Function loadBaseInstances()

'Instancia para estado: Habitación disponible
Set Me.AVAILABLE = New CStatusRoom
Me.AVAILABLE.code = "DIS"
Me.AVAILABLE.description = "Disponible"

'Instancia para estado: Habitación ocupada
Set Me.BUSY = New CStatusRoom
Me.BUSY.code = "OCU"
Me.BUSY.description = "Ocupada"

'Instancia para estado: Habitación reservada
Set Me.RESERVED = New CStatusRoom
Me.RESERVED.code = "RES"
Me.RESERVED.description = "Reservada"

'Instancia para estado: Habitación reservada
Set Me.CLEAN = New CStatusRoom
Me.CLEAN.code = "CLN"
Me.CLEAN.description = "En limpieza"

End Function


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


