VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form ScanPath 
   Caption         =   "ScanPath 2.0 - Sort  Anything -"
   ClientHeight    =   7500
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   12975
   Icon            =   "ScanPathDemo.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   7500
   ScaleWidth      =   12975
   StartUpPosition =   2  'CenterScreen
   WhatsThisButton =   -1  'True
   WhatsThisHelp   =   -1  'True
   Begin VB.CheckBox Chk_SortOnDate 
      Caption         =   "Sort On Date"
      Height          =   195
      Left            =   3225
      TabIndex        =   37
      Top             =   1830
      Width           =   1275
   End
   Begin VB.CommandButton CmdScanDir 
      Caption         =   "Scan Dir"
      Default         =   -1  'True
      Height          =   825
      Left            =   11175
      Style           =   1  'Graphical
      TabIndex        =   36
      Top             =   60
      Width           =   810
   End
   Begin VB.CommandButton cmdHelp 
      Caption         =   "Help !"
      Height          =   825
      Left            =   12450
      Picture         =   "ScanPathDemo.frx":08CA
      Style           =   1  'Graphical
      TabIndex        =   35
      Top             =   990
      Visible         =   0   'False
      Width           =   435
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   5000
      Left            =   585
      Top             =   4545
   End
   Begin VB.ComboBox cboMask 
      Height          =   315
      Left            =   495
      TabIndex        =   1
      Text            =   "*.jpg"
      Top             =   405
      Width           =   6105
   End
   Begin VB.CommandButton cmdBrowse 
      Caption         =   "..."
      Height          =   315
      Left            =   6045
      TabIndex        =   23
      TabStop         =   0   'False
      Top             =   45
      Width           =   555
   End
   Begin VB.TextBox txtPath 
      Height          =   315
      Left            =   510
      TabIndex        =   0
      Text            =   "E:\My Music Zen"
      Top             =   30
      Width           =   5505
   End
   Begin VB.CheckBox chkSubFolders 
      Caption         =   "Search Sub-Folders"
      Height          =   195
      Left            =   1530
      TabIndex        =   8
      Top             =   2070
      Value           =   1  'Checked
      Width           =   1785
   End
   Begin VB.CheckBox chkPatternMatching 
      Caption         =   "Pattern Matching"
      Height          =   195
      Left            =   1530
      TabIndex        =   7
      Top             =   1830
      Value           =   1  'Checked
      Width           =   1815
   End
   Begin VB.CheckBox chkNormal 
      Caption         =   "Normal"
      Height          =   195
      Left            =   90
      TabIndex        =   2
      Top             =   1830
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.CheckBox chkArchive 
      Caption         =   "Archive"
      Height          =   195
      Left            =   90
      TabIndex        =   3
      Top             =   2070
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.CheckBox chkHidden 
      Caption         =   "Hidden"
      Height          =   195
      Left            =   90
      TabIndex        =   4
      Top             =   2310
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.CheckBox chkReadOnly 
      Caption         =   "Read Only"
      Height          =   195
      Left            =   90
      TabIndex        =   5
      Top             =   2535
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.CheckBox chkSystem 
      Caption         =   "System"
      Height          =   195
      Left            =   90
      TabIndex        =   6
      Top             =   2760
      Value           =   1  'Checked
      Width           =   1365
   End
   Begin VB.ComboBox cboDate 
      Height          =   315
      Left            =   5580
      Style           =   2  'Dropdown List
      TabIndex        =   12
      Top             =   2040
      Width           =   1545
   End
   Begin VB.ComboBox cboSizeType 
      Height          =   315
      Index           =   0
      Left            =   10935
      Style           =   2  'Dropdown List
      TabIndex        =   17
      Top             =   2400
      Width           =   1365
   End
   Begin VB.ComboBox cboSize 
      Height          =   315
      Left            =   9585
      Style           =   2  'Dropdown List
      TabIndex        =   15
      Top             =   2010
      Width           =   1365
   End
   Begin VB.TextBox txtSize 
      Alignment       =   1  'Right Justify
      Height          =   315
      Index           =   0
      Left            =   9585
      TabIndex        =   16
      Top             =   2400
      Width           =   1305
   End
   Begin VB.ComboBox cboSizeType 
      Height          =   315
      Index           =   1
      Left            =   10935
      Style           =   2  'Dropdown List
      TabIndex        =   19
      Top             =   2760
      Width           =   1365
   End
   Begin VB.TextBox txtSize 
      Alignment       =   1  'Right Justify
      Height          =   315
      Index           =   1
      Left            =   9585
      TabIndex        =   18
      Top             =   2760
      Width           =   1305
   End
   Begin VB.CheckBox chkRefreshListView 
      Caption         =   "Refresh ListView (slower)"
      Height          =   195
      Left            =   1530
      TabIndex        =   10
      Top             =   2610
      Width           =   2205
   End
   Begin VB.CheckBox chkCopyMemory 
      Caption         =   "Use CopyMemory (display Date && Size)"
      Height          =   195
      Left            =   1530
      TabIndex        =   11
      Top             =   2850
      Value           =   1  'Checked
      Width           =   3135
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   3510
      Left            =   75
      TabIndex        =   21
      Top             =   3195
      Width           =   12825
      _ExtentX        =   22622
      _ExtentY        =   6191
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
   Begin VB.CheckBox chkSort 
      Caption         =   "Sort Files(A-Z) while Scanning"
      Height          =   195
      Left            =   1530
      TabIndex        =   9
      Top             =   2310
      Width           =   2535
   End
   Begin VB.CommandButton cmdScan 
      Caption         =   "Scan"
      Height          =   825
      Left            =   12060
      Style           =   1  'Graphical
      TabIndex        =   20
      Top             =   60
      Width           =   810
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   315
      Index           =   0
      Left            =   5580
      TabIndex        =   13
      Top             =   2430
      Width           =   1545
      _ExtentX        =   2725
      _ExtentY        =   556
      _Version        =   393216
      CheckBox        =   -1  'True
      Format          =   16187393
      CurrentDate     =   37299
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   315
      Index           =   1
      Left            =   5580
      TabIndex        =   14
      Top             =   2790
      Width           =   1545
      _ExtentX        =   2725
      _ExtentY        =   556
      _Version        =   393216
      CheckBox        =   -1  'True
      Format          =   16187393
      CurrentDate     =   37296
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   315
      Index           =   2
      Left            =   7185
      TabIndex        =   44
      Top             =   2445
      Width           =   1110
      _ExtentX        =   1958
      _ExtentY        =   556
      _Version        =   393216
      Format          =   16187394
      CurrentDate     =   37299
   End
   Begin VB.Label lblCount 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   315
      Left            =   6750
      TabIndex        =   43
      Top             =   15
      Width           =   4335
   End
   Begin VB.Label lblCount3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   300
      Left            =   6750
      TabIndex        =   42
      Top             =   645
      Width           =   4335
   End
   Begin VB.Label lblCount4 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   300
      Left            =   6750
      TabIndex        =   41
      Top             =   945
      Width           =   4335
   End
   Begin VB.Label lblCount5 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   300
      Left            =   6750
      TabIndex        =   40
      Top             =   1245
      Width           =   4335
   End
   Begin VB.Label lblCount2 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   315
      Left            =   6735
      TabIndex        =   39
      Top             =   330
      Width           =   4335
   End
   Begin VB.Label lblCount6 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   300
      Left            =   6750
      TabIndex        =   38
      Top             =   1545
      Width           =   4335
   End
   Begin VB.Label Label17 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Working"
      ForeColor       =   &H80000008&
      Height          =   240
      Left            =   11220
      TabIndex        =   34
      Top             =   1020
      Width           =   1080
   End
   Begin VB.Label Label12 
      AutoSize        =   -1  'True
      Caption         =   "Date/Size Filter:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   4770
      TabIndex        =   33
      Top             =   1800
      Width           =   1410
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      Caption         =   "Options:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   1530
      TabIndex        =   26
      Top             =   1590
      Width           =   720
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Mask"
      Height          =   195
      Left            =   45
      TabIndex        =   24
      Top             =   435
      Width           =   390
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Path"
      Height          =   195
      Left            =   45
      TabIndex        =   22
      Top             =   105
      Width           =   330
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "Attributes:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   90
      TabIndex        =   25
      Top             =   1590
      Width           =   885
   End
   Begin VB.Label lblSize 
      AutoSize        =   -1  'True
      Caption         =   "Min"
      Height          =   195
      Index           =   0
      Left            =   8985
      TabIndex        =   30
      Top             =   2460
      Width           =   255
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      Caption         =   "File Size"
      Height          =   195
      Left            =   8985
      TabIndex        =   28
      Top             =   2040
      Width           =   585
   End
   Begin VB.Label lblSize 
      AutoSize        =   -1  'True
      Caption         =   "Max"
      Height          =   195
      Index           =   1
      Left            =   8985
      TabIndex        =   32
      Top             =   2820
      Width           =   300
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "From"
      Height          =   195
      Left            =   4770
      TabIndex        =   29
      Top             =   2490
      Width           =   345
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "File Date"
      Height          =   195
      Left            =   4770
      TabIndex        =   27
      Top             =   2070
      Width           =   630
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "To"
      Height          =   195
      Left            =   4770
      TabIndex        =   31
      Top             =   2790
      Width           =   195
   End
End
Attribute VB_Name = "ScanPath"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'-------------Is This Sub Get on It at start      at       Bangers

Public Dog, OutPutPath, Xdate As Date, Tdate As Date, Zdate$, Ydate As Date

Private Declare Function DeleteFile Lib "kernel32" Alias "DeleteFileA" (ByVal lpFileName As String) As Long

'Private Declare Function FindFirstFile Lib "kernel32" Alias "FindFirstFileA" (ByVal lpFileName As String, lpFindFileData As WIN32_FIND_DATA) As Long


'Private Type FILETIME
'    dwLowDateTime     As Long
'    dwHighDateTime    As Long
'End Type

'Private Type WIN32_FIND_DATA
'    dwFileAttributes  As Long
'    ftCreationTime    As FILETIME
'    ftLastAccessTime  As FILETIME
'    ftLastWriteTime   As FILETIME
'    nFileSizeHigh     As Long
'    nFileSizeLow      As Long
'    dwReserved0       As Long
'    dwReserved1       As Long
'    cFileName         As String * MAX_PATH
'    cAlternate        As String * 14
'End Type

'Private mWFD As WIN32_FIND_DATA

'Put This in a Bas Mobule
'Public m_CRC As clsCRC

'Public WxHex$

Public A1$, B1$, G1$, FF$

'Put in Sub Of Code
'Set m_CRC = New clsCRC
'm_CRC.Algorithm = CRC32
'WxHex$ = Hex(m_CRC.CalculateString(Form3.Text1.Text))
'WxHex$ = Hex(m_CRC.CalculateFile(Filename))


'Option Explicit

'##############################################################################################
'Purpose:   This project is a Demo for my cScanPath Class

'           This Class scans a specified path and returns the files it finds.
'           It has fairly comprehensive Filters. You can select files by:
'           Attributes (Normal, Hidden, Read Only, System etc)
'           File Size (>, <, Range)
'           File Date (From, To, Range)
'           File Extensions (multiple allowed i.e. *.txt;*.dat;*.tmp)

'           You can optionally scan sub-folders

'           To keep the demo simple I have only used attributes & Extensions
'           for Filter. For full example of this Class see WipeIt3 submission
       
'Author:    Richard Mewett �2005
'##############################################################################################

Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (hpvDest As Any, hpvSource As Any, ByVal cbCopy As Long)
Private Declare Function LockWindowUpdate Lib "user32" (ByVal hwndLock As Long) As Long

'We must declare with WithEvents to process the files returned
Private WithEvents SP As cScanPath
Attribute SP.VB_VarHelpID = -1




Sub ShellMenu()


ScanPath.ListView1.ListItems.Clear
ScanPath.txtPath = "E:\01 VB Shell Folders\"
ScanPath.cboMask.Text = "*.lnk"
ScanPath.chkSubFolders = vbChecked
Call ScanPath.cmdScan_Click
ScanPath.Show
Reset
On Error Resume Next
Dim TTP
TTP = "M:\Temp\Shell Folders-BadLinks"
MkDir TT
On Error GoTo 0
For we = ScanPath.ListView1.ListItems.Count To 1 Step -1
'    we = ScanPath.ListView1.ListItems.Count
    ScanPath.lblCount = Trim(Str(ScanPath.ListView1.ListItems.Count)) + " Links Are On System"
    DoEvents
    
    'Command1.Caption = Trim(Str(ScanPath.ListView1.ListItems.Count))
    A1$ = ScanPath.ListView1.ListItems.Item(we).SubItems(1)
    B1$ = ScanPath.ListView1.ListItems.Item(we)

yes = 0
Open A1$ + B1$ For Binary As #1
rr$ = Space$(LOF(1))
Get #1, 1, rr$
Close #1

If Mid$(rr$, &H568, 30) = ":" + Chr$(0) + "\" Then
'one stop here for command prompt link
'Stop
rr$ = Mid$(rr$, &H566)
End If
ii = InStr(&H100, rr$, ":\")
If ii > 0 Then
rr$ = Mid$(rr$, ii - 1)
rr$ = Left$(rr$, InStr(rr$, Chr(0)) - 1)
yes = 1
End If
'If B1$ = "Command Prompt.lnk" Then Stop

If yes = 0 Then
'Debug.Print A1$ + B1$
lblCount3 = Str(Val(lblCount3) + 1) + " Links Couldnt Be Read"
End If

If yes = 1 Then
    TT = FS.FileExists(rr$)
    If TT = True Then lblCount4 = Str(Val(lblCount4) + 1) + " Links **Do** Exist"
    If TT = False Then
lblCount5 = Str(Val(lblCount5) + 1) + " Links Need moving Out"
    
    
    ets1 = Len(txtPath.Text)
    C1$ = TTP + "\" + Mid$(A1$, ets1 + 1)

    etd1 = 12
    ets2 = 1
    Do
        'jc1$ = Mid$(c1$, etd1 + ets2-1)
        ets2 = InStr(etd1 + ets2, C1$, "\")
        etd1 = 1
        If ets2 = 0 Then Exit Do

        d2$ = Mid$(C1$, 1, ets2)

        If InStr(f1$, d2$) = 0 Then
            On Local Error Resume Next
            MkDir d2$
            If errs2 <> 75 And errs2 > 0 Then
                MsgBox ("Error Making Temp Directory")
                Stop
            End If
            On Local Error GoTo 0
        End If
    Loop Until ets2 = 0

    f1$ = d2$

    errs2 = 0
    On Local Error Resume Next
    Debug.Print A1$ + B1$
    Debug.Print rr$
    'FS.moveFile A1$ + B1$, C1$ + B1$

    If errs2 <> 0 Then
        MsgBox ("Error Moving File to Temp")
        End
    End If
    On Local Error GoTo 0
    
    End If
End If
    
Next


'not hard now we got DIR scan to remove empty dirs and check anyway if there are some
'later



End Sub

Sub INetContent()

If IsIDE = False Then
ScanPath.WindowState = 1
DoEvents
End If
DoEvents
ScanPath.Visible = True

OutPutPath = "M:\0 00 Art\Temp Inet Files JPGs\"

On Error Resume Next
MkDir "M:\0 00 Art\Temp Inet Files JPGs\#Gif"
MkDir "M:\0 00 Art\Temp Inet Files JPGs\#Png"
MkDir "M:\0 00 Art\Temp Inet Files JPGs\#Ico"
On Error GoTo 0


Open App.Path + "\Xdate.txt" For Input As #1
Line Input #1, Zdate$
Close #1
Ydate = DateValue(Zdate$) + TimeValue(Zdate$)


Label17 = "Process INet Content JPGs"

txtPath.Text = "C:\Documents and Settings\Matt3\Local Settings\Temporary Internet Files\Content.IE5\"
txtPath.Text = "D:\MY WEBS\MatthewLan.Com Web\"


cboDate.ListIndex = 0
DTPicker1(0) = Int(Ydate)

cboMask.Text = "*.jpg"
'cboSize.ListIndex = 1 'Less than
cboSize.ListIndex = 2 'Bigger Than
'cboSizeType(lCount).ListIndex = 0 'Byte
'cboSizeType(lCount).ListIndex = 2 'Meg
cboSizeType(lCount).ListIndex = 1 'K
txtSize(0) = 3
Call cmdScan_Click
txtPath.Text = "C:\Documents and Settings\Matt4\Local Settings\Temporary Internet Files\Content.IE5\"
txtPath.Text = "D:\MY WEBS\MatthewLan.Com Web\"
'Call cmdScan_Click

For we = ListView1.ListItems.Count To 1 Step -1
    
    Label13 = ListView1.ListItems.Count
    DoEvents
    
    G1$ = ListView1.ListItems.Item(we).SubItems(2)
    A1$ = ListView1.ListItems.Item(we).SubItems(1)
    B1$ = ListView1.ListItems.Item(we)
    
    Set f = FS.GetFile(A1$ + G1$)
    Tdate = f.datelastmodified
    If Tdate > Xdate Then Xdate = Tdate
    
    remo = 0
    If Tdate <= Ydate Then
        ListView1.ListItems.Remove (we)
        remo = 1
    End If
    If remo = 0 Then
        hole = "Inet " + Format$(Now, "YYYY-MM-DD") + "\"
        GeText = LCase(Mid$(B1$, Len(B1$) - 2, 3)) + "\"
        If GeText = "jpg\" Then GeText = ""
        secext = "M:\0 00 Art\Temp Inet Files JPGs\" + hole + GeText + B1$
        If FS.FileExists(secext) = True Then
            ListView1.ListItems.Remove (we)
        End If
        secext = OutPutPath + hole + GeText + Mid$(B1$, 1, Len(B1$) - 4) + ".zip"
        If FS.FileExists(secext) = True Then
            ListView1.ListItems.Remove (we)
        End If
        secext = OutPutPath + hole + GeText + Mid$(B1$, 1, Len(B1$) - 4) + ".rar"
        If FS.FileExists(secext) = True Then
            ListView1.ListItems.Remove (we)
        End If
    End If
Next

Open App.Path + "\Xdate.txt" For Output As #1
Print #1, Xdate
Close #1
que = 0
    
hole = "INet " + Format$(Now, "YYYY-MM-DD") + "\"
On Error Resume Next
If que = 0 Then MkDir OutPutPath + hole: que = 1
On Error GoTo 0

For we = ListView1.ListItems.Count To 1 Step -1
    
    Label13 = ListView1.ListItems.Count
    DoEvents
    
    G1$ = ListView1.ListItems.Item(we).SubItems(2)
    A1$ = ListView1.ListItems.Item(we).SubItems(1)
    B1$ = ListView1.ListItems.Item(we)
    
    Set f = FS.GetFile(A1$ + G1$)
    
    
    GeText = LCase(Mid$(B1$, Len(B1$) - 2, 3)) + "\"
    If GeText = "jpg\" Then GeText = ""
    
    On Error Resume Next
    MkDir OutPutPath + hole + GeText
    On Error GoTo 0
    
    f.Copy OutPutPath + hole + GeText

Next

'-------------------------------------
'-------------------------------------
'DTPicker1(0).Value = vbNullString
ListView1.ListItems.Clear
txtPath.Text = "C:\Documents and Settings\Matt3\Local Settings\Temporary Internet Files\Content.IE5\"
cboSize.ListIndex = 0 ' Not Used
cboMask.Text = "*.png;*.ico;*.gif"
Call cmdScan_Click

For we = ListView1.ListItems.Count To 1 Step -1
    
    Label13 = ListView1.ListItems.Count
    DoEvents
    
    G1$ = ListView1.ListItems.Item(we).SubItems(2)
    A1$ = ListView1.ListItems.Item(we).SubItems(1)
    B1$ = ListView1.ListItems.Item(we)
    Set f = FS.GetFile(A1$ + G1$)
    Tdate = f.datelastmodified
    If Tdate > Xdate Then Xdate = Tdate
    remo = 0
    If Tdate <= Ydate Then
        ListView1.ListItems.Remove (we)
        remo = 1
    End If
    If remo = 0 Then
        GeText = "#" + LCase(Mid$(B1$, Len(B1$) - 2, 3)) + "\"
        If FS.FileExists(OutPutPath + GeText + B1$) = True Then
        ListView1.ListItems.Remove (we)
        End If
    End If
Next

Open App.Path + "\Xdate.txt" For Output As #1
Print #1, Xdate
Close #1

For we = ListView1.ListItems.Count To 1 Step -1
    
    Label13 = ListView1.ListItems.Count
    DoEvents
    
    G1$ = ListView1.ListItems.Item(we).SubItems(2)
    A1$ = ListView1.ListItems.Item(we).SubItems(1)
    B1$ = ListView1.ListItems.Item(we)
    
    Set f = FS.GetFile(A1$ + G1$)

    GeText = "#" + LCase(Mid$(B1$, Len(B1$) - 2, 3)) + "\"
    f.Copy OutPutPath + GeText
Next

ListView1.ListItems.Clear
txtPath.Text = "C:\Documents and Settings\Matt3\Local Settings\Temporary Internet Files\Content.IE5\"
cboSize.ListIndex = 0 ' Not Used
cboMask.Text = "*.png;*.ico;*.gif"
Call cmdScan_Click
Call cmdScanDir_Click

If IsIDE = False Then End

End Sub


Sub Bangers()

Label17 = "Process Banger Favs Quick"
'Call Banger_Favs
Label17 = "Working"

tpath1$ = "M:\04 Music ---\03 My Music Zen\"
tpath2$ = "M:\04 Music ---\04 My Music\"
tpath3$ = "M:\04 Music ---\Del\"
'MkDir tpath3$
txtPath.Text = tpath1$

cboMask.Text = "*.mp3"

txtPath.Text = "F:\04 Music ---\04 My Music"
txtPath.Text = "F:\04 Music ---\04 My Music Talking Books"

Dim ra(30)

ra(1) = "D:\05 Media\MIDI"
ra(2) = "M:\04 Music ---\03 My Music Zen"
ra(3) = "M:\04 Music ---\04 My Music"
ra(4) = "M:\04 Music ---\05 Whole Lot"
ra(5) = "M:\04 Music ---\00 TBooks All"

ra(1) = "M:\04 Music ---"
ra(2) = "M:\Videos\00 Vid Films"
ra(3) = "M:\Videos\00 Vid XXX"
'ra(3) = "M:\04 Music ---\04 My Music Talking Books"

'ra(1) = "M:\04 Music ---\"
'ra(2) = "M:\04 Music ---\04 My Music Talking Books"
'ra(3) = "S:\Tbooks"
'ra(4) = "S:\My Music Talking Books"



For ret = 1 To 3
DoEvents
If Right$(ra(ret), 1) <> "\" Then ra(ret) = ra(ret) + "\"

txtPath.Text = ra(ret)

cboSize.ListIndex = 1 'Less than
txtSize(0) = 1

If Dog = True Then Exit Sub

Call cmdScan_Click

If Dog = True Then Exit Sub
DoEvents
If Dog = True Then Exit Sub

For we = ListView1.ListItems.Count To 1 Step -1
    
    Label13 = we
    DoEvents
    
    G1$ = ListView1.ListItems.Item(we).SubItems(2)
    A1$ = ListView1.ListItems.Item(we).SubItems(1)
    B1$ = ListView1.ListItems.Item(we)
    w = DeleteFile(A1$ + G1$)

Next

Call cmdScanDir_Click

For we = ListView1.ListItems.Count To 1 Step -1
  
    Label14 = we
    DoEvents
    
    A1$ = ListView1.ListItems.Item(we).SubItems(1)
    B1$ = ListView1.ListItems.Item(we)
    A1$ = A1$ + B1$ + "\"
  
    
    Set f = FS.GetFolder(A1$)
    
    If f.Size = 0 Then
        ListView1.ListItems.Remove (we)
    End If
Next

A1$ = txtPath.Text

Call Tagg2


For we = 1 To ListView1.ListItems.Count
  
    Label16 = we
    DoEvents
    
    A1$ = ListView1.ListItems.Item(we).SubItems(1)
    B1$ = ListView1.ListItems.Item(we)
    A1$ = A1$ + B1$ + "\"
    
    If InStr(A1$, " - 20") > 0 And InStr(LCase(A1$), "banging") > 0 Then
        Call TaggBang
    Else
        Call Tagg2
    End If

Next

Next

Label17 = "Done"



End

End Sub



Sub Tagg2()
 
 

FF$ = Mid$(A1$, Len(txtPath.Text) + 1)
If FF$ = "" Then
FF$ = Mid$(A1$, 4)
End If
FF$ = Left$(FF$, Len(FF$) - 1)

Do
ttgx = InStr(FF$, "\")
If ttgx > 0 Then
FF$ = Mid$(FF$, 1, ttgx - 1) + " -- " + Mid$(FF$, ttgx + 1)
End If
Loop Until ttgx = 0

Call WriteTagg

End Sub

Sub TaggBang()
 
    
ty$ = ""
If InStr(A1$, "My Music\") Then ty$ = "My Music"
If InStr(A1$, "My Music Zen\") Then ty$ = "My Music Zen"
If ty$ = "My Music" And InStr(A1$, "Favs") Then ty$ = "My Music - Favs"
If ty$ = "My Music Zen" And InStr(A1$, "Favs") Then ty$ = "My Music Zen - Favs"
If ty$ = "My Music" And InStr(A1$, " Bang Sets") Then ty$ = "My Music - Sets"
If ty$ = "My Music Zen" And InStr(A1$, " Bang Sets") Then ty$ = "My Music Zen - Sets"
If ty$ = "My Music" And InStr(A1$, " Bang Fav Sets") Then ty$ = "My Music - Fav Sets"
If ty$ = "My Music Zen" And InStr(A1$, " Bang Fav Sets") Then ty$ = "My Music Zen - Fav Sets"
'03 Bang Sets
    
    
gg$ = Mid$(A1$, InStrRev(A1$, "\", Len(A1$) - 1) + 1)
Tx$ = Left$(gg$, Len(gg$) - 1)

FF$ = "---------------[[(({{ " + Tx$ + " - " + ty$ + " }}))]]---------------.mp3"


On Error Resume Next
Do
fg1 = FreeFile
Err.Clear
Open A1$ + FF$ For Output As fg1
Close fg1
If Err.Number > 0 Then FF$ = Left$(FF$, Len(FF$) - 5) + ".mp3"
Loop Until Err.Number = 0


'Call WriteTagg



End Sub



Sub WriteTagg()

On Local Error Resume Next
'Kill A1$ + "0#-" + FF$ + "-^.mp3"
'Kill A1$ + "01#-" + FF$ + "-^.mp3"
'Err.Clear
easy = Dir$(A1$ + "\*.txt") <> ""
 '
Do
    Err.Clear
'    If InStr(FF$, "Art And Music") > 0 Then Stop

    fg1 = FreeFile
    Open A1$ + "0#01--" + FF$ + "-^.mp3" For Output As fg1
    Close fg1
    FF$ = Left$(FF$, Len(FF$) - 1)
Loop Until Err.Number = 0
    
Do
    Err.Clear
    ek$ = String$(Len(FF$) + 20, "-")
    fg1 = FreeFile
    Open A1$ + "0#00--" + ek$ + "-^.mp3" For Output As fg1
    Close fg1
    If easy = True Then
        fg1 = FreeFile
        Open A1$ + "0#02----- Text File In Dir -----^.mp3" For Output As fg1
        Close fg1
    End If
    fg1 = FreeFile
    Open A1$ + "0#02--" + ek$ + "-^.mp3" For Output As fg1
    Close fg1
    FF$ = Left$(FF$, Len(FF$) - 1)
Loop Until Err.Number = 0
    
    
On Local Error GoTo 0
    


End Sub


Private Sub cboSize_Click()
    'cboSize.ListIndex = 2
    'txtSize(0).Text = 1
    
    'cboSizeType(0).Visible = True
    'cboSizeType(0).

    
    Select Case cboSize.ListIndex
    Case 0
        lblSize(0).Visible = False
        lblSize(1).Visible = False
        txtSize(0).Visible = False
        txtSize(1).Visible = False
        cboSizeType(0).Visible = False
        cboSizeType(1).Visible = False
    Case 1, 2
        lblSize(0).Caption = "Size"
        lblSize(0).Visible = True
        lblSize(1).Visible = False
        txtSize(0).Visible = True
        txtSize(1).Visible = False
        cboSizeType(0).Visible = True
        cboSizeType(1).Visible = False
    Case Else
        lblSize(0).Caption = "Min"
        lblSize(1).Caption = "Max"
        lblSize(1).Visible = True
        lblSize(0).Visible = True
        txtSize(0).Visible = True
        txtSize(1).Visible = True
        cboSizeType(0).Visible = True
        cboSizeType(1).Visible = True
    End Select
End Sub


Private Sub cboSizeType_Change(Index As Integer)
'cboSizeType = 0
End Sub

Private Sub chkCopyMemory_Click()
    chkSort.Enabled = (chkCopyMemory.Value = vbUnchecked)
    
    With ListView1
        If chkCopyMemory.Value Then
            .ColumnHeaders("PATH").Width = 5000
            .ColumnHeaders("SIZE").Width = 1250
            .ColumnHeaders("DATE").Width = 1750
        Else
            .ColumnHeaders("PATH").Width = 8000
            .ColumnHeaders("SIZE").Width = 1000
            .ColumnHeaders("DATE").Width = 0
        End If
    End With
End Sub


Private Sub chkSort_Click()
    chkCopyMemory.Enabled = (chkSort.Value = vbUnchecked)
End Sub

Private Sub cmdBrowse_Click()
    txtPath.Text = GetFolder(Me.hWnd, "Scan Path:", txtPath.Text)
    fg1 = FreeFile
    Open App.Path + "\Scan Path.txt" For Output As #fg1
    Print #fg1, txtPath.Text
    Close #fg1

'    fg1 = FreeFile
'    Open App.Path + "\Scan Path.txt" For Input As #fg1
'    Line Input #fg1, ae$
'    Close #fg1
'    txtPath.Text = ae$



End Sub

Private Sub cmdHelp_Click()
    'txtHelp.Visible = Not txtHelp.Visible
End Sub

Public Sub cmdScan_Click()
    Dim lCount As Long
    Dim lSize(1) As Long
    
    
    
    If cmdScan.Caption = "Scan" Then
        '####################################################################################################
        'Process our Selection Criteria
        For lCount = 0 To 1
            lSize(lCount) = Val(txtSize(lCount).Text)
        
            Select Case cboSizeType(lCount).ListIndex
            Case 1: lSize(lCount) = lSize(lCount) * 1024
            Case 2: lSize(lCount) = (lSize(lCount) * 1024) * 1024
            End Select
        Next lCount
            
        If txtSize(1).Visible Then
            If lSize(0) = 0 Then
                MsgBox "Maximium Size value must exceed 0", vbExclamation
                txtSize(1).SetFocus
                Exit Sub
            ElseIf lSize(1) <= lSize(0) Then
                MsgBox "Maximium Size value must exceed Minimum Size", vbExclamation
                txtSize(1).SetFocus
                Exit Sub
            End If
        End If
        
        '####################################################################################################
        'Reset Form
        cmdScan.Caption = "Stop"
        
        lblCount.Caption = "-"
 
        Screen.MousePointer = vbHourglass
'        ListView1.ListItems.Clear
        
        If chkRefreshListView.Value = vbUnchecked Then
            LockWindowUpdate ListView1.hWnd
        End If
        
        '####################################################################################################
        'Create our Scan Object
        Set SP = New cScanPath
        
        With SP
            'Attributes
            .Archive = chkArchive.Value
            .Compressed = True
            .Hidden = chkHidden.Value
            .Normal = chkNormal.Value
            .ReadOnly = chkReadOnly.Value
            .System = chkSystem.Value
            
            'Date/Size (NOTE: you don't have to use these!)
            Select Case cboDate.ListIndex
            Case 0
                .DateType = Modified
            Case 1
                .DateType = Created
            Case 2
                .DateType = LastAccessed
            End Select
            
            If IsDate(DTPicker1(0).Value) Then
                .FromDate = DTPicker1(0).Value
            End If
            If IsDate(DTPicker1(1).Value) Then
                .ToDate = DTPicker1(1).Value
            End If
            
            Select Case cboSize.ListIndex
            Case 1
                .MaximumSize = lSize(0)
            Case 2
                .MinimumSize = lSize(0)
            Case 3
                .MinimumSize = lSize(0)
                .MaximumSize = lSize(1)
            End Select
            
            'Mask
            .Filter = cboMask.Text
            
            'Go - that was easy wasn't it!
            .StartScan txtPath, chkSubFolders.Value, chkSort.Value And chkSort.Enabled, chkPatternMatching
            
            'we always use direct scan as is better to sort after job then during thats all we need
            If Chk_SortOnDate.Value = vbChecked Then
                ListView1.SortOrder = lvwAscending
                ListView1.SortKey = 3
                ListView1.Sorted = True
                ListView1.Sorted = False
            Else
                ListView1.SortOrder = lvwAscending
                ListView1.SortKey = 0
                ListView1.Sorted = True
                ListView1.SortKey = 1
                ListView1.Sorted = True
                ListView1.Sorted = False
            End If
        
        End With
        
       With ListView1
            If .ListItems.Count > 0 Then
                .SelectedItem = .ListItems(1)
            End If
            
            lblCount.Caption = .ListItems.Count
        End With
        
        LockWindowUpdate 0
        
        'cmdScan.Caption = "Scan"
        Screen.MousePointer = vbDefault
    Else
        'User want's to stop current scan
        SP.StopScan
        'End
    End If

'frmMain.Refresh

'End
'If Command$ <> "" Then End
cmdScan.Caption = "Scan"

If Chk_SortOnDate = vbChecked Then

End If

End Sub
Public Sub cmdScanDir_Click()
    Dim lCount As Long
    Dim lSize(1) As Long
    
    If cmdScan.Caption = "Scan" Then
        '####################################################################################################
        'Process our Selection Criteria
        For lCount = 0 To 1
            lSize(lCount) = Val(txtSize(lCount).Text)
        
            Select Case cboSizeType(lCount).ListIndex
            Case 1: lSize(lCount) = lSize(lCount) * 1024
            Case 2: lSize(lCount) = (lSize(lCount) * 1024) * 1024
            End Select
        Next lCount
            
        If txtSize(1).Visible Then
            If lSize(0) = 0 Then
                MsgBox "Maximium Size value must exceed 0", vbExclamation
                txtSize(1).SetFocus
                Exit Sub
            ElseIf lSize(1) <= lSize(0) Then
                MsgBox "Maximium Size value must exceed Minimum Size", vbExclamation
                txtSize(1).SetFocus
                Exit Sub
            End If
        End If
        
        '####################################################################################################
        'Reset Form
        cmdScan.Caption = "Stop"
        lblCount2.Caption = "-"
 
        Screen.MousePointer = vbHourglass
        ListView1.ListItems.Clear
        
        If chkRefreshListView.Value = vbUnchecked Then
            LockWindowUpdate ListView1.hWnd
        End If
        
        '####################################################################################################
        'Create our Scan Object
        Set SP = New cScanPath
        
        With SP
            'Attributes
            .Archive = chkArchive.Value
            .Compressed = True
            .Hidden = chkHidden.Value
            .Normal = chkNormal.Value
            .ReadOnly = chkReadOnly.Value
            .System = chkSystem.Value
            
            'Date/Size (NOTE: you don't have to use these!)
            Select Case cboDate.ListIndex
            Case 0
                .DateType = Modified
            Case 1
                .DateType = Created
            Case 2
                .DateType = LastAccessed
            End Select
            
            If IsDate(DTPicker1(0).Value) Then
                .FromDate = DTPicker1(0).Value
            End If
            If IsDate(DTPicker1(1).Value) Then
                .ToDate = DTPicker1(1).Value
            End If
            
            Select Case cboSize.ListIndex
            Case 1
                .MaximumSize = lSize(0)
            Case 2
                .MinimumSize = lSize(0)
            Case 3
                .MinimumSize = lSize(0)
                .MaximumSize = lSize(1)
            End Select
            
            'Mask
            .Filter = cboMask.Text
            
            'Go - that was easy wasn't it!
            .StartScanDir txtPath, chkSubFolders.Value, chkSort.Value And chkSort.Enabled, chkPatternMatching
        
            
            'Correct Yes 1st one column sort keeps sort then another
            ListView1.SortOrder = lvwAscending
            ListView1.SortKey = 0
            ListView1.Sorted = True
            ListView1.SortKey = 1
            ListView1.Sorted = True
            ListView1.Sorted = False
        
            If Chk_SortOnDate.Value = vbChecked Then
                ListView1.SortOrder = lvwAscending
                ListView1.SortKey = 3
                ListView1.Sorted = True
                ListView1.Sorted = False
            End If
        
        End With
        
       With ListView1
            If .ListItems.Count > 0 Then
                .SelectedItem = .ListItems(1)
            End If
            
            lblCount.Caption = .ListItems.Count
        End With
        
        LockWindowUpdate 0
        
        cmdScan.Caption = "Scan"
        Screen.MousePointer = vbDefault
    Else
        'User want's to stop current scan
        SP.StopScan
    End If


GoTo Skip

For we = ListView1.ListItems.Count To 2 Step -1
    A1$ = frmMain.ListView1.ListItems.Item(we)
    a2$ = frmMain.ListView1.ListItems.Item(we).SubItems(1)
    B1$ = frmMain.ListView1.ListItems.Item(we - 1)
    b2$ = frmMain.ListView1.ListItems.Item(we - 1).SubItems(1)
    If A1$ + B1$ = a2$ + b2$ Then frmMain.ListView1.ListItems.Remove (we)
    
    
    
    'b1$ = frmMain.ListView1.ListItems.Item(we)

Next

Skip:

lblCount.Caption = ListView1.ListItems.Count
    

End Sub




Private Sub Form_Load()
    
Set FS = CreateObject("Scripting.FileSystemObject")
    
'--------
'If you use ChkMem Size Files then Know G1$ Alternate Data uses same column(2) for its data
'-
'Seem to have a problem with some program an not other when use chkmem file size and date
'Work Around done that
'-
'The Date checker box does scan for time if the var contains time
'---------
    
ScanPath.Caption = ScanPath.Caption + App.EXEName
'scanpath.Caption = frmMain.Caption + App.EXEName
  
x = 1
y = 1
On Error Resume Next
For Each Control In Controls
If Control.Width + Control.Left > x Then x = Control.Width + Control.Left
If Control.Height + Control.Top > y Then y = Control.Height + Control.Top
Next
On Error GoTo 0

ScanPath.Width = x + 100
ScanPath.Height = y + 450
    
    Dim lCount As Long
    
    With cboMask
        .AddItem "*.*"
        .AddItem "*.dll;*.exe;*.ocx"
        .AddItem "*.doc;*.mdb;*.xls"
        .AddItem "*.bmp;*.gif;*.jpg;*.tif"
        .AddItem "*.bas;*.cls;*.ctl;*.frm;*.vbp"
        .ListIndex = 0
    End With
    
    DTPicker1(0).Value = DateSerial(Year(Now), Month(Now) - 3, Day(Now))
    DTPicker1(1).Value = Now
    
    DTPicker1(0).Value = Empty
    DTPicker1(1).Value = Empty
    
    With cboDate
        .AddItem "Modified"
        .AddItem "Created"
        .AddItem "Last Accessed"
        .ListIndex = 0
    End With
    
    With cboSize
        .AddItem "Any Size"
        .AddItem "Less Than"
        .AddItem "Greater Than"
        .AddItem "Between"
        .ListIndex = 0
    End With
        
    For lCount = 0 To 1
        With cboSizeType(lCount)
            .AddItem "Bytes"
            .AddItem "Kilobytes"
            .AddItem "Megabytes"
            .ListIndex = 0 ' set it to bytes here
        End With
    Next lCount
    
    With ListView1
        .ColumnHeaders.Add , "FILE", "File", 3000, lvwColumnLeft
        .ColumnHeaders.Add , "PATH", "Path", 8000, lvwColumnLeft
        .ColumnHeaders.Add , "SIZE", "Size", 2000, lvwColumnLeft
        .ColumnHeaders.Add , "DATE", "Date", 0, lvwColumnLeft
        
        .View = lvwReport
    End With

    Call chkCopyMemory_Click

'Call DelJunkFrontPage

'ScanPath.Show

'Call INetContent

'Call Bangers

Call ShellMenu

Exit Sub

txtPath.Text = "D:\MY WEBS\MatthewLan.Com Web\"


End Sub


Private Sub Form_Unload(Cancel As Integer)
End
End Sub

Private Sub List1_Click()

tpath3$ = "M:\04 Music ---\Del\"

B1$ = Mid$(List1.List(List1.ListIndex), 14)
C1$ = B1$ + "--Todel"

'tpath1$ = "M:\04 Music ---\"

C1$ = Mid$(B1$, InStrRev(B1$, "\") + 1)
List1.RemoveItem (List1.ListIndex)
'Name b1$ As c1$

'fs.copyFile b1$, tpath3$ + c1$
If Dir$(tpath3$ + C1$) <> "" Then Kill tpath3$ + C1$
FS.moveFile B1$, tpath3$ + C1$



End Sub

Private Sub Label18_Click()
Dog = True

If cmdScan.Caption = "Stop" Then cmdScan_Click
Label17 = "Stopped before Complete"
End Sub

Private Sub lblCount_Change()
    'Main.Command1.Caption = ScanPath.lblCount

End Sub

Private Sub SP_DirMatch(Directory As String, DDirectory As String, Path As String)
    '####################################################################################################
    'This Event fires for each Folder found
    '####################################################################################################
End Sub

Private Sub SP_DirMatchxx(Directory As String, DDirectory As String, Path As String)
    '####################################################################################################
    'This Event fires for each Folder found
    '####################################################################################################



Dim LV As ListItem
    Dim uWIN32 As WIN32_FIND_DATA
    
    '####################################################################################################
    'This Event fires for each File found
    '####################################################################################################
    
    On Local Error GoTo GetFileError
    
    With ListView1
        Set LV = .ListItems.Add(, , Directory)
        LV.SubItems(1) = Path
        LV.SubItems(2) = DDirectory
        
        
        
        
        
        
        
        
        
        If chkCopyMemory.Value Then
            'VB does not allows UDT's to be passed directly from a Class but we can access the structure
            'using pointers. We use CopyMemory to place the WIN32_FIND_DATA variable from the Class into
            'the uWIN32 declared in this Sub.
            
            'This is primarily a speed trick - we could retrieve the date & time information "ourselves"
            'using the standard VB functions or an API call but since we already have it...
            
            'CopyMemory ByVal uWIN32, ByVal SP.WFDPointer, ByVal Len(uWIN32)
            'This is not working in EXE but does in IDE Revert back to Old Way
            'CopyMemory ByVal uWIN32, ByVal SP.WFDPointer, ByVal Len(uWIN32)
                
            'Remember Public FS
            Set F = FS.getfile(Path + DFilename)
            adate1 = f.datelastmodified
            asize1 = f.Size

'            LV.SubItems(2) = uWIN32.nFileSizeLow
'            LV.SubItems(3) = FormatFileDate(uWIN32.ftLastWriteTime)
            LV.SubItems(2) = asize1
            LV.SubItems(3) = adate1
        End If
        
        'Refresh Count & Scroll the list every 10th file
        If (LV.Index Mod 10) = 0 Then
            If chkRefreshListView.Value Then
                .SelectedItem = LV
                .SelectedItem.EnsureVisible
            End If
            
            lblCount2.Caption = LV.Index
        End If
    End With
    Exit Sub

GetFileError:
    MsgBox Err.Description, vbCritical


End Sub


Private Sub SP_FileMatch(Filename As String, DFilename As String, Path As String)
    Dim LV As ListItem
    Dim uWIN32 As WIN32_FIND_DATA
    
    '####################################################################################################
    'This Event fires for each File found
    '####################################################################################################
    
    On Local Error GoTo GetFileError
    
    With ListView1
        Set LV = .ListItems.Add(, , Filename)
        LV.SubItems(1) = Path
        'mod by matt l
        LV.SubItems(2) = DFilename
        
        
        
        
        
        
        
        
        
        
        If chkCopyMemory.Value Then
            'VB does not allows UDT's to be passed directly from a Class but we can access the structure
            'using pointers. We use CopyMemory to place the WIN32_FIND_DATA variable from the Class into
            'the uWIN32 declared in this Sub.
            
            'This is primarily a speed trick - we could retrieve the date & time information "ourselves"
            'using the standard VB functions or an API call but since we already have it...
            CopyMemory ByVal uWIN32, ByVal SP.WFDPointer, ByVal Len(uWIN32)
            LV.SubItems(2) = uWIN32.nFileSizeLow
            LV.SubItems(3) = FormatFileDate(uWIN32.ftLastWriteTime)
        End If
        
        'Refresh Count & Scroll the list every 10th file
        If (LV.Index Mod 10) = 0 Then
            If chkRefreshListView.Value Then
                .SelectedItem = LV
                .SelectedItem.EnsureVisible
            End If
            
            lblCount.Caption = LV.Index
        End If
    End With
    Exit Sub

GetFileError:
    MsgBox Err.Description, vbCritical
End Sub



Private Function FormatFileDate(CT As FILETIME) As String
    Const SHORT_DATE = "Short Date"
    
    Dim ST As SYSTEMTIME
    Dim ds1 As Single
    Dim ds2 As Single
       
    If FileTimeToSystemTime(CT, ST) Then
          ds1 = DateSerial(ST.wYear, ST.wMonth, ST.wDay)
          ds2 = TimeSerial(ST.wHour, ST.wMinute, ST.wSecond)
          
          FormatFileDate = Format$(ds1 + ds2, "YYYY-MM-DD HH-MM-SS")
    End If
End Function

Private Sub Timer1_Timer()
'End
End Sub














Sub Jeepers()


On Local Error GoTo jeep
Drived2$ = Mid$(txtPath.Text, 1, 3)
MkDir Drived2$ + "Temp\Anything"
v1$ = Mid$(txtPath.Text, InStrRev(txtPath.Text, "\"))

MkDir Drived2$ + "Temp\Anything" + v1$
On Local Error GoTo 0

List1.AddItem "Stage 1 of 2 : Make Dir's And Move Files to Temp"
List1.AddItem "------------------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

For we = 1 To ListView1.ListItems.Count
    A1$ = ListView1.ListItems.Item(we).SubItems(1)
    B1$ = ListView1.ListItems.Item(we)

    'ets1 = Len("D:\# MY DOCS\# 01 My Documents\Favorites")
    ets1 = Len(txtPath.Text)
    C1$ = Drived2$ + "Temp\Anything" + v1$ + "\" + Mid$(A1$, ets1 + 2)

    etd1 = 13
    ets2 = 1
    Do
        'jc1$ = Mid$(c1$, etd1 + ets2-1)
        ets2 = InStr(etd1 + ets2, C1$, "\")
        etd1 = 1
        If ets2 = 0 Then Exit Do

        d2$ = Mid$(C1$, 1, ets2)

        If InStr(f1$, d2$) = 0 Then
            On Local Error GoTo jeep
            MkDir d2$
            If errs2 <> 75 And errs2 > 0 Then
                MsgBox ("Error Making Temp Directory")
                Stop
            End If
            On Local Error GoTo 0
        End If
    Loop Until ets2 = 0

    f1$ = d2$

    errs2 = 0
    On Local Error GoTo jeep
    FS.moveFile A1$ + B1$, C1$ + B1$
    On Local Error GoTo 0

    If errs2 <> 0 Then
        MsgBox ("Error Moving File to Temp")
        End
    End If

    List1.AddItem Format$(we, "000 ") + "Move > " + A1$ + B1$
    List1.ListIndex = List1.ListCount - 1
    List1.Refresh

    'Fs.DeleteFolder comrad$ + "\" + WFD$

Next

Err.Clear
On Local Error Resume Next
FS.deletefolder txtPath.Text, True
If Err.Number > 0 Then Call HardDel
On Local Error GoTo 0


List1.AddItem "----------------------------------------"
List1.AddItem "Stage 2 of 2 : Move Files Back From Temp"
List1.AddItem "----------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

v2$ = Mid$(txtPath.Text, 1, InStrRev(txtPath.Text, "\"))

Err.Clear
On Local Error Resume Next
FS.Movefolder Drived2$ + "Temp\Anything\*", v2$
If Err.Number > 0 Then Call HardMove
On Local Error GoTo 0

List1.AddItem "Stage 2 of 2 : Complete --------------"
List1.AddItem "--------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

'Timer1.Enabled = True

Exit Sub
jeep:
errs2 = Err.Number
errs3$ = Err.Description
Resume Next

End Sub



Sub HardDel()

Drived2$ = Mid$(txtPath.Text, 1, 3)
v1$ = Mid$(txtPath.Text, InStrRev(txtPath.Text, "\"))


List1.AddItem "Stage Opp : Del Original Dir"
List1.AddItem "------------------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

For we = 1 To ListView1.ListItems.Count
    A1$ = ListView1.ListItems.Item(we).SubItems(1)
    B1$ = ListView1.ListItems.Item(we)

    'ets1 = Len("D:\# MY DOCS\# 01 My Documents\Favorites")
    ets1 = Len(txtPath.Text)
    C1$ = Drived2$ + "My Music" + v1$ + "\" + Mid$(A1$, ets1 + 2)

    etd1 = 13
    ets2 = 1
    Do
        'jc1$ = Mid$(c1$, etd1 + ets2-1)
        ets2 = InStr(etd1 + ets2, C1$, "\")
        etd1 = 1
        If ets2 = 0 Then Exit Do

        d2$ = Mid$(C1$, 1, ets2 - 1)

        If InStr(f1$, d2$) = 0 Then
            Err.Clear
            On Local Error Resume Next
            'MkDir d2$
            FS.deletefolder d2$, True
            If Err.Number <> 75 And Err.Number > 0 Then
                'MsgBox ("Error Making Temp Directory")
                '
            End If
            On Local Error GoTo 0
        End If
    Loop Until ets2 = 0

    f1$ = d2$

    errs2 = 0
    On Local Error Resume Next
'    fs.DeleteFile a1$ + b1$, True
    On Local Error GoTo 0

    'If errs2 <> 0 Then
    '    MsgBox ("Error Moving File to Temp")
    '    End
    'End If

    List1.AddItem Format$(we, "000 ") + "Move > " + A1$ + B1$
    List1.ListIndex = List1.ListCount - 1
    List1.Refresh

    'fs.DeleteFolder comrad$ + "\" + WFD$

Next

a = a
jeep:
End Sub


Sub HardMove()

Drived2$ = Mid$(txtPath.Text, 1, 3)
v1$ = Mid$(txtPath.Text, InStrRev(txtPath.Text, "\"))


List1.AddItem "Stage Opp : Del Original Dir"
List1.AddItem "------------------------------------------------"
List1.ListIndex = List1.ListCount - 1
List1.Refresh

For we = 1 To ListView1.ListItems.Count
    A1$ = ListView1.ListItems.Item(we).SubItems(1)
    B1$ = ListView1.ListItems.Item(we)

    'ets1 = Len("D:\# MY DOCS\# 01 My Documents\Favorites")
    ets1 = Len(txtPath.Text)
    C1$ = Drived2$ + "My Music" + v1$ + "\" + Mid$(A1$, ets1 + 2)
    c2$ = Drived2$ + "Temp\Anything" + v1$ + "\" + Mid$(A1$, ets1 + 2)

    etd1 = 13
    ets2 = 1
    Do
        'jc1$ = Mid$(c1$, etd1 + ets2-1)
        ets2 = InStr(etd1 + ets2, C1$, "\")
        etd1 = 1
        If ets2 = 0 Then Exit Do

        d2$ = Mid$(C1$, 1, ets2 - 1)

        If InStr(f1$, d2$) = 0 Then
            Err.Clear
            On Local Error Resume Next
            MkDir d2$
   '         fs.deletefolder d2$, True
            If Err.Number <> 75 And Err.Number > 0 Then
                'MsgBox ("Error Making Temp Directory")
                'T
            End If
            On Local Error GoTo 0
        End If
    Loop Until ets2 = 0

    f1$ = d2$
    Err.Clear
    errs2 = 0
    On Local Error Resume Next
    
    FS.moveFile c2$ + B1$, A1$ + B1$
    'err.number
    'err.description
    On Local Error GoTo 0

    'If errs2 <> 0 Then
    '    MsgBox ("Error Moving File to Temp")
    '    End
    'End If

    List1.AddItem Format$(we, "000 ") + "Move > " + A1$ + B1$
    List1.ListIndex = List1.ListCount - 1
    List1.Refresh

    'fs.DeleteFolder comrad$ + "\" + WFD$

Next
    
    v1$ = Mid$(txtPath.Text, 1, InStrRev(txtPath.Text, "\") - 1)
    Err.Clear
    On Local Error Resume Next
    
    FS.copyfolder Drived2$ + "Temp\Anything", v1$, True
    
    FS.deletefolder Drived2$ + "Temp\Anything", True


jeep:
End Sub

'***********************************************
'# Check, whether we are in the IDE
Function IsIDE() As Boolean
  Debug.Assert Not TestIDE(IsIDE)
End Function
Private Function TestIDE(Test As Boolean) As Boolean
  Test = True
End Function
'***********************************************


