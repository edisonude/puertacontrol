VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "COperationRoomLog"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

'Clase COperationRoomLog, mapea directamente con la tabla service para la gestión de operaciones

'Attributes
Public id As Integer
Public dateAction As Date
Public idRoom As Integer
Public message As String
Public processed As Boolean
Public dateProcessed As Date

Public Sub loadOperation(id As Integer, dateAction As Date, idRoom As Integer, message As String, _
    processed As Boolean, dateProcessed As Date)
    Me.id = id
    Me.dateAction = dateAction
    Me.idRoom = idRoom
    Me.message = message
    Me.processed = processed
    Me.dateProcessed = dateProcessed
End Sub


Public Function loadLast10OperationsNoProcessed() As COperationRoomLog()
Dim conBd As ADODB.Connection
Dim rec As New ADODB.Recordset
Dim operationsToProcess(10) As New COperationRoomLog
Dim pos As Integer
pos = 1

'Se solicita una conexion a la bd
Set conBd = ModConexion.getNewConection
rec.CursorLocation = adUseClient

rec.Open "select * from operation_room_log where processed='0' order by date_action ASC LIMIT 10", conBd, adOpenStatic, adLockOptimistic

If (rec.RecordCount >= 1) Then
    Do Until rec.EOF
        Dim operation As New COperationRoomLog
        Call operation.loadOperation(rec(0), rec(1), rec(2), rec(3), rec(4), Now)
        'operationsToProcess(pos) = operation
        operation.process
        rec.MoveNext
    Loop
End If

loadLast10OperationsNoProcessed = operationsToProcess

rec.Close
End Function

Public Sub process()
Dim con As ADODB.Connection
Dim rec As New ADODB.Recordset
Dim operationsToProcess(10) As New COperationRoomLog
Dim pos As Integer
pos = 1

'Se solicita una conexion a la bd
Set con = ModConexion.getNewConection
rec.CursorLocation = adUseClient

rec.Open "select * from service where status='ACT'", con, adOpenStatic, adLockOptimistic

If (rec.RecordCount >= 1) Then
    Dim serviceActive As New CService
    Call serviceActive.loadService(rec(0), rec(1), rec(2), rec(3), rec(4), rec(5), rec(6), rec(7), rec(8), rec(9))
    
    If (Me.dateAction >= serviceActive.dateTimeStartService And Me.dateAction <= serviceActive.dateTimeEndClean) Then
        'La acción se dio en un periodo permitido de tiempo
    Else
        'Notificar
        Call notify(Me.idRoom, Me.dateAction)
    End If
    
    'Marcar la operacion como procesada
    Dim dateTimeProcessedFormated As String
    dateTimeProcessedFormated = Format(Now(), "yyyy-MM-dd HH:mm:ss")

    SQL = "Update operation_room_log SET processed='1',date_processed='" & dateTimeProcessedFormated & "' " & _
    "where number_room=" & Me.idRoom & ""
    con.Execute (SQL)
End If
rec.Close
End Sub

Public Function notify(idRoom As Integer, dateOpen As Date)
Dim con As ADODB.Connection
Dim rec As New ADODB.Recordset
Dim noRoom As Integer

'Se solicita una conexion a la bd
Set con = ModConexion.getNewConection
rec.CursorLocation = adUseClient

rec.Open "select * from room where id=" & idRoom & "", con, adOpenStatic, adLockOptimistic

If (rec.RecordCount >= 1) Then
    noRoom = rec("number")
    
    'Marcar la operacion como procesada
    Dim dateTimeProcessedFormated As String
    dateTimeProcessedFormated = Format(Now(), "yyyy-MM-dd HH:mm:ss")
End If
rec.Close

Dim template As String
template = "<html><head> </head> <body> <table style=' width: 400px; text-align: center; font-family: Calibri,Arial,sans-serif; font-size: 18px; '> <tbody><tr> <th style=' border-bottom: 3px solid #608BB1; '><img src='https://image.ibb.co/gBaUSw/puertacontrol_small.png' alt='puertacontrol_small' border='0'></th> </tr> <tr> <td style=' font-weight: 700; font-size: 22px; '>ALERTA</td> </tr> <tr> <td style=' border-bottom: 1px solid #608BB1; '>La habitación <strong>#NO#</strong><br> fue abierta el <b>#FECHA#</b><br> por fuera de los horarios permitidos.</td> </tr><tr> <td style='font-size: 6px;font-weight: 600;'>&nbsp;</td> </tr> <tr> <td style=' font-size: 14px; '>Cualquier inquietud, estaremos dispuesto a solucionarla</td> </tr><tr> <td style='font-size: 14px;font-weight: 600;'>tudesarrolloo@gmail.com - 313 704 9824</td> </tr> </tbody></table> </body></html>"

template = Replace(template, "#NO#", noRoom)
template = Replace(template, "#FECHA#", dateOpen)


Dim iMsg, iConf, Flds, schema, SendEmailGmail
Set iMsg = CreateObject("CDO.Message")
Set iConf = CreateObject("CDO.Configuration")
Set Flds = iConf.Fields

' send one copy with Google SMTP server (with autentication)
schema = "http://schemas.microsoft.com/cdo/configuration/"
Flds.Item(schema & "sendusing") = 2
Flds.Item(schema & "smtpserver") = "smtp.gmail.com"
Flds.Item(schema & "smtpserverport") = "25"
Flds.Item(schema & "smtpauthenticate") = 1
Flds.Item(schema & "sendusername") = "puertacontrol.notify@gmail.com"
Flds.Item(schema & "sendpassword") = "puertacontrol2017"
Flds.Item(schema & "smtpusessl") = 1
Flds.Update

With iMsg
    DoEvents
    .To = "edisonandres2@hotmail.com"
    .From = "puertacontrol.notify@gmail.com"
    .Subject = "Alerta - Apertura habitación"
    .HTMLBody = template
    .Sender = "puertacontrol.notify@gmail.com"
    .Organization = "S.M.B Productions"
    .ReplyTo = "puertacontrol.notify@gmail.com"
    'If AttachFile <> "" Then
    '    .AddAttachment (AttachFile)
    'End If
    Set .Configuration = iConf
    SendEmailGmail = .send
End With

Set iMsg = Nothing
Set iConf = Nothing
Set Flds = Nothing
Call saveNotify(idRoom)
notify = True
End Function

Public Function saveNotify(idRoom As Integer)
Dim con As ADODB.Connection
Set con = ModConexion.getNewConection

Dim dateAlertFormated As String
dateAlertFormated = Format(Now(), "yyyy-MM-dd HH:mm:ss")

SQL = "INSERT INTO alert (id_room, code_type,date) VALUES " & _
    "(" & idRoom & ",'IDO','" & dateAlertFormated & "');"
con.Execute (SQL)
End Function
