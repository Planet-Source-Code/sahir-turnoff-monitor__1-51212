VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   1440
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Function SendMessage Lib _
"user32" Alias "SendMessageA" (ByVal hWnd As Long, _
ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Any) As Long


Const SC_MONITORPOWER = &HF170&
Const MONITOR_ON = -1&
 Const MONITOR_OFF = 2&
Const WM_SYSCOMMAND = &H112

'Turn Monitor on:
'SendMessage Me.hWnd, WM_SYSCOMMAND, SC_MONITORPOWER, MONITOR_ON
'
'Turn Monitor off:
'SendMessage Me.hWnd, WM_SYSCOMMAND, SC_MONITORPOWER, MONITOR_OFF


Private Sub Command1_Click()
SendMessage Me.hWnd, WM_SYSCOMMAND, SC_MONITORPOWER, MONITOR_OFF

End Sub
