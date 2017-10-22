Attribute VB_Name = "ModConexion"
Option Explicit

'Variables de configuracion
Public SQL As String
Public pathBD As String
Public keyBD As String

Public decimalDigits As Integer
Public cursorLink As String     'Path with the cursor for links


'Variables para conexion ODBC
'Public strDSN As String
'Public strUSER As String
'Public strPASS As String
'Public strCON As String
'Public RDOCONEXION As rdoConnection
'Public RDOAMBIENTE As rdoEnvironment

'Conexion ADOB
Public mysqlCon As New ADODB.Connection
Public rs As New ADODB.Recordset

Public properties As New CProperty


Sub Main()
'TODO = Administrar la contraseña
keyBD = "g900421553"
'TODO = Administrar número de digitos decimales
decimalDigits = 0
defaultSkin = "Mxs100.skn"

'Configuration Path Files
    createFolder App.Path & "\imgclient"

    'Path for employees
    NO_EMPLOYEE_PHOTO = App.Path & "\images\noUser.gif"
    PATH_EMPLOYEES_PHOTO = App.Path & "\imgclient\employees"
    PATH_DATASHEET_TOOL = App.Path & "\datasheets"
    createFolder PATH_EMPLOYEES_PHOTO
    createFolder PATH_DATASHEET_TOOL
    copyFile NO_EMPLOYEE_PHOTO, PATH_EMPLOYEES_PHOTO & "\"
    
    'Path for tools
    NO_TOOL_PHOTO = App.Path & "\images\noTool.gif"
    PATH_TOOLS_PHOTO = App.Path & "\imgclient\tools"
    createFolder PATH_TOOLS_PHOTO
    copyFile NO_TOOL_PHOTO, PATH_TOOLS_PHOTO & "\"
    
    'Path for type tools
    NO_TYPE_TOOL_PHOTO = App.Path & "\images\noTool.gif"
    PATH_TYPE_TOOLS_PHOTO = App.Path & "\imgclient\tipo_tool"
    createFolder PATH_TYPE_TOOLS_PHOTO
    copyFile NO_TYPE_TOOL_PHOTO, PATH_TYPE_TOOLS_PHOTO & "\"
    
    'Path for implements
    NO_IMPLEMENT_PHOTO = App.Path & "\images\noImplement.gif"
    PATH_IMPLEMENTS_PHOTO = App.Path & "\imgclient\implements"
    createFolder PATH_IMPLEMENTS_PHOTO
    copyFile NO_IMPLEMENT_PHOTO, PATH_IMPLEMENTS_PHOTO & "\"

    cursorLink = App.Path & "\images\hand.cur"

'Encontrar ruta de BD desde un archivo
Open App.Path & "\pathBD" For Input As #1
Dim Linea As String, Total As String
Do Until EOF(1)
    Line Input #1, pathBD
Loop
Close #1


    Dim O As DSN
    Set O = New DSN
    
BuscaDSN:
    Dim Lista_Dsn() As String
    O.ObtenerDSN Lista_Dsn()
    
    Dim i As Integer
    For i = LBound(Lista_Dsn) To UBound(Lista_Dsn) - 1
        If Lista_Dsn(i) = "ControlTools" Then
            GoTo CreaConexion
            Exit For
        End If
    Next
    
CreaDSN:

    O.ODBC_DSN_TIPO = usuario
    With O
        .ODBC_DSN_NAME = "ControlTools"
        .ODBC_DRIVER_NAME = "Microsoft Access Driver (*.mdb)"
        .ODBC_DATA_SOURCE = pathBD
    Call O.Crear_Dsn
    End With

CreaConexion:

strDSN = "ControlTools"
strUSER = "ControlTools"
strPASS = keyBD
strCON = "DSN=" & strDSN & "; VID= " & strUSER & ";Pwd=" & strPASS & ";"
Set RDOAMBIENTE = rdoCreateEnvironment(strDSN, strUSER, strCON)
With RDOAMBIENTE
    .LoginTimeout = 10
    .CursorDriver = rdUseOdbc
Set RDOCONEXION = .OpenConnection(strDSN, rdDriverNoPrompt, False, strCON)
End With
Set O = Nothing

'CONEXION CON ADOB
With cnn
    .CursorLocation = adUseClient
    .Open "Provider=Microsoft.Jet.OLEDB.4.0; " & _
            "Data Source=" & pathBD & ";" & _
            "Jet OLEDB:Database Password=" & keyBD & ""
End With

'frmMenu.Show
frmLogueo.Show
End Sub


