Attribute VB_Name = "ModFlexGrid"
'Private Declare Function SetErrorMode Lib "kernel32" (ByVal wMode As Long) As Long
Public Declare Sub InitCommonControls Lib "Comctl32" ()

Public Sub Cargar_MsFlexGrid( _
    cn As Connection, _
    Consulta_SQL As String, _
    FlexGrid As Object, Form As Form)
    
    On Error GoTo Error_Handler
    
    'Variables para el Recordset, _
     El campo de la base de datos _
     El dato actual y un array para los anchos de columna
    Dim rst             As Recordset
    Dim Campo           As Field
    Dim Dato            As String
    Dim n               As Long
    Dim arrColWidth()   As Long
    
    ' -- Crear Nuevo recordset
    Set rst = New Recordset
    Form.MousePointer = vbHourglass
    With FlexGrid
        ' -- Deshabilitae el redibujado del control para que la carga sea mas veloz
        .Redraw = False
        ' -- Abre el recordset
        rst.Open Consulta_SQL, cn
        ' -- Redimensiona el array a la cantidad de columnas
        ReDim arrColWidth(1 To rst.Fields.Count)
        
        Dato = vbNullString
        n = 1
        ' -- Recorre los campos de la tabla
        For Each Campo In rst.Fields
            ' -- almacena el ancho de los campos
            Dato = Dato & Campo.Name & vbTab
            arrColWidth(n) = Form.TextWidth(Campo.Name & "  ")
            n = n + 1
        Next
        
        .FormatString = Left(Dato, Len(Dato) - 1)
        .FixedCols = 0
        ' -- Recorre todos los registros del recordset
        While Not rst.EOF
            n = 1
            Dato = vbNullString
            For Each Campo In rst.Fields
                Dato = Dato & Campo.Value & vbTab
                ' -- si el dato NO es un valor nulo ... comprueba
                If Not IsNull(Campo.Value) Then
                    ' si el ancho del dato actual es mayor al de su columna, entonces asigna el nuevo ancho
                    If Form.TextWidth(Campo.Value) > arrColWidth(n) Then
                        arrColWidth(n) = Form.TextWidth(Campo.Value)
                    End If
                End If
                n = n + 1
            Next
            ' -- Agregar la fila al Msflexgrid
            .AddItem Dato
            ' -- Mueve el recordset al siguiente registro
            rst.MoveNext
        Wend
        
        ' -- cierra el recordset y elimina la variable
        On Error Resume Next
            rst.Close
            Set rst = Nothing
        ' -- Eliminar la primer fila vacía
        .RemoveItem 1
        On Error GoTo 0
        ' -- ajusta los encabezados de columna
        For n = 1 To .Cols
            .ColWidth(n - 1) = arrColWidth(n)
        Next
        ' -- Habilitar nuevamente el Repintado del control
        .Redraw = True
        Erase arrColWidth
        Form.MousePointer = vbDefault
    End With
    
    Exit Sub
    ' -- Errores -----------------------------------------------
Error_Handler:
On Error Resume Next
rst.Close
Set rst = Nothing
MsgBox Err.Description, vbCritical
Form.MousePointer = vbDefault
End Sub

  
' --------------------------------------------------------------------------------------------
' Función para Colorear por Filas
' --------------------------------------------------------------------------------------------
Public Sub paintByRows(objFlexgrid As Object, ByVal lColor1 As Long, ByVal lColor2 As Long)
    Dim iRow            As Long
    Dim iCol            As Integer
    Dim lCurrentColor   As Long
      
    With objFlexgrid
    ' -- Desahbilitar el repintado del control para agilizar el trabajo
        .Redraw = False
        .BackColor = lColor1
        ' -- Recorrer las filas
        For iRow = 1 To .Rows - 1 Step 2
            ' -- Establecer la Fila actual del flex
            .Row = iRow
            ' -- Recorre por columna y le aplica el color a la celda indicada de la fila actual
            For iCol = 0 To .Cols - 1
                .Col = iCol
                .CellBackColor = lColor2
            Next
        Next
        ' -- Reestablecer la propiedad Redraw para poder refrescar el control
        .Redraw = True
    End With
End Sub

' -----------------------------------------------------------------------------------------
' Función opcional para configurar propiedades de la grilla
' -----------------------------------------------------------------------------------------
Public Sub pv_Flexgrid_Initialize(MSHFlex As MSHFlexGrid)
      
      
    With MSHFlex
        .AllowUserResizing = flexResizeColumns
        .FixedCols = 0
        .FixedRows = 1
        .ForeColorFixed = vbHighlight
        .BackColorFixed = vbWhite
        .GridLinesFixed = flexGridDots
        .RowHeight(0) = 450
        .GridColor = RGB(190, 190, 190)
        .SelectionMode = flexSelectionByRow
        .Refresh
    End With
End Sub
