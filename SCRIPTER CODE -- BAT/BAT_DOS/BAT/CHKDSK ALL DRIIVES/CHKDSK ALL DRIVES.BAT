@REM -- SCRIPT BY MATTHEW LANCASTER MATT.LAN@BTINTERNET.COM
@REM -- CREDIT DUES GIVEN IN PLACES

@ECHO OFF

REM -- THIS WILL RUN CHKDSK ON ALL DRIVES -- IN READ ONLY MODE
REM -- WHICH IS GOOD BECAUSE IT CAN CHECK WITHOUT REQUIRE TO UNLOCK ACCESS
REM -- AS WINDOWS 10 REPORTS READ ONLY MODE WHEN DRIVE LOCKED BY FILE USE 
REM -- CAN POSSIBLE SHOW ERROR WHEN THERE IS NOT
REM -- ALSO WINDOWS 7 AND WIN 10 DO A BETTER ERROR LEVEL RETURN FOR THIS PROGRAM SCRIPT
REM -- WILL SHOW WITH NOT A PROBLEM WHEN THAT IS TRUE
REM -- AND WIN 7 UP REPORT NOT A PROBLEM ON NTFS AS WIN XP THAT WAS ONLY TRUE FOR FAT32 DRIVES

REM -- THE SOUND FILE DON'T WORK FOR WIN 7 UP YET

REM -- 
REM -- LEAVING BEHIND A EMPTY TAG ROOT FILE - YOU CAN SET TO DELETE AFTER IF YOU WANT
REM -- OR YOU MAY WANT THE TIME WHEN LAST RUN LEFT THERE
REM -- AND THEN CHKNTFS WILL MAKE A ERRORLEVEL IF THE DISK IS DIRTY BIT SET
REM -- ANSWER ON THAT IS TO INFORM YOU TO RUN CHKDSK /F OR CHKNTFS WITH /C SET 
REM -- FOR CHECK AT NEXT BOOT - BUT BECAUSE ERRORLEVER - CAN HAVE THAT JOB 
REM -- TAKE OUT OF YOUR HANDS

REM -- WORTH NOTING CAN'T DO EXIT MIDWAY IN BATCH FILE
REM -- ALSO IF THE (ALL DRIVES) DRIVE IS SET TO DO MANUAL CHKDSK AT REBOOT THEN SHOWS AS THAT 
REM -- AND THEN DON'T REPORT DIRTY BIT STATUS AS A ERRORLEVEL SET- 
REM -- MAYBE IF YOU RUN TWICE BEFORE REBOOT

REM -- CAN CONFIRM ERRORS CAN BE FOUND AND NOT DIRTY BIT SET - BUT GOOD YOU CAN DO THAT
REM -- DOS WINDOWS STILL LEFT OPEN TYPE CHKNTFS /C(DRIVELETTER):

REM -- ALSO I NOTICED A DRIVE WITH CHAINS LOST TO RECOVER BUT DIDN'T SHOW AS DIRTY BIT SET

REM -- ALSO Noticed A DRIVE WITH ERROR IN READ ONLY MODE BUT NOT WITH CHKDSK /F MAYBE SOME FILES 
REM -- CHANGING WHILE ATTEMPT THE CHECKING IN READ ONLY MODE

REM -- ONE GOOD THING WHILE TESTING IT'S EASY TO QUIT CHKDSK WHEN IN READ ONLY MODE
REM -- IT'S GOOD TO CHECK DRIVE IN READ ONLY FIRST 1 REASON IF NOT GOT ENOUGH DRIVE SPACE TO COMPLETE JOB WHEN REPORTS NOT ENOUGH SPACE

REM -------------------------
REM -- THOUGHT I WROTE BEFORE BUT CHKDSK ON THE DRIVE YOUR ON WHILE EXAMPLE WITH CHKDSK /F REQUIRES UNLOCK AND
REM -- NOTICED IN ONE CASE REQUIRE THE CMOONAD WINDOW NOT TO BE ON THE DRIVE DOING CHKDSK ON
REM -- WILL HAVE TO MAKE CHKDSK FROM A INDEPENDENT DRIVE
REM ---------------------------------------------------------------
REM -- OOH - PUT TEXT IN WRONG FILE FOUND AGAIN YOU CAN READ DOUBLE FOR MOMENT ----
REM -- ANOTHER LAST CONCLUSION PROBLEM
REM -- CHKNTFS /C OPTION DOES NOT GUARANTEE THE DRIVE WILL BE CHECK AT BOOT
REM -- TRUE BY THE DOCUMENTATION HELP OF COMMAND ALSO I BELIEVE
REM -- EVEN WHEN CHKDSK READ ONLY FOUND FAULTS
REM -- SO RUN CHKDSK /F WHILE STILL BOOTED IF LOCKED AND THEN WILL ASK TO DO AT REBOOT

REM -- ADD THE OPTION TO ASK QUESTION AT END MAYBE - MIGHT DO
REM -- I DON'T WORRY ABOUT BEING ON DRIVE WHEN CHKDSK UNLOCKING THE DRIVE UNLOCKING 
REM -- THAT IS A MINOR PROBLEM 
REM --------------------------

REM -- WINDOWS 7 AND UP DOES A BETTER CHKDSK AND REPORTS AT END NO ANY PROBLEMS FOUND
REM -- WINDOWS XP DON'T DO THAT FOR NTFS BUT DOES FAT32

REM -- I THINK WHEN IT SAYS THIS DRIVE IS NOT DIRTY - I THINK IT MEANS HAS NOT BEEN 
REM -- POWERED OFF OR CRASHED WHILE RUNNING

REM -- ALSO I NOTED I RAN CHKNTFS TO SCAN A DIRTY BIT CRIVE AT BOOT UP BUT NEVER 
REM -- ON NEXT BOOT - AND THEN I SET RUN CHKDSK /F AND THEN ON NEXT BOOT AFTER 
REM -- IT RAN TWICE AND COMPLETLY UNABLE TO STOP EVEN IN SAFEMODE RAN WITHOUT A GUI 
REM -- LOOKING LIKE TAKE AGES TO BOOT IN


@REM ---- START CODING

@REM -- LOOK UP *FOR NEXT* LOOP - AS HAD NONE EXAMPLES BEFORE
@REM -- http://ss64.com/nt/for.html

ECHO RUN SCRIPT TO CREATE BATCH THAT WILL RUN JOBS OF CHHDSK
ECHO AND SWEAT CARING TRICK OR TREAT IT APPROPRIATE BEHAVIOR

C:
CD \

FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO @REM %DATE%--%TIME% >%%G:\CHKDSK-VAR.BAT)
FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO %%G: >>%%G:\CHKDSK-VAR.BAT)
FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO CD\ >>%%G:\CHKDSK-VAR.BAT)
FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO CHKDSK.EXE >>%%G:\CHKDSK-VAR.BAT)


REM #### FOUND HERE http://forums.whirlpool.net.au/archive/564510
REM #### FANCY SOUND METHOD

REM #### YOU GOT TO COPY -- C:\WINDOWS\system32\sndrec32.exe
REM #### FROM A WIN XP OP SYSTEM TO A WIN 7 SYSTEM

FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO @"C:\WINDOWS\system32\sndrec32.exe" /play /close "C:\Windows\Media\Notify.wav" >>%%G:\CHKDSK-VAR.BAT)
REM #### SET THE PLAY SOUND BEFORE CHKNTFS OR ERRORLEVEL GET RESET

FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO CHKNTFS %%G: >>%%G:\CHKDSK-VAR.BAT)


FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO @IF ERRORLEVEL 1 GOTO JUMPSUB02 >>%%G:\CHKDSK-VAR.BAT)


FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO @TITLE %%G:\ -- DRIVE CHECK FINISHED GOOD CLEAN LOVELY JUBBLY >>%%G:\CHKDSK-VAR.BAT)

FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO @ECHO ---------------------------------------- >>%%G:\CHKDSK-VAR.BAT)
FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO @ECHO %%G:\ -- DRIVE CHECK FINISHED GOOD CLEAN AND PROPER LOVELY JUBBLY >>%%G:\CHKDSK-VAR.BAT)


REM -- OPTIONAL IF DRIVE OKAY ON CHKDSK THEN MAYBE SET SO IT DON'T NEED A CHKDSK AT BOOT
REM -- MESSAGE SAYS IT'S ONLY DONE IF REQUIRED - MAYBE FOR OTHER DRIVE DISKS
REM FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (@ECHO CHKNTFS /X %%G: >>%%G:\CHKDSK-VAR.BAT)

REM FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (@ECHO @PAUSE >>%%G:\CHKDSK-VAR.BAT)

FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (@ECHO @GOTO ENDE >>%%G:\CHKDSK-VAR.BAT)

REM ####
REM FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO ECHO "00-%ERRORTRUEVAR%-00" >>%%G:\CHKDSK-VAR.BAT)
REM PROBLEM NOTED WITH ECHO COMMAND AND VARIABLE
REM CHANGE STRATEGY
REM PROBLEM COPYING ERRORLEVEL INTO A VARIABLE MUST USE GOTO JUMP
REM ####

FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO :JUMPSUB02 >>%%G:\CHKDSK-VAR.BAT)
 
FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO CHKNTFS /C %%G: %%G: >>%%G:\CHKDSK-VAR.BAT)

@REM SET TITLE OF COMMAND SHELL
FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO @TITLE %%G:\ -- DRIVE CHECK FINISHED DIRTY BIT NOT PROPER >>%%G:\CHKDSK-VAR.BAT)


@REM SET END MESSAGE RESULT
FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO @ECHO ---------------------------------------- >>%%G:\CHKDSK-VAR.BAT)
FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO @ECHO %%G:\ -- DRIVE CHECK FINISHED DIRTY BIT NOT PROPER >>%%G:\CHKDSK-VAR.BAT)

FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO :ENDE >>%%G:\CHKDSK-VAR.BAT)

REM -- NOW A PROBLEM OF HOW TO EXIT IF OKAY - BUT CAN'T EXIT MIDWAY THINK
REM FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (@ECHO ECHO @IF ERRORLEVEL 0 EXIT >>%%G:\CHKDSK-VAR.BAT)
REM ----


REM #####
REM ##### IF YOU WANT DELETE TEMP FILE AFTER
REM #####
REM FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO DELETE %%G:\CHKDSK-VAR.BAT >>%%G:\CHKDSK-VAR.BAT)
REM #####

FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO @ECHO %%G:\ -- ---------------------------------------- >>%%G:\CHKDSK-VAR.BAT)

FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO @ECHO %%G:\ -- YOU CAN RUN -- CHKDSK %%G: /F -- IF ERROR IS IN LOGG RESULT -- OR CHKNTFS %%G: /C >>%%G:\CHKDSK-VAR.BAT)

FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO @ECHO %%G:\ -- CHKDSK %%G: /F -- THIS ONE WILL BE BETTER FOR RECOVERY >>%%G:\CHKDSK-VAR.BAT)

FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (ECHO @ECHO %%G:\ -- CHKNTFS %%G: /C >>%%G:\CHKDSK-VAR.BAT)


REM --- SET THE BATCH FILE DONE WRITTEN - NOW A RUN OF EACH ONE OF THEM IF DRIVE EXIST

FOR %%G IN (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) DO (IF EXIST %%G:\CHKDSK-VAR.BAT START "%%G:\ -- CHKDSK IN PROGRESS AN READ ONLY" /D"%%G:\" /MIN /NORMAL "%%G:\CHKDSK-VAR.BAT")


@REM PAUSE

EXIT