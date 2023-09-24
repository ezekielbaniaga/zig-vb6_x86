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
      Caption         =   "Pass String and Show Message"
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
MsgBox "12 + 32 = " & CStr(add(12, 32)), , MSG_TITLE
End Sub

Private Sub Command2_Click()
Call testMsg("Hello There. This string is passed from VB6", AddressOf CALLBACK_testMsg)
End Sub

Private Sub Command3_Click()
Call testString(AddressOf CALLBACK_testString)
End Sub

Private Sub Form_Load()
SetDllDirectory App.path
End Sub
