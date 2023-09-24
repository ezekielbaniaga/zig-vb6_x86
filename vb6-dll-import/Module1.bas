Attribute VB_Name = "Module1"
Public Const MSG_TITLE As String = "MessageBox From VB6"


Public Declare Function SetDllDirectory Lib "kernel32" Alias "SetDllDirectoryA" (ByVal path As String) As Long

Public Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (lpvDest As Any, lpvSource As Any, ByVal cbCopy As Long)

Public Declare Function add Lib "zig-dll-sample.dll" (ByVal a As Long, ByVal b As Long) As Long

Public Declare Function getStat Lib "zig-dll-sample.dll" () As Long

Public Declare Function getLastMessage Lib "zig-dll-sample.dll" () As Long

Public Declare Sub testMsg Lib "zig-dll-sample.dll" (ByVal msg As String, ByVal callback As Long)

Public Declare Sub testString Lib "zig-dll-sample.dll" (ByVal callback As Long)


Public Sub CALLBACK_testMsg()
Dim stats As Long
stats = getStat()
MsgBox "Callback called and status = " & CStr(stats), , MSG_TITLE
End Sub

Public Sub CALLBACK_testString()
Dim lastMsgHandle As Long
Dim lastMsg As String

lastMsgHandle = getLastMessage
lastMsg = String$(1000, " ")

CopyMemory ByVal lastMsg, ByVal lastMsgHandle, Len(lastMsg) - 1

MsgBox "Last message: " & lastMsg, , MSG_TITLE
End Sub
