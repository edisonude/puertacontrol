Attribute VB_Name = "ModConexion"
Option Explicit

'Variables de configuracion
Public SQL As String
Public pathBD As String
Public keyBD As String

'Almacena la ruta del archivo de configuraciones
Dim fileConfigPath As String

'Conexion ADOB
Public mysqlCon As New ADODB.Connection
'Public properties As New CProperty

Sub Main()

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

'CONEXION CON ADOB
With mysqlCon
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

frmTest.Show
End Sub


