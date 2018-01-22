Attribute VB_Name = "Ap"
Public cRoomStatic As New CRoom
Public cRoomTypeStatic As New CRoomType
Public cStatusRoomStatic As New CStatusRoom


Public Function SoloNumeros(ByVal KeyAscii As Integer) As Integer
    'Permite que solo sean ingresados los numeros, el ENTER y el RETROCESO
        If InStr("0123456789.,", Chr(KeyAscii)) = 0 Then
            SoloNumeros = 0
        Else
            SoloNumeros = KeyAscii
        End If
        ' teclas especiales permitidas
        If KeyAscii = 8 Then SoloNumeros = KeyAscii ' borrado atras
        If KeyAscii = 13 Then SoloNumeros = KeyAscii 'Enter
    End Function

