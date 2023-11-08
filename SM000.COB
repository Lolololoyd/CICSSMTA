       CBL XOPTS(COBOL2)
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SM000.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.    IBM-PC.
       OBJECT-COMPUTER.    IBM-PC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  WS-REC-LENGTH                 PIC S9(4) COMP VALUE +227. 
       01  WS-RECB-LENGTH                PIC S9(4) COMP VALUE +20. 
       01  WS-KEY-LENGTH                 PIC S9(4) COMP VALUE +6. 
       01  WS-KEYB-LENGTH                PIC S9(4) COMP VALUE +8. 
       01  WS-KEYC-LENGTH                PIC S9(4) COMP VALUE +9.
       01  WS-ERR-MSG			 PIC X(50).
       01  WS-PGM		         PIC X(6).
       01  WS-KEY                        PIC X(06) VALUE '000001'.
       01  WS-TEMPB.                       
           05 WS-TEMPB7                  PIC X(07) VALUE LOW-VALUES.
           05 FILLER REDEFINES WS-TEMPB7.
              10 FILLER                  PIC X(04).
              10 WS-TEMPB3               PIC 9(03). 
           05 WS-TEMPB1                  PIC X(01) VALUE HIGH-VALUES. 
       01  WS-KEYB.                       
           05 WS-KEYB7                   PIC X(07) VALUE LOW-VALUES.
           05 FILLER REDEFINES WS-KEYB7.
              10 FILLER                  PIC X(04).
              10 WS-KEYB3                PIC 9(03). 
           05 WS-KEYB1                   PIC X(01) VALUE HIGH-VALUES.
       01  WS-KEY-NUM REDEFINES WS-KEY   PIC 9(06).                
       01  WS-KEY2                       PIC X(08) VALUE 'ISCB119 '.
       01  WS-KEY3                       PIC X(09) VALUE '000002003'.
       01  WS-KEY3B.
           05 FILLER                     PIC X(06) VALUE '000006'.
           05 FILLER                     PIC X(03) VALUE HIGH-VALUES.
       01  WS-KEY3C                      PIC X(09).
       01  WS-REC2                       PIC X(20).  
       01  WS-RECB                       PIC X(20).
       01  WS-REC3                       PIC X(89).   
       01  WS-FOUND                      PIC X(1).
       01  WS-FIELDS. 
           05  WS-STD-KEY-LEN    PIC S9(4) COMP VALUE 8.
           05  WS-REC.
               10  WS-USERID.
                   15  WS-USERID7      PIC X(7).
                   15  FILLER          PIC X(1).
               10  WS-TYPE.
                   15  WS-REQUESTOR    PIC X.
                   15  WS-ADMIN        PIC X.  
                   15  WS-APPROVER     PIC X.
                   15  WS-SERVICE      PIC X.
               10  WS-UPDATEDBY        PIC X(8).
       01  WS-CURRENT-MAP     VALUE 'SW00S'         PIC X(7).
       01  WS-TIME            PIC 9(15) COMP-3.
       01  WS-DATE            PIC 9(7).
       01  WS-DATE-X REDEFINES WS-DATE PIC X(7).
       01  WS-LENGTH          PIC S9(4) COMP.
       01  WS-END             PIC X(14) VALUE 'END PROCESSING'.
       01  WS-INVALID         PIC X(14) VALUE 'INVALID ACCESS'.
       01  WS-INVALID-USER    PIC X(20) VALUE 'INVALID USER ACCESS'.
       01  WS-COMMAREA.
           05 WS-PROG-STATE  PIC X(10).
           COPY SW00S.
           COPY DFHAID.
           COPY DFHBMSCA.
       LINKAGE SECTION.
       01  DFHCOMMAREA        PIC X(21).
       PROCEDURE DIVISION.
       100-PROCESS.
           EXEC CICS IGNORE CONDITION
                     ERROR
           END-EXEC
           PERFORM 300-SEACHUSER
           IF EIBTRNID = 'SM00'
               IF EIBCALEN NOT = +0
                  PERFORM 200-REC-MAP
               ELSE
                   MOVE 'ENTER OPTION AND PRESS ENTER' TO ERRMSGO 
                   PERFORM 110-NEW-MAP
               END-IF
           ELSE    
               EXEC CICS SEND TEXT
                    FROM (WS-INVALID)
                    LENGTH (+15)
                    ERASE
               END-EXEC
               EXEC CICS RETURN
               END-EXEC
           END-IF.    
       100-EXIT.
           EXIT.
       110-NEW-MAP.
           MOVE EIBDATE TO WS-DATE
           MOVE WS-DATE-X TO DATEO
           EXEC CICS ASKTIME
               ABSTIME (WS-TIME)
           END-EXEC
           EXEC CICS FORMATTIME
               ABSTIME (WS-TIME)
               DATESEP ('-')
               MMDDYY (DATEO)
               TIME (TIMEO)
               TIMESEP (':')
           END-EXEC
           MOVE DFHBMASB TO TIMEA
           MOVE DFHBMASB TO DATEA
           MOVE DFHUNIMD TO OPTIONA
           MOVE LENGTH OF SW00MO TO WS-LENGTH
           EXEC CICS
               SEND MAP('SW00M')
               MAPSET(WS-CURRENT-MAP)
               FROM(SW00MO)
               CURSOR(1322)
               LENGTH(WS-LENGTH)
               ERASE
           END-EXEC
           EXEC CICS RETURN
               TRANSID('SM00')
               COMMAREA(WS-COMMAREA)
           END-EXEC.
       110-EXIT.
           EXIT.
       200-REC-MAP.
           EXEC CICS
               RECEIVE MAP('SW00M')
               MAPSET('SW00S')
               INTO (SW00MI)
           END-EXEC
           PERFORM 210-CHECK-AID.
       200-EXIT.
           EXIT.
       210-CHECK-AID.
           IF EIBAID = DFHPF3
               EXEC CICS SEND TEXT
                    FROM (WS-END)
                    LENGTH (+15)
                    ERASE
               END-EXEC
               EXEC CICS RETURN
           END-EXEC
           ELSE IF EIBAID = DFHENTER
               EVALUATE OPTIONI
               WHEN 1
               EXEC CICS LINK 
                   PROGRAM('SM0001') 
                   COMMAREA(DFHCOMMAREA)
                   LENGTH (21) 
                   END-EXEC
               MOVE DFHCOMMAREA TO ERRMSGO
               WHEN 2
               EXEC CICS LINK 
                   PROGRAM('SM0002') 
                   COMMAREA(DFHCOMMAREA)
                   LENGTH (21) 
                   END-EXEC
               MOVE DFHCOMMAREA TO ERRMSGO
               WHEN 3
               EXEC CICS LINK 
                   PROGRAM('SM0003') 
                   COMMAREA(DFHCOMMAREA)
                   LENGTH (21) 
                   END-EXEC
               MOVE DFHCOMMAREA TO ERRMSGO
               WHEN 4
               EXEC CICS LINK 
                   PROGRAM('SM0004') 
                   COMMAREA(DFHCOMMAREA)
                   LENGTH (21) 
                   END-EXEC
               MOVE DFHCOMMAREA TO ERRMSGO
               WHEN SPACE
               MOVE 'Option Required' TO ERRMSGO 
               MOVE DFHBMBRY TO OPTIONA
               WHEN OTHER
               MOVE 'Option Invalid value' TO ERRMSGO
               MOVE DFHBMBRY TO OPTIONA
               END-EVALUATE
           ELSE 
               MOVE 'Invalid PFKey Pressed' TO ERRMSGO
           END-IF.
           PERFORM 110-NEW-MAP.
       210-EXIT.
           EXIT.

       300-SEACHUSER.

           EXEC CICS ASSIGN 
               USERID(WS-USERID)
           END-EXEC
           EXEC CICS 
                READ FILE('uaf00001')
                INTO (WS-REC)
                RIDFLD (WS-USERID)
                KEYLENGTH (WS-STD-KEY-LEN)
                EQUAL
           END-EXEC
           IF EIBRESP = DFHRESP(NOTFND)
               EXEC CICS SEND TEXT
                    FROM (WS-INVALID-USER)
                    LENGTH (+20)
                    ERASE
               END-EXEC
               EXEC CICS RETURN
               END-EXEC
           END-IF.
      *    PERFORM 360-WRITE-REC.  
      *    PERFORM 350-SAMPLE-BROWSE.

       300-EXIT.
           EXIT.  

       350-SAMPLE-BROWSE.

           EXEC CICS STARTBR FILE('uaf00001')
                RIDFLD (WS-KEYB)
                GTEQ
           END-EXEC.
           PERFORM 10 TIMES
               EXEC CICS READNEXT FILE('uaf00001')
                         INTO (WS-REC)
                         RIDFLD (WS-KEYB)
               END-EXEC
               MOVE WS-USERID7 TO WS-KEYB7
               MOVE HIGH-VALUES TO WS-KEYB1
           END-PERFORM
           PERFORM 10 TIMES
               MOVE WS-USERID7 TO WS-KEYB7
               MOVE WS-KEYB7 TO WS-TEMPB7
               MOVE 'N' TO WS-FOUND 
               PERFORM UNTIL WS-FOUND = 'Y' 
                  SUBTRACT 1 FROM  WS-TEMPB3 
                  MOVE WS-TEMPB3 TO WS-KEYB3
                  MOVE LOW-VALUES TO WS-KEYB1
                  EXEC CICS READPREV FILE('uaf00001')
                         INTO (WS-REC)
                         RIDFLD (WS-KEYB)
                  END-EXEC
                  IF WS-KEYB7 = WS-TEMPB7
                     MOVE 'Y' TO WS-FOUND
                  END-IF 
               END-PERFORM
           END-PERFORM
           EXEC CICS ENDBR  
                FILE('UAF0001')
           END-EXEC.

       350-EXIT.
           EXIT.

       360-WRITE-REC.
           
           MOVE 'ISCB888 ' TO WS-USERID
           EXEC CICS
               WRITE FILE ('UAF00001')
               FROM (WS-REC)
               RIDFLD (WS-USERID)
           END-EXEC.
           IF EIBRESP = DFHRESP(DUPREC)
               EXEC CICS 
                    READ FILE('uaf00001')
                    INTO (WS-REC)
                    RIDFLD (WS-USERID)
                    KEYLENGTH (WS-STD-KEY-LEN)
                    EQUAL
                    UPDATE
               END-EXEC
               MOVE SPACES TO WS-TYPE
           EXEC CICS
               REWRITE FILE ('UAF00001')
               FROM (WS-REC)
           END-EXEC.
       360-EXIT.
           EXIT. 
         
                

