Attribute VB_Name = "ModConexion"
Option Explicit

'Variables de configuracion
Public SQL As String
Public pathBD As String
Public keyBD As String

Public Const MAX_NO_ROOMS = 27

'Almacena la ruta del archivo de configuraciones
Dim fileConfigPath As String

'Conexion ADOB
'Public mysqlCon As New ADODB.Connection
'Public properties As New CProperty

Sub Main()

On Local Error GoTo control

Ap.test = False

'Carga las instancias base para los estados de la habitación
cStatusRoomStatic.loadBaseInstances
cStatusRoomOperationStatic.loadBaseInstances

'frmMenu.Show
frmLogin.Show
Exit Sub
control:
MsgBox "error inesperado"
End Sub

Public Function getNewConection() As ADODB.Connection
'Se lee la configuracion de conexion a la base de datos
fileConfigPath = App.Path & "\config.ini"

Dim user As String
Dim pass As String
Dim server As String
Dim bd As String
user = ModFiles.readPropertyFile(fileConfigPath, "user", "")
pass = ModFiles.readPropertyFile(fileConfigPath, "pass", "")
server = ModFiles.readPropertyFile(fileConfigPath, "server", "localhost")
bd = ModFiles.readPropertyFile(fileConfigPath, "bd", "puertacontrol")

Dim newMysqlCon As New ADODB.Connection

With newMysqlCon
    .ConnectionString = "DRIVER={MySQL ODBC 3.51 Driver};" _
                        & "SERVER=" & server & ";" _
                        & "DATABASE=" & bd & ";" _
                        & "User=" & user & ";" _
                        & "Password=" & pass & ";" _
                        & "PORT=3306;" _
                        & "OPTION=3;"
    .CursorLocation = adUseClient
    .Open
End With

Set getNewConection = newMysqlCon
End Function

Public Sub rollBack(conBd As ADODB.Connection)
On Error Resume Next
If Not conBd Is Nothing And conBd.State = adStateOpen Then
    conBd.RollbackTrans
End If
End Sub


