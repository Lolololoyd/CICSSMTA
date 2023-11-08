      * SYMBOLIC MAP of sw00s Created by CACXBMS Version 6.0.27
       01  SW00MI.
	   02  FILLER				      PIC X(12).
	   02  OPTIONL				      PIC S9(4) COMP.
	   02  OPTIONF				      PIC X.
	   02  FILLER REDEFINES OPTIONF.
	       03  OPTIONA			      PIC X.
	   02  OPTIONI				      PIC X(001).
	   02  TICKETL				      PIC S9(4) COMP.
	   02  TICKETF				      PIC X.
	   02  FILLER REDEFINES TICKETF.
	       03  TICKETA			      PIC X.
	   02  TICKETI				      PIC X(006).
	   02  ERRMSGL				      PIC S9(4) COMP.
	   02  ERRMSGF				      PIC X.
	   02  FILLER REDEFINES ERRMSGF.
	       03  ERRMSGA			      PIC X.
	   02  ERRMSGI				      PIC X(071).
	   02  DATEL				      PIC S9(4) COMP.
	   02  DATEF				      PIC X.
	   02  FILLER REDEFINES DATEF.
	       03  DATEA			      PIC X.
	   02  DATEI				      PIC X(010).
	   02  TIMEL				      PIC S9(4) COMP.
	   02  TIMEF				      PIC X.
	   02  FILLER REDEFINES TIMEF.
	       03  TIMEA			      PIC X.
	   02  TIMEI				      PIC X(008).
       01  SW00MO REDEFINES SW00MI.
	   02  FILLER				      PIC X(12).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  OPTIONO				      PIC X(001).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  TICKETO				      PIC X(006).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  ERRMSGO				      PIC X(071).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  DATEO				      PIC X(010).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  TIMEO				      PIC X(008).
       01  SW00LI.
	   02  FILLER				      PIC X(12).
	   02  OPTION2L 			      PIC S9(4) COMP.
	   02  OPTION2F 			      PIC X.
	   02  FILLER REDEFINES OPTION2F.
	       03  OPTION2A			      PIC X.
	   02  OPTION2I 			      PIC X(001).
	   02  TICKET2L 			      PIC S9(4) COMP.
	   02  TICKET2F 			      PIC X.
	   02  FILLER REDEFINES TICKET2F.
	       03  TICKET2A			      PIC X.
	   02  TICKET2I 			      PIC X(006).
	   02  ERRMSG2L 			      PIC S9(4) COMP.
	   02  ERRMSG2F 			      PIC X.
	   02  FILLER REDEFINES ERRMSG2F.
	       03  ERRMSG2A			      PIC X.
	   02  ERRMSG2I 			      PIC X(071).
	   02  DATE2L				      PIC S9(4) COMP.
	   02  DATE2F				      PIC X.
	   02  FILLER REDEFINES DATE2F.
	       03  DATE2A			      PIC X.
	   02  DATE2I				      PIC X(010).
	   02  TIME2L				      PIC S9(4) COMP.
	   02  TIME2F				      PIC X.
	   02  FILLER REDEFINES TIME2F.
	       03  TIME2A			      PIC X.
	   02  TIME2I				      PIC X(008).
       01  SW00LO REDEFINES SW00LI.
	   02  FILLER				      PIC X(12).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  OPTION2O 			      PIC X(001).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  TICKET2O 			      PIC X(006).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  ERRMSG2O 			      PIC X(071).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  DATE2O				      PIC X(010).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  TIME2O				      PIC X(008).
