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
Public dateActionFormated As String
Public idRoom As Integer
Public noRoom As Integer
Public message As String
Public processed As Boolean
Public dateProcessed As Date

Public Sub loadOperation(id As Integer, dateAction As Date, idRoom As Integer, message As String, _
    processed As Boolean, dateProcessed As Date)
    Me.id = id
    Me.dateAction = dateAction
    Me.dateActionFormated = Format(dateAction, "yyyy-MM-dd HH:mm:ss")
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
Dim status As String
Dim processedStatus As Integer
Dim dateLastOperation As Date
Dim secondsDiff As Double
Dim roomEnabled As Integer

'Se solicita una conexion a la bd
Set con = ModConexion.getNewConection
rec.CursorLocation = adUseClient

rec.Open "select code_status,number,alerts_enabled from room where id=" & Me.idRoom & "", con, adOpenStatic, adLockOptimistic

If rec.RecordCount >= 1 Then
    Me.noRoom = rec("number")
    status = rec("code_status")
    roomEnabled = rec("alerts_enabled")
    rec.Close
    
    If roomEnabled = 0 Then
        processedStatus = cStatusRoomOperationStatic.ROOM_DISABLED.code
    Else
        'Busca la operación para la última habitación
        rec.Open "SELECT date_action FROM operation_room_log where number_room=" & Me.idRoom & " and processed<>0 ORDER BY id DESC LIMIT 1", con, adOpenStatic, adLockOptimistic
        dateLastOperation = rec("date_action")
        rec.Close
        
        secondsDiff = DateDiff("s", dateLastOperation, Now())
        
        If secondsDiff <= 30 Then
            processedStatus = cStatusRoomOperationStatic.ERROR_NOISE.code
        Else
            If (Ap.cStatusRoomStatic.AVAILABLE.code = status Or Ap.cStatusRoomStatic.CLEAN_PROGRESS.code = status) Then
                If notify Then
                    processedStatus = cStatusRoomOperationStatic.SUCCESS.code
                Else
                    processedStatus = cStatusRoomOperationStatic.ERROR_NO_SYSTEM_EMAIL.code
                End If
            End If
        End If
    End If

    'Marcar la operacion como procesada
    Dim dateTimeProcessedFormated As String
    dateTimeProcessedFormated = Format(Now(), "yyyy-MM-dd HH:mm:ss")

    SQL = "Update operation_room_log SET processed='" & processedStatus & "',date_processed='" & dateTimeProcessedFormated & "' " & _
    "where id=" & Me.id & ""
    con.Execute (SQL)
End If
End Sub

Public Function notify()
On Error Resume Next
Dim template As String
template = "<html><head> </head> <body> <table style=' width: 400px; text-align: center; font-family: Calibri,Arial,sans-serif; font-size: 18px; '> <tbody><tr> <th style=' border-bottom: 3px solid #608BB1; '><img src='https://image.ibb.co/gBaUSw/puertacontrol_small.png' alt='puertacontrol_small' border='0'></th> </tr> <tr> <td style=' font-weight: 700; font-size: 22px; '>ALERTA</td> </tr> <tr> <td style=' border-bottom: 1px solid #608BB1; '>La habitación <strong>#NO#</strong><br> fue abierta el <b>#FECHA#</b><br> por fuera de los horarios permitidos.</td> </tr><tr> <td style='font-size: 6px;font-weight: 600;'>&nbsp;</td> </tr> <tr> <td style=' font-size: 14px; '>Cualquier inquietud, estaremos dispuesto a solucionarla</td> </tr><tr> <td style='font-size: 14px;font-weight: 600;'>tudesarrolloo@gmail.com - 313 704 9824</td> </tr> </tbody></table> </body></html>"

template = Replace(template, "#NO#", Me.noRoom)
template = Replace(template, "#FECHA#", Me.dateActionFormated)


Dim iMsg, iConf, Flds, schema, SendEmailGmail
Set iMsg = CreateObject("CDO.Message")
Set iConf = CreateObject("CDO.Configuration")
Set Flds = iConf.Fields

' send one copy with Google SMTP server (with autentication)
schema = "http://schemas.microsoft.com/cdo/configuration/"
Flds.item(schema & "sendusing") = 2
Flds.item(schema & "smtpserver") = "smtp.gmail.com"
Flds.item(schema & "smtpserverport") = "25"
Flds.item(schema & "smtpauthenticate") = 1
Flds.item(schema & "sendusername") = "puertacontrol.notify@gmail.com"
Flds.item(schema & "sendpassword") = "puertacontrol2017"
Flds.item(schema & "smtpusessl") = 1
Flds.Update

With iMsg
    DoEvents
    .To = Ap.emailsToNotify
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

SQL = "INSERT INTO alert (id_room, code_type,date) VALUES " & _
    "(" & idRoom & ",'IDO','" & Me.dateActionFormated & "');"
con.Execute (SQL)
End Function
