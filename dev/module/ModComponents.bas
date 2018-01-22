Attribute VB_Name = "ModComponents"
'ModComponents Variables

'Flag to mark when is doing a clean of filters
Public cleaningFilters As Boolean

'------------------------------------------------------------
' GENERAL
'------------------------------------------------------------
    'Add shadow to pic
    Public Sub addShadowToPic(picture As PictureBox, picShadow As PictureBox)
        picShadow.Height = picture.Height
        picShadow.Width = picture.Width
        picShadow.Top = picture.Top + 60
        picShadow.left = picture.left + 60
        picShadow.Visible = True
        picShadow.ZOrder 0
        picture.ZOrder 0
    End Sub
    
    'Set the initial position to the form
    Public Sub setInitalPositionForm(Form As Form, reference As label)
        Form.Top = reference.Top + 200
        Form.left = (Screen.Width - Form.Width) / 2
    End Sub
    
    'Set the initial position to the form
    Public Sub setFixedPositionForm(Form As Form, reference As label, left As Integer)
        Form.Top = reference.Top + 200
        Form.left = reference.left + left
    End Sub
    
    'Load the value in a component, in case of null load the default value
    Public Sub setValue(component, value As String, defaultValue As String)
        If Validations.IsEmpty(value) Then
            component = value
        Else
            component = defaultValue
        End If
    End Sub
    
    'Open a form as a window, with a name for the title
    Public Sub openFormAsWindow(Form As Form, title As String)
        Form.BorderStyle = 1
        Form.Caption = title
        AplicarSkin Form, ""
        Form.Show
    End Sub
    
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
    
    'Process the action of unload a form, for to skow if should call other and reload it
    Public Sub processUnload()
        If Not lastForm Is Nothing And Not IsNull(lastForm) Then
            If shouldReloadForm Then
                lastForm.reloadForm
            End If
            lastForm.Show
            lastForm.Enabled = True
        End If
    End Sub
    
    'Set a error to a component
    Public Sub setErrorToComponent(component)
        On Error Resume Next
        component.BackColor = &HDFDFFF
        component.ForeColor = vbRed
    End Sub
    
    'Clean a error to a component
    Public Sub cleanErrorToComponent(component)
        On Error Resume Next
        component.ForeColor = vbBlack
        component.BackColor = vbWhite
    End Sub
    
    'Clean a error to a component
    Public Function hasError(component) As Boolean
        hasError = (component.ForeColor = vbRed)
    End Function

'------------------------------------------------------------
' TEXTBOX
'------------------------------------------------------------
    Public Sub addNewlinesTextbox(textbox As textbox)
        Dim currentText As String
        Dim lines() As String
        currentText = textbox.Text
        lines = Split(currentText, "|")
        textbox.Text = ""
        For i = LBound(lines) To UBound(lines)
            textbox.Text = textbox.Text & lines(i) & vbNewLine
        Next
    End Sub
    
    Public Sub selectText(textbox As textbox)
        textbox.SelStart = 0
        textbox.SelLength = Len(textbox)
    End Sub

'------------------------------------------------------------
' LABEL
'------------------------------------------------------------

'Set the initial position to the form
Public Sub setLabelAsLink(label As label)
    label.FontUnderline = True
    label.ForeColor = vbBlue
    label.MousePointer = 99
    label.MouseIcon = LoadPicture(cursorLink)
    label.MousePointer = 99
End Sub

'Set the initial position to the form
Public Sub setLabelNormal(label As label)
    label.FontUnderline = False
    label.ForeColor = vbBlack
    label.MousePointer = 0
End Sub
    
'------------------------------------------------------------
' COMBOBOX
'------------------------------------------------------------

    'Establece un item seleccionado en el combo por el valor id de su dato
    Public Sub setItemSelectedById(combo As ComboBox, id)
        For i = 0 To combo.ListCount - 1
            If combo.ItemData(i) = id Then
                combo.ListIndex = i
                Exit For
            End If
        Next
    End Sub
    
    'Determine if a combo has a item selected
    Public Function comboHasSelection(combo As ComboBox) As Boolean
        If combo.ListIndex = -1 Then
            comboHasSelection = False
        Else
            comboHasSelection = True
        End If
    End Function

'------------------------------------------------------------
' IMAGE
'------------------------------------------------------------

    'load an image on an imageBox
    Public Sub loadImage(imageBox As image, picture As String)
    imageBox.picture = LoadPicture(picture)
    End Sub
    
    Public Sub showImageInVisorWindows(image As String)
        Shell ("rundll32.exe C:\WINDOWS\system32\shimgvw.dll,ImageView_Fullscreen " & image)
    End Sub

'------------------------------------------------------------
' LISTVIEW
'------------------------------------------------------------
    'Set the width for the columns
    Public Sub setWidthForColumns(list As ListView, widthCols() As Double)
    For i = 1 To UBound(widthCols)
        list.ColumnHeaders(i).Width = widthCols(i)
    Next
    End Sub

    'Set the width for the columns and filters
    Public Sub setWidthForColumnsAndFilters(filters, list As ListView, widthCols() As Double)
    On Error GoTo Control
        For i = 1 To UBound(widthCols)
            list.ColumnHeaders(i).Width = widthCols(i)
            filters(i).Width = widthCols(i)
            If i = 1 Then
                filters(i).left = list.left
            Else
                filters(i).left = filters(i - 1).left + widthCols(i - 1)
            End If
            filters(i).left = filters(i).left + 5
continueFor:
        Next
        Exit Sub
        
Control:
    If Err.Number = 340 Then
        GoTo continueFor
    End If
    
    End Sub
    
    'Clean the filter of a list
    'except: filter to except and not clean, if has -1 clean all the filters
    Public Sub cleanFilters(filters, except As Integer)
        ModComponents.cleaningFilters = True
        For i = 1 To filters.count - 1
            If i <> except Then
                filters(i).Text = ""
            End If
        Next
        ModComponents.cleaningFilters = False
    End Sub
    
    Public Sub filtersNoResult(picMessage As PictureBox, list As ListView, lMessage As label)
        picMessage.left = list.left
        picMessage.Width = list.Width
        picMessage.Top = list.Top + list.Height - picMessage.Height
        lMessage.Caption = Mensajes.FILTER_NO_RESULT
        picMessage.Visible = True
    End Sub
    
    Public Sub clearInfoMessage(picMessage As PictureBox)
        If picMessage.Visible = True Then picMessage.Visible = False
    End Sub
    
    'Limpia un mensaje de error
    Public Sub hideErrorMessage(picError As PictureBox)
        picError.Visible = False
    End Sub
    
    'Muestra un mensaje de error
    Public Sub showErrorMessage(picError As PictureBox, lblError As label, error As String)
        picError.Visible = True
        lblError.Caption = error
    End Sub
    
    'Ordenar por columnas
    Public Sub orderByColumn(list As ListView, ByVal ColumnHeader As MSComctlLib.ColumnHeader, window As Form)
    On Error Resume Next
          
          
        With list
          
            Dim i As Long
            Dim Formato As String
            Dim strData() As String
              
            Dim Columna As Long
              
            Call SendMessage(window.hWnd, WM_SETREDRAW, 0&, 0&)
              
              
            Columna = ColumnHeader.Index - 1
              
            '''''''''''''''''''''''''''''''''''''''''''''
            ' Tipo de dato a ordenar
            ''''''''''''''''''''''''''''''''''''''''''''''
              
            Select Case UCase$(ColumnHeader.Tag)
          
              
            ' Fecha
            '''''''''''''''''''''''''''''''''''''''''''''
            Case "DATE"
              
                Formato = "YYYYMMDDHhNnSs"
              
                ' Ordena alfabéticamente la columna con Fechas _
                  ( es la columna que tiene en el tag el valor DATE )
              
                With .ListItems
                    If (Columna > 0) Then
                        For i = 1 To .count
                            With .item(i).ListSubItems(Columna)
                                .Tag = .Text & Chr$(0) & .Tag
                                If IsDate(.Text) Then
                                    .Text = Format(CDate(.Text), _
                                                        Formato)
                                Else
                                    .Text = ""
                                End If
                            End With
                        Next i
                    Else
                        For i = 1 To .count
                            With .item(i)
                                .Tag = .Text & Chr$(0) & .Tag
                                If IsDate(.Text) Then
                                    .Text = Format(CDate(.Text), _
                                                        Formato)
                                Else
                                    .Text = ""
                                End If
                            End With
                        Next i
                    End If
                End With
                  
                ' Ordena alfabéticamente
                  
                .SortOrder = (.SortOrder + 1) Mod 2
                .SortKey = ColumnHeader.Index - 1
                .Sorted = True
                  
                With .ListItems
                    If (Columna > 0) Then
                        For i = 1 To .count
                            With .item(i).ListSubItems(Columna)
                                strData = Split(.Tag, Chr$(0))
                                .Text = strData(0)
                                .Tag = strData(1)
                            End With
                        Next i
                    Else
                        For i = 1 To .count
                            With .item(i)
                                strData = Split(.Tag, Chr$(0))
                                .Text = strData(0)
                                .Tag = strData(1)
                            End With
                        Next i
                    End If
                End With
                  
            ' Datos de numéricos
            '''''''''''''''''''''''''''''''''''''''''''''
            Case "NUMBER"
              
                ' Ordena alfabéticamente la columna con números _
                  ( es la columna que tiene en el tag el valor NUMBER )
              
                Formato = String(30, "0") & "." & String(30, "0")
                      
                With .ListItems
                    If (Columna > 0) Then
                        For i = 1 To .count
                            With .item(i).ListSubItems(Columna)
                                .Tag = .Text & Chr$(0) & .Tag
                                If IsNumeric(.Text) Then
                                    If CDbl(.Text) >= 0 Then
                                        .Text = Format(CDbl(.Text), _
                                            Formato)
                                    Else
                                        .Text = "&" & InvNumber( _
                                            Format(0 - CDbl(.Text), _
                                            Formato))
                                    End If
                                Else
                                    .Text = ""
                                End If
                            End With
                        Next i
                    Else
                        For i = 1 To .count
                            With .item(i)
                                .Tag = .Text & Chr$(0) & .Tag
                                If IsNumeric(.Text) Then
                                    If CDbl(.Text) >= 0 Then
                                        .Text = Format(CDbl(.Text), _
                                            Formato)
                                    Else
                                        .Text = "&" & InvNumber( _
                                            Format(0 - CDbl(.Text), _
                                            Formato))
                                    End If
                                Else
                                    .Text = ""
                                End If
                            End With
                        Next i
                    End If
                End With
                  
                ' Ordena alfabéticamente
                  
                .SortOrder = (.SortOrder + 1) Mod 2
                .SortKey = ColumnHeader.Index - 1
                .Sorted = True
                  
                With .ListItems
                    If (Columna > 0) Then
                        For i = 1 To .count
                            With .item(i).ListSubItems(Columna)
                                strData = Split(.Tag, Chr$(0))
                                .Text = strData(0)
                                .Tag = strData(1)
                            End With
                        Next i
                    Else
                        For i = 1 To .count
                            With .item(i)
                                strData = Split(.Tag, Chr$(0))
                                .Text = strData(0)
                                .Tag = strData(1)
                            End With
                        Next i
                    End If
                End With
              
            Case Else
                          
                .SortOrder = (.SortOrder + 1) Mod 2
                .SortKey = ColumnHeader.Index - 1
                .Sorted = True
                  
            End Select
          
        End With
          
        Call SendMessage(window.hWnd, WM_SETREDRAW, 1&, 0&)
        list.Refresh
    End Sub
    
    Public Function InvNumber(ByVal Number As String) As String
        Static i As Integer
        For i = 1 To Len(Number)
            Select Case Mid$(Number, i, 1)
            Case "-": Mid$(Number, i, 1) = " "
            Case "0": Mid$(Number, i, 1) = "9"
            Case "1": Mid$(Number, i, 1) = "8"
            Case "2": Mid$(Number, i, 1) = "7"
            Case "3": Mid$(Number, i, 1) = "6"
            Case "4": Mid$(Number, i, 1) = "5"
            Case "5": Mid$(Number, i, 1) = "4"
            Case "6": Mid$(Number, i, 1) = "3"
            Case "7": Mid$(Number, i, 1) = "2"
            Case "8": Mid$(Number, i, 1) = "1"
            Case "9": Mid$(Number, i, 1) = "0"
            End Select
        Next
        InvNumber = Number
    End Function


