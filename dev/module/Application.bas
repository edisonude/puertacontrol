Attribute VB_Name = "Ap"
Public cRoomStatic As New CRoom
Public cRoomTypeStatic As New CRoomType
Public cStatusRoomStatic As New CStatusRoom

'Usuario que se encuentra logueado en la aplicación
Public cUserLogued As New CUser

'Correos electronicos para notificar
Public emailsToNotify As String

'Determina si la aplicación esta en modo de prueba
Public test As Boolean

'Usuario administrador general de la aplicación
Public admon As New CUser
