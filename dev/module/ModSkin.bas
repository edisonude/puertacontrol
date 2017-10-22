Attribute VB_Name = "ModSkin"
'Aplica el skin por defecto al formulario recibido
Public Function applyDefaultSkin(Form As Form, skin As SkinFramework)
skin.LoadSkin App.Path & "/Skins/default.cjstyles", ""
skin.ApplyWindow Form.hWnd
skin.ApplyOptions = skin.ApplyOptions Or xtpSkinApplyMetrics
End Function
