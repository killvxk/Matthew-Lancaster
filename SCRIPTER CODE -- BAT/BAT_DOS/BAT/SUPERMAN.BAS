DIM a AS STRING * 1
DIM b AS STRING * 1
OPEN "h:\docume~1\matthe~1\ntuser~1.log" FOR BINARY AS #1
OPEN "g:\docume~1\matthe~1\ntuser~1.log" FOR BINARY AS #2
IF LOF(1) <> LOF(2) THEN
COLOR 12
PRINT "Lenght of filess differant : sleep 9000": SLEEP 9000
END IF

doit = 0
FOR r = 1 TO LOF(1)
GET #1, r, a
GET #2, r, b
IF a <> b THEN doit = 1
NEXT
IF doit = 0 THEN COLOR 12: PRINT "No Need to Backup They are the Same.."
IF doit = 1 THEN
FOR r = 1 TO LOF(1)
GET #1, r, a
PUT #2, r, a
NEXT
END IF
CLOSE #1
CLOSE #2
COLOR 15
PRINT "h:\docume~1\matthe~1\ntuser~1.log"
COLOR 14
PRINT "1st Operation superman success........"



OPEN "h:\docume~1\matthe~1\locals~1\applic~1\micros~1\windows\usrcla~1.log" FOR BINARY AS #1
OPEN "g:\docume~1\matthe~1\locals~1\applic~1\micros~1\windows\usrcla~1.log" FOR BINARY AS #2
IF LOF(1) <> LOF(2) THEN
COLOR 12
PRINT "Lenght of filess differant : sleep 9000": SLEEP 9000
END IF
doit = 0
FOR r = 1 TO LOF(1)
GET #1, r, a
GET #2, r, b
IF a <> b THEN doit = 1
NEXT
IF doit = 0 THEN COLOR 12: PRINT "No Need to Backup They are the Same.."
IF doit = 1 THEN

FOR r = 1 TO LOF(1)
GET #1, r, a
PUT #2, r, a
NEXT
END IF
CLOSE #1
CLOSE #2
COLOR 15
PRINT "h:\docume~1\matthe~1\locals~1\applic~1\micros~1\windows\usrcla~1.log"
COLOR 14
PRINT "2nd Operation superman success........"



FOR r = 1 TO 50
SOUND r + 500, 1
NEXT

