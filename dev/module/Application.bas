Attribute VB_Name = "Ap"
Public cRoomStatic As New CRoom
Public cRoomTypeStatic As New CRoomType
Public cStatusRoomStatic As New CStatusRoom

'Usuario que se encuentra logueado en la aplicaci�n
Public cUserLogued As New CUser

'Correos electronicos para notificar
Public emailsToNotify As String

'Determina si la aplicaci�n esta en modo de prueba
Public test As Boolean

'Usuario administrador general de la aplicaci�n
Public admon As New CUser
