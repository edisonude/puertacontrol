VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CStatusOperationRoom"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

'Mapea directamente con la tabla operation_room_status,
'para la gestión de los estados de las operaciones de una habitación

'Posibles estados de las habitaciones

'Operación pendiente
Public PENDING As CStatusOperationRoom

'Operación pendiente
Public SUCCESS As CStatusOperationRoom

'Operación evitada por ruido
Public ERROR_NOISE As CStatusOperationRoom

'Operación evitada por no existir un sistema email en funcionamiento
Public ERROR_NO_SYSTEM_EMAIL As CStatusOperationRoom

'Operación evitada por el administrador
Public AVOIDED_BY_ADMIN As CStatusOperationRoom

'Operación evitada porque las alertas estan desactivadas para la habitacion
Public ROOM_DISABLED As CStatusOperationRoom

'Attributes
Public code As Integer
Public description As String

'Carga las instancias base para los estados de las habitaciones
Public Function loadBaseInstances()

Set Me.PENDING = New CStatusOperationRoom
Me.PENDING.code = 0
Me.PENDING.description = "PENDING"

Set Me.SUCCESS = New CStatusOperationRoom
Me.SUCCESS.code = 1
Me.SUCCESS.description = "SUCCESS"

Set Me.ERROR_NOISE = New CStatusOperationRoom
Me.ERROR_NOISE.code = 2
Me.ERROR_NOISE.description = "ERROR_NOISE"

Set Me.ERROR_NO_SYSTEM_EMAIL = New CStatusOperationRoom
Me.ERROR_NO_SYSTEM_EMAIL.code = 3
Me.ERROR_NO_SYSTEM_EMAIL.description = "ERROR_NO_SYSTEM_EMAIL"

Set Me.AVOIDED_BY_ADMIN = New CStatusOperationRoom
Me.AVOIDED_BY_ADMIN.code = 4
Me.AVOIDED_BY_ADMIN.description = "AVOIDED_BY_ADMIN"

Set Me.ROOM_DISABLED = New CStatusOperationRoom
Me.ROOM_DISABLED.code = 5
Me.ROOM_DISABLED.description = "ROOM_DISABLED"

End Function



