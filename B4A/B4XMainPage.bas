﻿B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.85
@EndOfDesignText@
#Region Shared Files
#CustomBuildAction: folders ready, %WINDIR%\System32\Robocopy.exe,"..\..\Shared Files" "..\Files"
'Ctrl + click to sync files: ide://run?file=%WINDIR%\System32\Robocopy.exe&args=..\..\Shared+Files&args=..\Files&FilesSync=True
#End Region

'Ctrl + click to export as zip: ide://run?File=%B4X%\Zipper.jar&Args=WeChatShare.zip

Sub Class_Globals
	Private Root As B4XView
	Private xui As XUI
	Private txtMessage As EditText
End Sub

Public Sub Initialize
'	B4XPages.GetManager.LogEvents = True
End Sub

Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.LoadLayout("MainPage")
End Sub

Private Sub BtnShare_Click
	Dim in As Intent
	in.Initialize(in.ACTION_SEND, "")
	in.PutExtra("android.intent.extra.TEXT", txtMessage.Text)
	in.SetType("text/plain")
	in.SetPackage("com.tencent.mm")
	StartActivity(in)
End Sub