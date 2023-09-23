VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4950
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7680
   LinkTopic       =   "Form1"
   ScaleHeight     =   4950
   ScaleWidth      =   7680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "Test String Callbacks"
      Height          =   855
      Left            =   1200
      TabIndex        =   2
      Top             =   3000
      Width           =   4935
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Show Native MsgBox (Win32)"
      Height          =   855
      Left            =   1200
      TabIndex        =   1
      Top             =   1800
      Width           =   4935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Show VB MsgBox"
      Height          =   855
      Left            =   1200
      TabIndex        =   0
      Top             =   600
      Width           =   4935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
MsgBox add(12, 32)
End Sub

Private Sub Command2_Click()
Call testMsg("Hello There", AddressOf MyCallback)
End Sub

Private Sub Command3_Click()
Dim lastMsgHandle As Long
Dim lastMsg As String

lastMsgHandle = getLastMessage
lastMsg = String$(1000, " ")

CopyMemory ByVal lastMsg, ByVal lastMsgHandle, Len(lastMsg) - 1

MsgBox "Last message: " & lastMsg
End Sub

Private Sub Form_Load()
SetDllDirectory App.path
End Sub
