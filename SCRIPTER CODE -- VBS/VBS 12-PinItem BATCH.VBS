'-----------------------------------------------------------------
' __ CODE BY MATTHEW LANCASTER
' __ DATE BEGINNER 4 AM TO 4:44 PM 12 HOUR TWO CODE SET SESSION --
' __ WITH SOME HEAVY WIND 
' __ THROWING BITS FROM ONE PLACE TO ANOTHER 
' __ I AM THE WEAVER __ I AM THE WIND
' __ DATE BEGINNER AND ENDER --------------------------------------
'-------------------------------------
' [ Fri 13:00:00 Pm_29 Dec 2017 ] The UK
' [ Fri 04:44:40 Pm_29 Dec 2017 ] GMT UTC+0 WET
'-------------------------------------
' [ Sat 05:10:00 Am_21 Apr 2018 ] Add WildCard Sub Folder File Finder Proper
'-------------------------------------
' ADDITIONAL 10 URL'S OPEN OF HELPING

'-----------------------------------------------------------------
' [ Thu 15:10:00 Pm_10 May 2018 ] Make Counter of How Many Added Before and After
'-----------------------------------------------------------------

'-----------------------------------------------------------------
' 002 Session __
'-----------------------------------------------------------------
' Fri 18-May-2018 03:34:28
' Fri 18-May-2018 05:39:52 __ 2 HOURING IN EARLY HOUR DAWN
'                             I ADD CHECK IF EXIST BEFORE MAKE ICON SPEEDER
'                             FOR EVERY BOOTER _ STILL HAVE TO MANUALLY REMOVE 
'                             ABANDONED LINKS
'                             IT WAS CAUSE PROBLEMS BY HAVING LINKS DOUBLE THEY 
'                             HIDE AS WHITE LABEL SOME FEW TOGETHER
' Fri 18-May-2018 06:24:52 __ 3 HOUR _ DO SOME EXTRA WORK
'-----------------------------------------------------------------

'-----------------------------------------------------------------
' 003 Session __
'-----------------------------------------------------------------
' Fri 18-May-2018 11:34:46
' Fri 18-May-2018 12:19:12 __ 1 HOUR- MORE SPEEDER UP WORKS IN AN INSTANT NOW
'                             IF NOTHING TO DO
'-----------------------------------------------------------------

'-----------------------------------------------------------------
' 004 Session __
'-----------------------------------------------------------------
' Fri 18-May-2018 22:44:00
' Fri 18-May-2018 22:44:00
'-----------------------------------------------------------------

'-----------------------------------------------------------------
' 005 Session __
'-----------------------------------------------------------------
' Sun 07-Oct-2018 02:57:00
' Sun 07-Oct-2018 03:15:00 __ Additional & Modify 
'-----------------------------------------------------------------

'-----------------------------------------------------------------
' 006 Session __
'-----------------------------------------------------------------
' Sun 07-Oct-2018 05:40:00
' Sun 07-Oct-2018 05:44:00 __ Back to Write the Time Header-ing 
'                          __ And Programs to Be Installed ASUS-5P
'-----------------------------------------------------------------


' -------------------------------------------------------------------
' [ Friday 20:48:00 Pm_08 March 2019 ]
' -------------------------------------------------------------------
' SKYPE IS APP FROM WINDOWS STORE AND NOT ABLE PUT AS LINK 
' ONLY PUT FROM WINDOWS OWN STYLE
' -------------------------------------------------------------------
' FINDER AND NOT WANTER
' -------------------------------------------------------------------
' "C:\Program Files\HandBrake\HandBrake.exe"
' "C:\Program Files\Oracle\VirtualBox\VirtualBox.exe"
' "C:\Program Files (x86)\DVDVideoSoft\Free MP4 Video Converter\FreeMP4VideoConverter.exe"
' "C:\Users\MATT 01\AppData\Local\FlickrUploadrWindows\app-1.0.1.292\Flickr.exe"
' -------------------------------------------------------------------

Const ForReading = 1, ForWriting = 2, ForAppending = 8

DIM Q
DIM PinTo10_EXE_PATH
Q=CHR(34)
PinTo10_EXE_PATH=Q & "C:\SCRIPTER\SCRIPTER CODE -- VBS\VBS 12-Pinto10\PinTo10.exe" & Q

'EXAMPLE
'PinTo10.exe /PTFOL:"C:\Windows" /PTFILE:"notepad.exe"

Set args = Wscript.Arguments
For Each arg In args
	XF0 = XF0 + arg
Next

'If Sent-to is Used Sometime Additional Quote Surround are User
'--------------------------------------------------------------
XF0 = UCASE(Replace(XF0,"""",""))

IF INSTR(XF0,"-Q") THEN QUITE_MODE_ENDING=TRUE
IF INSTR(XF0,"/Q") THEN QUITE_MODE_ENDING=TRUE

'QUITE_MODE_ENDING=TRUE

DIM LINK_SET_ALREADY_EXIST_TOTAL
DIM Version_OS
DIM objShell
DIM objFSO
DIM LINK_SET_STRING
DIM APPDATA_FOLDER_FILE_COUNT_VAR_1
DIM ARRAY_1(200)
DIM ARRAY_2(200)

Set objShell = Wscript.CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")
Dim FSO
Set FSO = CreateObject("Scripting.FileSystemObject")
DIM oFSO
Set oFSO = CreateObject("Scripting.FileSystemObject")

WindowsDir = objShell.ExpandEnvironmentStrings("%windir%")
AppDataLocation=objShell.ExpandEnvironmentStrings("%APPDATA%")
COUNT_I=0

CALL GET_WINDOWS_VERSION
'WINDOWS 7 = 6.1.7601

obj_SOURCE_Folder = AppDataLocation & "\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar"
Set objSuperFolder = objFSO.GetFolder(obj_SOURCE_Folder)

IF INSTR(XF0,"-L") THEN LOAD_WINDOWS_FOLDER=TRUE
IF INSTR(XF0,"/L") THEN LOAD_WINDOWS_FOLDER=TRUE

IF LOAD_WINDOWS_FOLDER=TRUE THEN
	'Dim objShell
	Set objShell = Wscript.CreateObject("WScript.Shell")
	objShell.Run CHR(34)& "EXPLORER.exe" & CHR(34)& " " & CHR(34)& obj_SOURCE_Folder & CHR(34)
	Set objShell = Nothing
	WScript.Quit(0)
END IF


APPDATA_FOLDER_FILE_COUNT_VAR_1=0
Call APPDATA_FOLDER_FILE_COUNT(objSuperFolder, APPDATA_FOLDER_FILE_COUNT_VAR_1)

' WScript.Quit(0)

DIM FILE_SCAN_FIND_2
DIM FILE_SCAN_FIND_4


CALL CREATE_PIN_ITEM_ARRAY


'-------------------------------------
' CHECK FOR DUPLICATES IN ARRAY
'-------------------------------------
DIM R_SET_1
DIM R_SET_2

FOR R_SET_1=1 TO UBOUND(ARRAY_1)
	FOR R_SET_2=1 TO UBOUND(ARRAY_1)
		IF ARRAY_1(R_SET_1)<>"" AND ARRAY_1(R_SET_2)<>"" THEN 
			IF UCASE(ARRAY_1(R_SET_1))=UCASE(ARRAY_1(R_SET_2)) AND R_SET_1<>R_SET_2 THEN 
				I_VAR=""
				I_VAR=I_VAR + "DUPLICATE ENTRY IN VBS 12-PINITEM BATCH.VBS = " & VBCRLF 
				I_VAR=I_VAR + VBCRLF 
				I_VAR=I_VAR + ARRAY_1(R_SET_1)
				MSGBOX I_VAR
			END IF
		END IF
	NEXT
NEXT


'-------------------------------------
' CHECK FOR DUPLICATES MASSIVE SPEEDER
'-------------------------------------
obj_SOURCE_Folder = AppDataLocation & "\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar"
Set objSuperFolder = objFSO.GetFolder(obj_SOURCE_Folder)
CALL GET_LINK_SET_STRING(objSuperFolder)

FOR R_SET=1 TO UBOUND(ARRAY_1)
	IF ARRAY_1(R_SET)<>"" THEN 
		If objFSO.FileExists(ARRAY_1(R_SET)) = TRUE Then
			FILE_SCAN_FIND_1=UCASE(MID(ARRAY_1(R_SET),INSTR(ARRAY_1(R_SET),"\")+1))

			IF INSTR(LINK_SET_STRING,FILE_SCAN_FIND_1)>0 THEN 
				ARRAY_2(R_SET)=TRUE
				LINK_SET_ALREADY_EXIST_TOTAL=LINK_SET_ALREADY_EXIST_TOTAL+1
			END IF
		END IF
	END IF
NEXT
'-------------------------------------

'-------------------------------------------------------
' CHECK FOR FILEEXISTS THAT COULD BE 64 BIT & VICE VERSA
'-------------------------------------------------------
' DIM R_SET_1
FOR R_SET_1=1 TO UBOUND(ARRAY_1)
	HOLDER_VAR=ARRAY_1(R_SET_1)
	SET_VAR_FLAG_1=FALSE
	SET_VAR_FLAG_2=FALSE
	If objFSO.FileExists(ARRAY_1(R_SET_1)) = FALSE Then
		IF INSTR(UCASE(ARRAY_1(R_SET_1)),"\PROGRAM FILES (X86)\")>0 THEN 
			ARRAY_1(R_SET_1)=REPLACE(UCASE(ARRAY_1(R_SET_1)), "\PROGRAM FILES (X86)\","\PROGRAM FILES\")
			SET_VAR_FLAG_1=TRUE
		END IF
	END IF
	
	' TRY BOTH
	' HERE WILL PUT BACK AS WAS IF NOT FOUND BETWEEN (86X) AND 64 BIT
	' OR AND WILL INVERT FOR VICE VERSA
	If objFSO.FileExists(ARRAY_1(R_SET_1)) = FALSE Then
		IF INSTR(UCASE(ARRAY_1(R_SET_1)),"\PROGRAM FILES\")>0 THEN 
			ARRAY_1(R_SET_1)=REPLACE(UCASE(ARRAY_1(R_SET_1)), "\PROGRAM FILES\","\PROGRAM FILES (X86)\")
			SET_VAR_FLAG_2=TRUE
		END IF
	END IF
	
	'PUT THE CASE CONVERSTION BACK RESTORE
	IF UCASE(HOLDER_VAR) = UCASE(ARRAY_1(R_SET_1)) THEN
		ARRAY_1(R_SET_1)=HOLDER_VAR
	END IF
	
	' IF BOTH CONVERSION HAPPEN AND NOTHING CHANGED ON FILEEXISTS THEN RESTORE CASE CONVERSION
	If objFSO.FileExists(ARRAY_1(R_SET_1)) = FALSE Then
		IF SET_VAR_FLAG_1=TRUE OR SET_VAR_FLAG_2=TRUE THEN 
			ARRAY_1(R_SET_1)=HOLDER_VAR
		END IF
	END IF
	
NEXT
'-------------------------------------

If objFSO.FileExists(ARRAY_1(I)) = FALSE Then
	ARRAY_1(I)="C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
END IF



'--------------------------------------------------------------------
IF Version_OS=>6 THEN 
	CALL RUN_THE_CODE_PIN_TO
END IF
'--------------------------------------------------------------------

'WScript.Quit(0)

FOR R_SET=1 TO UBOUND(ARRAY_1)
	IF ARRAY_1(R_SET)<>"" THEN 
		If objFSO.FileExists(ARRAY_1(R_SET)) = TRUE Then
			COUNT_I=COUNT_I+1
		ELSE
			IF QUITE_MODE_ENDING=FALSE THEN 
				WScript.Echo "ITEM DON'T EXIST" & VBCRLF & VBCRLF & ARRAY_1(R_SET)
			END IF
		END IF
	END IF
NEXT

obj_SOURCE_Folder = AppDataLocation & "\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar"
Set objSuperFolder = objFSO.GetFolder(obj_SOURCE_Folder)
APPDATA_FOLDER_FILE_COUNT_VAR_2=0
Call APPDATA_FOLDER_FILE_COUNT(objSuperFolder, APPDATA_FOLDER_FILE_COUNT_VAR_2)

IF APPDATA_FOLDER_FILE_COUNT_VAR_1=APPDATA_FOLDER_FILE_COUNT_VAR_2 THEN
	IF QUITE_MODE_ENDING=FALSE THEN 
		I_VAR=""
		I_VAR=I_VAR + "DONE _ PUT ITEM SET PUT ON TASKBAR COUNT TOTAL = " & VBCRLF & COUNT_I & VBCRLF
		I_VAR=I_VAR + VBCRLF 
		I_VAR=I_VAR + "NONE EXTRA ADDED"
		MSGBOX I_VAR
	END IF
END IF

IF APPDATA_FOLDER_FILE_COUNT_VAR_1<>APPDATA_FOLDER_FILE_COUNT_VAR_2 THEN
	I_VAR=""
	I_VAR=I_VAR + "PIN ITEM SET PUT ON TASKBAR TOTAL = " & VBCRLF & COUNT_I & VBCRLF
	I_VAR=I_VAR + VBCRLF 
	I_VAR=I_VAR + "EXTRA PIN ITEM SET PUT ON TASKBAR = " & VBCRLF
	I_VAR=I_VAR + CSTR(APPDATA_FOLDER_FILE_COUNT_VAR_2-APPDATA_FOLDER_FILE_COUNT_VAR_1)
	MSGBOX I_VAR
END IF

WScript.Quit(0)
'END OF
'--------------------------------------------------------------------
'--------------------------------------------------------------------

'--------------------------------------------------------------------
' STARTING
'--------------------------------------------------------------------
'--------------------------------------------------------------------
SUB CREATE_PIN_ITEM_ARRAY
'--------------------------------------------------------------------
I=0
CUR_USER = CreateObject("WScript.Network").UserName
COMPUTER_NAME_VAR = CreateObject("WScript.Network").Computername

'--------------------------------------------------------------------

I=I+1:ARRAY_1(I)="C:\Windows\System32\cmd.exe"
I=I+1:ARRAY_1(I)="C:\Windows\explorer.exe"
I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
IF Version_OS=10 THEN
	I=I+1:ARRAY_1(I)="C:\Program Files\Internet Explorer\iexplore.exe"
END IF

obj_SOURCE_Folder = "C:\Users\" & CUR_USER & "\AppData\Local\FlickrUploadrWindows"
SET_GO=TRUE
If objFSO.FOLDERExists(obj_SOURCE_Folder) = FALSE Then SET_GO=FALSE
IF SET_GO=TRUE THEN 
	FILE_SCAN_FIND_2=""
	Set objSuperFolder = objFSO.GetFolder(obj_SOURCE_Folder)
	Call ShowSubfolders(objSuperFolder, "Flickr.exe")
	IF FILE_SCAN_FIND_2<>"" THEN 
		'I=I+1:ARRAY_1(I)=FILE_SCAN_FIND_2
	ELSE
		'I=I+1:ARRAY_1(I)=obj_SOURCE_Folder & "\Flickr.exe"
	END IF
END IF


' ---------------------------------------------------------------------
' NEW SUPER COOL ROUTINE TO INSTANT FIND NORTON UISTUB.EXE
' THE MAIN ENGINE AND ALLOW SHORTCUT
' THEY NORTON FREQUENTLY CHANGE THE NAME OF FOLDER IN PROGRAM FILES
' AND MAY BE LOCATED IN PROGRAM FILES OR PROGRAM FILES (X86)
' AFTER THEY DISCARD AND OLD VERSION THEY NEVER LEAVE UISTUB.EXE BEHIND
' MY CODE SEARCH PROGRAM FILES AND (X86) LIKE NORMAL ONE DO
' BUT IT ONLY SEARCH FOR FIRST PART OF NAME AFTER LIKE EXAMPLE 
' "C:\PROGRAM FILES\NORTON" AND THAT IS ALL AS NORTON ALWAYS START 
' WITH NORTON UP UNTIL NOW
' IS A NEW HIGH SPEED WAY TO SEARCH FOR BETTER CODER
' ---------------------------------------------------------------------
' WRITE CODE TIME
' Sat 09-Mar-2019 23:39:39
' Sat 09-Mar-2019 01:22:00
' ---------------------------------------------------------------------

' ---------------------------------------------------------------------
' DECLARE THESE TWO
' ---------------------------------------------------------------------
' DIM FILE_SCAN_FIND_2
' DIM FILE_SCAN_FIND_4
' ---------------------------------------------------------------------
FILE_SCAN_FIND_4=""
Call ShowSubfolders_FIND_NORTON_UISTUB_EXE

IF FILE_SCAN_FIND_4<>"" THEN 
	' FOUND NORTON \uiStub.exe
	I=I+1:ARRAY_1(I)=FILE_SCAN_FIND_4
ELSE
	' WHEN CANNOT FIND ALLOW FOR ALERT ANYWAY
	I=I+1:ARRAY_1(I)="C:\Program Files\Norton Security\Engine\...\uiStub.exe"
END IF


obj_SOURCE_Folder = "C:\Users\" & CUR_USER & "\AppData\Local\GrammarlyForWindows"
SET_GO=TRUE
If objFSO.FOLDERExists(obj_SOURCE_Folder) = FALSE Then SET_GO=FALSE
IF SET_GO=TRUE THEN 
	FILE_SCAN_FIND_2=""
	Set objSuperFolder = objFSO.GetFolder(obj_SOURCE_Folder)
	Call ShowSubfolders (objSuperFolder,"GrammarlyForWindows.exe")
	IF FILE_SCAN_FIND_2<>"" THEN 
		I=I+1:ARRAY_1(I)=FILE_SCAN_FIND_2
	ELSE
		I=I+1:ARRAY_1(I)=obj_SOURCE_Folder & "\GrammarlyForWindows.exe"
	END IF
END IF

IF Version_OS=6 THEN
	I=I+1:ARRAY_1(I)="C:\PStart\# NOT INSTALL REQUIRED\UWT2.2 _ WIN 7\Ultimate Windows Tweaker.exe"
END IF 
IF Version_OS=10 THEN
	I=I+1:ARRAY_1(I)="C:\PStart\# NOT INSTALL REQUIRED\UWT4 ___ WIN 10\Ultimate Windows Tweaker 4.1.1.exe"
	I=I+1:ARRAY_1(I)="C:\PStart\# NOT INSTALL REQUIRED\UWT4.3 ___ WIN 10\Ultimate Windows Tweaker 4.3\Ultimate Windows Tweaker 4.3.exe"
	I=I+1:ARRAY_1(I)="C:\PStart\# NOT INSTALL REQUIRED\UWT4.4.1 ___ WIN 10\Ultimate Windows Tweaker 4.4.1\Ultimate Windows Tweaker 4.4.1.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Nokia\Nokia Suite\NokiaSuite.exe"
	I=I+1:ARRAY_1(I)="C:\Windows\system32\mspaint.exe"
	I=I+1:ARRAY_1(I)="C:\PStart\Progs\0_Nirsoft_Package\NirSoft\x64\specialfoldersview.exe"
END IF 

' 1-ASUS-X5DIJ
' 2-ASUS-EEE
' 3-LINDA-PC
' 4-ASUS-GL522VW
' 5-ASUS-P2520LA
' 7-ASUS-GL522VW
' 8-MSI-GP62M-7RD

' IF COMPUTER_NAME_VAR="1-ASUS-X5DIJ" then 
' IF COMPUTER_NAME_VAR="2-ASUS-EEE" then 
' IF COMPUTER_NAME_VAR="3-LINDA-PC" then 
' IF COMPUTER_NAME_VAR="4-ASUS-GL522VW" then 
' IF COMPUTER_NAME_VAR="5-ASUS-P2520LA" then 
' IF COMPUTER_NAME_VAR="7-ASUS-GL522VW" then 


IF COMPUTER_NAME_VAR="8-MSI-GP62M-7RD" then 
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\NetSetMan\netsetman.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Freemake\Freemake Video Converter\FreemakeVC.exe"
END IF 

IF COMPUTER_NAME_VAR="4-ASUS-GL522VW" then 
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\DFX\dfx.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Freemake\Freemake Video Converter\FreemakeVC.exe"
END IF 

IF COMPUTER_NAME_VAR="7-ASUS-GL522VW" then 
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\DFX\dfx.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Freemake\Freemake Video Converter\FreemakeVC.exe"
END IF 


'I=I+1:ARRAY_1(I)="C:\Program Files\Mythicsoft\Agent Ransack\AgentRansack.exe"
'If objFSO.FileExists(ARRAY_1(I)) = FALSE Then
'	ARRAY_1(I)="C:\Program Files (x86)\Mythicsoft\Agent Ransack\AgentRansack.exe"
'END IF

I=I+1:ARRAY_1(I)="C:\Program Files\Mozilla Firefox\firefox.exe"
If objFSO.FileExists(ARRAY_1(I)) = FALSE Then
	ARRAY_1(I)="C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
END IF
I=I+1:ARRAY_1(I)="C:\PStart\Progs\0_Nirsoft_Package\NirSoft\bluetoothlogview.exe"
I=I+1:ARRAY_1(I)="C:\PStart\Progs\0_Nirsoft_Package\NirSoft\bluetoothview.exe"

I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\VB_KEEP_RUNNER\VB KEEP RUNNER.exe"
IF Version_OS=10 THEN
	I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\CPU % OF A PROGRAM\CPU % INDIVIDUAL PROCESS.exe"
END IF 
I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\Clipboard Logger\ClipBoard Logger.exe"
I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\CLIPBOARD_VIEWER\ClipBoard Viewer.exe"
I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\URL Logger\URL Logger.exe"
I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\EliteSpy\EliteSpy.exe"
I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\Tidal_Info\Tidal.exe"
IF Version_OS=10 THEN
	I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\Cid-Run-Me-Ace\Cid-RunMe.exe"
END IF 

IF COMPUTER_NAME_VAR="7-ASUS-GL522VW" then 
	I=I+1:ARRAY_1(I)="C:\SCRIPTER\SCRIPTER CODE -- BAT\BAT 59-RUN GOODSYNC SET SCRIPTOR--VB\BAT 59-RUN GOODSYNC SET SCRIPTOR.exe" 
	
	' C:\SCRIPTOR GITHUB\SCRIPTER CODE -- BAT\BAT 59-RUN GOODSYNC SET SCRIPTOR--VB\BAT 59-RUN GOODSYNC SET SCRIPTOR.exe
	' C:\SCRIPTER\SCRIPTER CODE -- BAT\BAT 59-RUN GOODSYNC SET SCRIPTOR--VB\BAT 59-RUN GOODSYNC SET SCRIPTOR.exe
	' SUPPOSED TO ADD HERE TO END --  GOODSYNC_MODE  TASKBAR_TRAY_ICON
END IF 
IF COMPUTER_NAME_VAR="7-ASUS-GL522VW" THEN
	I=I+1:ARRAY_1(I)="C:\Users\" & CUR_USER & "\AppData\Local\GitHubDesktop\GitHubDesktop.exe"
END IF

IF COMPUTER_NAME_VAR<>"3-LINDA-PC" THEN
	I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\Run_AS\Matt_RunAS.exe"
	I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\Run_AS 2011-06-11 VER 1.0.164\Matt_RunAS.exe"
	I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\Run_AS 2012-09-25 VER 1.0.192 EXE ONLY\Matt_RunAS.exe"
	I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\Clip_Type\Clip_Type.exe"
	I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\Shell Execute Loader\Shell Execute Loader.exe"
	I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\Shell Explorer Loader\Shell Explorer Loader.exe"
	I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\Shell KeyBoard Loader\shell keyboard loader.exe"
	I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Send_To\Send To Multi Menu\#0 Send To Multi Menu.exe"
	I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Send_To\Send To Text List of Files & Sub Folders IRFAN\#0 Send To Text List of Files and Sub Folders IRFAN.EXE"
END IF
IF Version_OS=10 THEN
	I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\Shell NotePad Loader\Shell NotePad Loader.exe"
	I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\Shell Loader Loader\Shell Loader Loader.exe"
	I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\Shell VBasic 6 Loader\Shell VBasic 6 Loader.exe"
	I=I+1:ARRAY_1(I)="D:\VB6\VB-NT\00_Best_VB_01\Batch_Compiler_Auto\BatchCompiler.exe"
END IF 
I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Microsoft Visual Studio\VB98\VB6.EXE"
IF Version_OS=10 THEN
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Microsoft Visual Studio 9.0\Common7\IDE\devenv.exe"
END IF 
IF Version_OS=10 THEN
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Microsoft Speech SDK 5.1\Bin\TTSApp.exe"
END IF 

' -------------------------------------------------------------------
' -------------------------------------------------------------------

I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Siber Systems\AI RoboForm\Identities.exe"
I=I+1:ARRAY_1(I)="C:\Program Files\Siber Systems\GoodSync\GoodSync-v10.exe"

IF Version_OS=10 THEN
	I=I+1:ARRAY_1(I)="C:\PStart\Progs\0_Nirsoft_Package\NirSoft\x64\hashmyfiles.exe"
	I=I+1:ARRAY_1(I)="C:\PStart\# NOT INSTALL REQUIRED\Reg Converter\RegConvert.exe"
	'I=I+1:ARRAY_1(I)="C:\PStart\Progs\0_Nirsoft_Package\NirSoft\x64\regfromapp.exe"
END IF 


IF COMPUTER_NAME_VAR<>"3-LINDA-PC" THEN
	I=I+1:ARRAY_1(I)="C:\PStart\PStart.exe"
	I=I+1:ARRAY_1(I)="C:\PStart\Progs\#_PortableApps\Start.exe"
	I=I+1:ARRAY_1(I)="C:\PStart\Progs\0_Nirsoft_Package\NirLauncher.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\WinMerge\WinMergeU.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\seRapid\seRapid.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\TeamViewer\TeamViewer.exe"

END IF

I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Notepad++\notepad++.exe"

IF Version_OS=10 THEN
	I=I+1:ARRAY_1(I)="C:\PStart\Progs\#_PortableApps\PortableApps\PicPickPortable\App\picpick\picpick.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files\OVH\hubiC\hubiC.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files\CCleaner\CCleaner64.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files\Common Files\LogiShrd\Unifying\DJCUHost.exe"
END IF

I=I+1:ARRAY_1(I)="C:\Program Files (x86)\JAM Software\TreeSize Free\TreeSizeFree.exe"
I=I+1:ARRAY_1(I)="C:\Program Files\VS Revo Group\Revo Uninstaller\RevoUnin.exe"

IF Version_OS=10 THEN
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Cool2000\cool2000.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Audacity\audacity.exe"
END IF


IF COMPUTER_NAME_VAR<>"3-LINDA-PC" THEN
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Duplicate Cleaner Pro\DuplicateCleaner.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Winamp\winamp.exe"
	' I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Greatis\WinDowse\WinDowse.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files\MPC-HC\mpc-hc64.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\PWGen\PWGen.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files\Process Lasso\ProcessLasso.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files\ViceVersa Pro\ViceVersa.exe"
END IF


IF Version_OS=10 THEN
	' I=I+1:ARRAY_1(I)="C:\Program Files (x86)\WordWeb\wweb32.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\WordWeb\wwnotray.exe"
	' I=I+1:ARRAY_1(I)="C:\Program Files\WinHTTrack\WinHTTrack.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files\WinRAR\WinRAR.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\UltraISO\UltraISO.exe"
END IF



' I=I+1:ARRAY_1(I)="C:\PStart\Progs\#_PortableApps\PortableApps\ProcessExplorerPortable\ProcessExplorerPortable.exe"

IF COMPUTER_NAME_VAR<>"3-LINDA-PC" THEN
	I=I+1:ARRAY_1(I)="C:\PStart\# NOT INSTALL REQUIRED\01 www.System Internals.com\SysInternals\SysinternalsSuite\procexp.exe"
	' I=I+1:ARRAY_1(I)="C:\PStart\Progs\#_PortableApps\PortableApps\AutorunsPortable\App\Autoruns\Autoruns64.exe"
	I=I+1:ARRAY_1(I)="C:\PStart\# NOT INSTALL REQUIRED\01 www.System Internals.com\SysInternals\SysinternalsSuite\Autoruns.exe"
	I=I+1:ARRAY_1(I)="C:\PStart\# NOT INSTALL REQUIRED\EASYBCD\Easy USB Creator Lite.exe"
	I=I+1:ARRAY_1(I)="C:\PStart\# NOT INSTALL REQUIRED\RUFUS\rufus-3.1.exe"
END IF

I=I+1:ARRAY_1(I)="C:\Program Files\MiniTool Partition Wizard 10\partitionwizard.exe"
I=I+1:ARRAY_1(I)="C:\Program Files (x86)\NeoSmart Technologies\EasyBCD\EasyBCD.exe"

IF Version_OS=10 THEN
	I=I+1:ARRAY_1(I)="C:\PStart\# NOT INSTALL REQUIRED\EASYBCD\ImgBurn.exe"
	I=I+1:ARRAY_1(I)="C:\ProgramData\Logishrd\LogiOptions\Software\Current\LogiOptionsUI.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Nero\Nero 2018\Nero Vision\NeroVision.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Nero\Nero 2018\Nero Launcher\NeroLauncher.exe" 
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\No-IP\DUC40.exe"
END IF

IF COMPUTER_NAME_VAR<>"3-LINDA-PC" THEN
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Nero\Nero 2018\Nero WaveEditor\waveedit.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files\Mythicsoft\FileLocator Pro\FileLocatorPro.exe"
END IF


IF Version_OS=10 THEN
	'I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Nero\Nero TuneItUp\TuneItUp.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files\FileZilla FTP Client\filezilla.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files (x86)\FileZilla Server\FileZilla Server Interface.exe"
END IF


' MOST UP TO DATE VERSION
' -----------------------
'I=I+1:ARRAY_1(I)="C:\Windows\System32\calc.exe"

I=I+1:ARRAY_1(I)="C:\PStart\# NOT INSTALL REQUIRED\CALC WIN 01 VB\Calc VB.exe"
I=I+1:ARRAY_1(I)="C:\PStart\# NOT INSTALL REQUIRED\CALC WIN 02 XP\Calc XP.exe"

' I=I+1:ARRAY_1(I)="C:\PStart\# NOT INSTALL REQUIRED\CALC WIN 03 07\Calc Windows 7.exe"
' WINDOWS 7 CALC
' CAN'T BE RENAMED OR MOVED
' INSTALL FROM 
' C:\PStart\# NOT INSTALL REQUIRED\CALC WIN 03 07\Old Calculator for Windows 10.exe
' C:\PStart\# NOT INSTALL REQUIRED\CALC WIN 03 07\OldCalcWin10.zip
' ----
' Downloads / Tools by other people / Old Calculator for Windows 10 from Windows 7 or Windows 8
' https://winaero.com/download.php?view.1795
' ----


IF Version_OS=10 THEN
	' WIN 07 CALC FOR WIN 10 OR WIN XP
	' WILL ONLY WORK ON WIN 10 
	' NOT A VALID WINDOWS APPLICATION FOR WINDOWS 7
	' GUESS BE THE SAME ONE AS WIN 07 ANYWAY
	I=I+1:ARRAY_1(I)="C:\Windows\System32\Calc1.exe" 
	I=I+1:ARRAY_1(I)="C:\PStart\# NOT INSTALL REQUIRED\CALC WIN 04 10\Calc Windows 10.exe"
END IF

'----------------------------------------------------------------------------
' ----
' Downloads / Tools by other people / Classic Paint app for Windows 10
' https://winaero.com/download.php?view.1927
' ----
' D:\03_MICROSOFT\# 01 OPERATING_SYSTEM\#_OP_SYS\ClassicPaintforWindows10.zip
'----------------------------------------------------------------------------
' ORIGINAL LOCATION COMES WITH WINDOWS
'----------------------------------------------------------------------------


IF COMPUTER_NAME_VAR<>"3-LINDA-PC" THEN
	I=I+1:ARRAY_1(I)="C:\ProgramData\VideoDownloaderUltimateWinApp\VideoDownloaderUltimate.exe"
END IF

IF Version_OS=10 THEN
	' DVD RIPER COPIER
	I=I+1:ARRAY_1(I)="C:\Program Files\HandBrake\HandBrake.exe"
	I=I+1:ARRAY_1(I)="C:\Program Files\Oracle\VirtualBox\VirtualBox.exe"
	I=I+1:ARRAY_1(I)="C:\Windows\System32\Taskmgr.exe"
END IF

' IF Version_OS>=10 THEN
	' I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Glarysoft\Software Update 5\Software Update.exe"
' END IF

I=I+1:ARRAY_1(I)="C:\Program Files (x86)\Glarysoft\Software Update 5\Software Update.exe"
If objFSO.FileExists(ARRAY_1(I)) = FALSE Then
	ARRAY_1(I)=REPLACE(UCASE(ARRAY_1(I)), "\PROGRAM FILES (X86)\","\PROGRAM FILES\")
END IF


I=I+1:ARRAY_1(I)=""
I=I+1:ARRAY_1(I)=""
I=I+1:ARRAY_1(I)=""




' -------------------------------------------------------------------
' ASUS 5-P NOT REQUIRED ON TASKBAR
' -------------------------------------------------------------------
' C:\Program Files\# NO INSTALL REQUIRED\Advanced_Renamer\ARen.exe
' C:\Program Files (x86)\Nokia\Nokia Suite\NokiaSuite.exe
' C:\PStart\Progs\0_Nirsoft_Package\NirSoft\x64\specialfoldersview.exe
' D:\VB6\VB-NT\00_Best_VB_01\CPU % OF A PROGRAM\CPU % INDIVIDUAL PROCESS.exe
' D:\VB6\VB-NT\00_Best_VB_01\Cid-Run-Me-Ace\Cid-RunMe.exe
' C:\Program Files\CCleaner\CCleaner64.exe
' C:\Program Files\Common Files\Logishrd\Unifying\DJCUHost.exe
' C:\Program Files\OVH\hubiC\hubiC.exe" run --showsync
' -------------------------------------------------------------------
' ASUS 5-P NOT INSTALLED YET AND SORT IF WANT PLACED WITH TASKBAR
' -------------------------------------------------------------------
' -------------------------------------------------------------------
' ASUS 5-P NOT RELEVANT
' -------------------------------------------------------------------
' C:\Program Files (x86)\DFX\dfx.exe
' C:\ProgramData\Logishrd\LogiOptions\Software\Current\LogiOptionsUI.exe
' C:\Windows\System32\Calc1.exe
' -------------------------------------------------------------------
' ASUS 5-P YES SHOW ON TASKBAR
' -------------------------------------------------------------------
' C:\Program Files (x86)\Freemake\Freemake Video Converter\FreemakeVC.exe
' C:\Program Files (x86)\Nero\Nero 2018\Nero Launcher\NeroLauncher.exe
' C:\Program Files (x86)\Nero\Nero 2018\Nero WaveEditor\waveedit.exe
' C:\Program Files\MPC-HC\mpc-hc64.exe
' C:\Program Files (x86)\No-IP\DUC40.exe
' C:\Program Files\HandBrake\HandBrake.exe
' -------------------------------------------------------------------
' ASUS 5-P OFF TASKBAR
' -------------------------------------------------------------------
' C:\Program Files (x86)\Nero\Nero 2018\Nero Vision\NeroVision.exe
' C:\Program Files (x86)\Cool2000\cool2000.exe
' C:\Program Files (x86)\Audacity\audacity.exe
' C:\Program Files\WinHTTrack\WinHTTrack.exe
' C:\Program Files\FileZilla FTP Client\filezilla.exe
' C:\Program Files (x86)\FileZilla Server\FileZilla Server Interface.exe
' -------------------------------------------------------------------


' -------------------------------------------------------------------
' -------------------------------------------------------------------
' -------------------------------------------------------------------
' -------------------------------------------------------------------

' -------------------------------------------------------------------
' -------------------------------------------------------------------
' -------------------------------------------------------------------
' -------------------------------------------------------------------

END SUB


'--------------------------------------------------------
SUB GET_WINDOWS_VERSION
'--------------------------------------------------------
	Set SystemSet = GetObject("winmgmts:").InstancesOf ("Win32_OperatingSystem") 
	for each System in SystemSet 
	' WScript.Echo System.Caption 
	' WScript.Echo System.Manufacturer 
	' WScript.Echo System.BuildType 
	' WScript.Echo " Version: " + System.Version 
	' WScript.Echo " Locale: " + System.Locale 
	' WScript.Echo " Windows Directory: " + System.WindowsDirectory 
	' WScript.Echo " Total memory: " + System.TotalVisibleMemorySize + " bytes" 
	' WScript.Echo " Serial Number: " + System.SerialNumber 
	' Wscript.Echo "" 
	Version_OS = CINT(MID(System.Version,1,INSTR(System.Version,".")-1))
	'WINDOWS 7 = 6.1.7601
	next 
END SUB

'--------------------------------------------------------
SUB RUN_THE_CODE_PIN_TO
'--------------------------------------------------------
FOR R_SET=1 TO UBOUND(ARRAY_1)
	IF ARRAY_1(R_SET)<>"" AND ARRAY_2(R_SET)=FALSE THEN 
		ITEM_VAR_PATH=Q & MID(ARRAY_1(R_SET),1,INSTRREV(ARRAY_1(R_SET),"\")-1) & Q
		ITEM_VAR_FILE=Q & MID(ARRAY_1(R_SET),INSTRREV(ARRAY_1(R_SET),"\")+1) & Q
		ITEM_VAR_SET=" /PTFOL:" & ITEM_VAR_PATH & " /PTFILE:" & ITEM_VAR_FILE
		
		If objFSO.FileExists(ARRAY_1(R_SET)) = TRUE Then 

			objShell.Run PinTo10_EXE_PATH & ITEM_VAR_SET , 0 , TRUE
			'WScript.Sleep 1000

			IF QUITE_MODE_ENDING=FALSE THEN
				'MSGBOX "ITEM PINNED TO TASKBAR __"+VBCRLF+VBCRLF+ARRAY_1(R_SET)
			END IF
			'WScript.Quit(0)
		END IF
	END IF
NEXT
END SUB


'-----------------------------------------------
SUB GET_LINK_SET_STRING(fFolder)
'-----------------------------------------------
	LINK_SET_STRING=""
	Set objFolder = objFSO.GetFolder(fFolder.Path)
    Set colFiles = objFolder.Files
	Dim oFile
	For Each objFile in colFiles
		Set oFile = oFSO.GetFile(objFile.PATH)
		If IsNull(oFile) Then MsgBox("File not found: " & strPath) : Exit SUB
		With oFile.OpenAsTextStream()
			readBinary = .Read(oFile.Size)
			.Close
		End With
		
		TT_EDITOR = readBinary
		LINK_SET_STRING=LINK_SET_STRING+TT_EDITOR
	Next
LINK_SET_STRING=UCASE(LINK_SET_STRING)
End SUB

'-----------------------------------------------
FUNCTION LINK_ALREADY_EXIST(fFolder,FILE_SCAN_FIND_1)
'-----------------------------------------------
	LINK_ALREADY_EXIST=FALSE
	Set objFolder = objFSO.GetFolder(fFolder.Path)
    Set colFiles = objFolder.Files
    FILE_SCAN_FIND_1=MID(FILE_SCAN_FIND_1,INSTR(FILE_SCAN_FIND_1,"\")+1)
	Dim oFile
	For Each objFile in colFiles
		'Set File_1 = fso.OpenTextFile(objFile.PATH, ForReading,0,0)
		
		Set oFile = oFSO.GetFile(objFile.PATH)
		If IsNull(oFile) Then MsgBox("File not found: " & strPath) : Exit Function
		With oFile.OpenAsTextStream()
			readBinary = .Read(oFile.Size)
			.Close
		End With
		
		TT_EDITOR = readBinary

		IF INSTR(UCASE(TT_EDITOR),UCASE(FILE_SCAN_FIND_1))>0 THEN 
			LINK_ALREADY_EXIST=TRUE
		END IF
	Next
End FUNCTION

'-----------------------------------------------
SUB APPDATA_FOLDER_FILE_COUNT(fFolder,FILE_SCAN_FIND_1)
'-----------------------------------------------
	Set objFolder = objFSO.GetFolder(fFolder.Path)
    Set colFiles = objFolder.Files
    For Each objFile in colFiles
		FILE_SCAN_FIND_1=FILE_SCAN_FIND_1+1
	Next
	
    For Each Subfolder in fFolder.SubFolders
		' MIGHT AS WELL SUB FOLDER SCAN IT AS THE CODE IS HERE
		'-----------------------------------------------------
        CALL APPDATA_FOLDER_FILE_COUNT(Subfolder,FILE_SCAN_FIND_1)
    Next
End SUB


' ---------------------------------------------------------------------
' NEW SUPER COOL ROUTINE TO INSTANT FIND NORTON UISTUB.EXE
' THE MAIN ENGINE AND ALLOW SHORTCUT
' THEY NORTON FREQUENTLY CHANGE THE NAME OF FOLDER IN PROGRAM FILES
' AND MAY BE LOCATED IN PROGRAM FILES OR PROGRAM FILES (X86)
' AFTER THEY DISCARD AND OLD VERSION THEY NEVER LEAVE UISTUB.EXE BEHIND
' MY CODE SEARCH PROGRAM FILES AND (X86) LIKE NORMAL ONE DO
' BUT IT ONLY SEARCH FOR FIRST PART OF NAME AFTER LIKE EXAMPLE 
' "C:\PROGRAM FILES\NORTON" AND THAT IS ALL AS NORTON ALWAYS START 
' WITH NORTON UP UNTIL NOW
' IS A NEW HIGH SPEED WAY TO SEARCH FOR BETTER CODER
' ---------------------------------------------------------------------
' WRITE CODE TIME
' Sat 09-Mar-2019 23:39:39
' Sat 09-Mar-2019 01:22:00
' ---------------------------------------------------------------------
' 01 OF 02
'-------------------------------------
Sub ShowSubfolders_FIND_NORTON_UISTUB_EXE
'-------------------------------------
	FILE_SCAN_FIND_4=""
	FOR R_COUNT=1 TO 2
		IF R_COUNT=1 THEN obj_SOURCE_Folder = "C:\Program Files"
		IF R_COUNT=2 THEN obj_SOURCE_Folder = "C:\Program Files (X86)"
		Set objSuperFolder = objFSO.GetFolder(obj_SOURCE_Folder)
		For Each Subfolder in objSuperFolder.SubFolders
			If INSTR(UCASE(Subfolder.PATH), UCASE(FILE_SCAN_FIND_1))>0 Then
				If objFSO.FOLDERExists(Subfolder.PATH+"\ENGINE") = TRUE Then
					FILE_SCAN_FIND_2=""
					Set objSuperFolder_2 = objFSO.GetFolder(Subfolder.PATH+"\ENGINE")
					Call ShowSubfolders_FIND_NORTON_UISTUB_EXE_02(objSuperFolder_2, "uistub.exe")
					IF FILE_SCAN_FIND_2<>"" THEN
						FILE_SCAN_FIND_4=FILE_SCAN_FIND_2
						EXIT FOR
					END IF
				End If
			End If
		Next
	Next
End Sub
'-------------------------------------
' 02 OF 02
'-------------------------------------
Sub ShowSubfolders_FIND_NORTON_UISTUB_EXE_02(fFolder,FILE_SCAN_FIND_1)
'-------------------------------------
    Set objFolder = objFSO.GetFolder(fFolder.Path)
    Set colFiles = objFolder.Files
    For Each objFile in colFiles
		If INSTR(UCASE(objFile.name)+"*", UCASE(FILE_SCAN_FIND_1)+"*")>0 Then
			FILE_SCAN_FIND_2=objFile.PATH
		End If
    Next
	
    For Each Subfolder in fFolder.SubFolders
		' WITH TWO PARAMETERS YOU HAVE TO USE CALL WORD HERE 
		' OR REMOVE THE BRACKETS
        CALL ShowSubfolders_FIND_NORTON_UISTUB_EXE_02(Subfolder,FILE_SCAN_FIND_1)
    Next
End Sub



'-------------------------------------
Sub ShowSubfolders_FIND_FOLDER(fFolder,FILE_SCAN_FIND_1)
'-------------------------------------
	Set objFolder = objFSO.GetFolder(fFolder.Path)
	Set colFiles = objFolder.Files

	For Each Subfolder in fFolder.SubFolders
		SET_GO=FALSE
		If INSTR(UCASE(Subfolder.PATH), UCASE(FILE_SCAN_FIND_1))>0 Then SET_GO=TRUE
		IF SET_GO=TRUE THEN 
			FILE_SCAN_FIND_2=Subfolder.PATH
			MSGBOX FILE_SCAN_FIND_2
			EXIT FOR
		End If

		IF FILE_SCAN_FIND_2="" THEN 
			' CALL ShowSubfolders_FIND_FOLDER(Subfolder,FILE_SCAN_FIND_1)
		END IF
	Next
	
End Sub

'-------------------------------------
Sub ShowSubFolders(fFolder,FILE_SCAN_FIND_1)
'-------------------------------------
    Set objFolder = objFSO.GetFolder(fFolder.Path)
    Set colFiles = objFolder.Files
    For Each objFile in colFiles
		SET_GO=FALSE
		If INSTR(UCASE(objFile.name)+"*", UCASE(FILE_SCAN_FIND_1)+"*")>0 Then SET_GO=TRUE
		IF SET_GO=TRUE THEN 
			FILE_SCAN_FIND_2=objFile.PATH
		End If
    Next
	
    For Each Subfolder in fFolder.SubFolders
		' WITH TWO PARAMETERS YOU HAVE TO USE CALL WORD HERE 
		' OR REMOVE THE BRACKETS
        CALL ShowSubFolders(Subfolder,FILE_SCAN_FIND_1)
    Next
End Sub

' -----------------------------------------------------------------
' REFERENCING
' -----------------------------------------------------------------
' ----
' DeployHappiness | Pinning Programs to the Taskbar with Group Policy
' https://deployhappiness.com/pinning-programs-to-the-taskbar-with-group-policy/
' --------
' DeployHappiness | Pin Programs to the Taskbar in Windows 10 with Group Policy
' https://deployhappiness.com/pin-programs-to-the-taskbar-in-windows-10/
' ----