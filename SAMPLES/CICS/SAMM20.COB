      * SYMBOLIC MAP of samm20 Created by CACXBMS Version 6.0.27
       01  SAMM20I.
	   02  FILLER				      PIC X(12).
	   02  M20DATEL 			      PIC S9(4) COMP.
	   02  M20DATEF 			      PIC X.
	   02  FILLER REDEFINES M20DATEF.
	       03  M20DATEA			      PIC X.
	   02  FILLER				      PIC XXXX.
	   02  M20DATEI 			      PIC X(010).
	   02  CCODEL				      PIC S9(4) COMP.
	   02  CCODEF				      PIC X.
	   02  FILLER REDEFINES CCODEF.
	       03  CCODEA			      PIC X.
	   02  FILLER				      PIC XXXX.
	   02  CCODEI				      PIC X(004).
	   02  SHRTNML				      PIC S9(4) COMP.
	   02  SHRTNMF				      PIC X.
	   02  FILLER REDEFINES SHRTNMF.
	       03  SHRTNMA			      PIC X.
	   02  FILLER				      PIC XXXX.
	   02  SHRTNMI				      PIC X(010).
	   02  CNAMEL				      PIC S9(4) COMP.
	   02  CNAMEF				      PIC X.
	   02  FILLER REDEFINES CNAMEF.
	       03  CNAMEA			      PIC X.
	   02  FILLER				      PIC XXXX.
	   02  CNAMEI				      PIC X(050).
	   02  PCONTCTL 			      PIC S9(4) COMP.
	   02  PCONTCTF 			      PIC X.
	   02  FILLER REDEFINES PCONTCTF.
	       03  PCONTCTA			      PIC X.
	   02  FILLER				      PIC XXXX.
	   02  PCONTCTI 			      PIC X(030).
	   02  PPHONEL				      PIC S9(4) COMP.
	   02  PPHONEF				      PIC X.
	   02  FILLER REDEFINES PPHONEF.
	       03  PPHONEA			      PIC X.
	   02  FILLER				      PIC XXXX.
	   02  PPHONEI				      PIC X(024).
	   02  PFAXL				      PIC S9(4) COMP.
	   02  PFAXF				      PIC X.
	   02  FILLER REDEFINES PFAXF.
	       03  PFAXA			      PIC X.
	   02  FILLER				      PIC XXXX.
	   02  PFAXI				      PIC X(024).
	   02  ADDR1L				      PIC S9(4) COMP.
	   02  ADDR1F				      PIC X.
	   02  FILLER REDEFINES ADDR1F.
	       03  ADDR1A			      PIC X.
	   02  FILLER				      PIC XXXX.
	   02  ADDR1I				      PIC X(050).
	   02  ADDR2L				      PIC S9(4) COMP.
	   02  ADDR2F				      PIC X.
	   02  FILLER REDEFINES ADDR2F.
	       03  ADDR2A			      PIC X.
	   02  FILLER				      PIC XXXX.
	   02  ADDR2I				      PIC X(050).
	   02  ADDR3L				      PIC S9(4) COMP.
	   02  ADDR3F				      PIC X.
	   02  FILLER REDEFINES ADDR3F.
	       03  ADDR3A			      PIC X.
	   02  FILLER				      PIC XXXX.
	   02  ADDR3I				      PIC X(050).
	   02  ADDR4L				      PIC S9(4) COMP.
	   02  ADDR4F				      PIC X.
	   02  FILLER REDEFINES ADDR4F.
	       03  ADDR4A			      PIC X.
	   02  FILLER				      PIC XXXX.
	   02  ADDR4I				      PIC X(050).
	   02  POSTL				      PIC S9(4) COMP.
	   02  POSTF				      PIC X.
	   02  FILLER REDEFINES POSTF.
	       03  POSTA			      PIC X.
	   02  FILLER				      PIC XXXX.
	   02  POSTI				      PIC X(012).
	   02  CCMNTL				      PIC S9(4) COMP.
	   02  CCMNTF				      PIC X.
	   02  FILLER REDEFINES CCMNTF.
	       03  CCMNTA			      PIC X.
	   02  FILLER				      PIC XXXX.
	   02  CCMNTI				      PIC X(060).
	   02  MSGL				      PIC S9(4) COMP.
	   02  MSGF				      PIC X.
	   02  FILLER REDEFINES MSGF.
	       03  MSGA 			      PIC X.
	   02  FILLER				      PIC XXXX.
	   02  MSGI				      PIC X(079).
       01  SAMM20O REDEFINES SAMM20I.
	   02  FILLER				      PIC X(12).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  M20DATEC 			      PIC X.
	   02  M20DATEP 			      PIC X.
	   02  M20DATEH 			      PIC X.
	   02  M20DATEV 			      PIC X.
	   02  M20DATEO 			      PIC X(010).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  CCODEC				      PIC X.
	   02  CCODEP				      PIC X.
	   02  CCODEH				      PIC X.
	   02  CCODEV				      PIC X.
	   02  CCODEO				      PIC X(004).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  SHRTNMC				      PIC X.
	   02  SHRTNMP				      PIC X.
	   02  SHRTNMH				      PIC X.
	   02  SHRTNMV				      PIC X.
	   02  SHRTNMO				      PIC X(010).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  CNAMEC				      PIC X.
	   02  CNAMEP				      PIC X.
	   02  CNAMEH				      PIC X.
	   02  CNAMEV				      PIC X.
	   02  CNAMEO				      PIC X(050).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  PCONTCTC 			      PIC X.
	   02  PCONTCTP 			      PIC X.
	   02  PCONTCTH 			      PIC X.
	   02  PCONTCTV 			      PIC X.
	   02  PCONTCTO 			      PIC X(030).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  PPHONEC				      PIC X.
	   02  PPHONEP				      PIC X.
	   02  PPHONEH				      PIC X.
	   02  PPHONEV				      PIC X.
	   02  PPHONEO				      PIC X(024).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  PFAXC				      PIC X.
	   02  PFAXP				      PIC X.
	   02  PFAXH				      PIC X.
	   02  PFAXV				      PIC X.
	   02  PFAXO				      PIC X(024).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  ADDR1C				      PIC X.
	   02  ADDR1P				      PIC X.
	   02  ADDR1H				      PIC X.
	   02  ADDR1V				      PIC X.
	   02  ADDR1O				      PIC X(050).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  ADDR2C				      PIC X.
	   02  ADDR2P				      PIC X.
	   02  ADDR2H				      PIC X.
	   02  ADDR2V				      PIC X.
	   02  ADDR2O				      PIC X(050).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  ADDR3C				      PIC X.
	   02  ADDR3P				      PIC X.
	   02  ADDR3H				      PIC X.
	   02  ADDR3V				      PIC X.
	   02  ADDR3O				      PIC X(050).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  ADDR4C				      PIC X.
	   02  ADDR4P				      PIC X.
	   02  ADDR4H				      PIC X.
	   02  ADDR4V				      PIC X.
	   02  ADDR4O				      PIC X(050).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  POSTC				      PIC X.
	   02  POSTP				      PIC X.
	   02  POSTH				      PIC X.
	   02  POSTV				      PIC X.
	   02  POSTO				      PIC X(012).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  CCMNTC				      PIC X.
	   02  CCMNTP				      PIC X.
	   02  CCMNTH				      PIC X.
	   02  CCMNTV				      PIC X.
	   02  CCMNTO				      PIC X(060).
	   02  FILLER				      PIC XX.
	   02  FILLER				      PIC X.
	   02  MSGC				      PIC X.
	   02  MSGP				      PIC X.
	   02  MSGH				      PIC X.
	   02  MSGV				      PIC X.
	   02  MSGO				      PIC X(079).
