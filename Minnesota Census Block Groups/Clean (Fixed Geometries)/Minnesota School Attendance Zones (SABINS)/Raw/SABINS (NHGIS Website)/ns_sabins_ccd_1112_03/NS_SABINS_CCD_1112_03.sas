***********************************************************************; 
***  THIS SAS PROGRAM IMPORTS THE CROSSWALK TO BE USED FOR JOINING  ***; 
***  THE COMMON CORE OF DATA (CCD) CREATED BY THE NATIONAL CENTER	***;
***	 FOR EDUCATION STATISTICS WITH SCHOOL ATTENDANCE BOUNDARY 		***;
***	 (SABINS) DATA.													***;
***	 																***;
***	 THIS CODE WAS WRITTEN BY JULIA SHUMWAY ON AUGUST 18, 2011 		***;
***	 FOR THE SCHOOL ATTENDANCE BOUNDARY INFORMATION SYSTEM (SABINS)	***;
***	 PROGRAM AT THE UNIVERSITY OF MINNESOTA.						***;
***																	***; 
***                                                                 ***; 
***  ANY QUESTIONS ABOUT THIS PROGRAM, OR THE REPORT(or DATA FILE)  ***; 
***  IT PRODUCES, SHOULD BE REFERRED TO (DAVID VAN RIPER),		    ***; 
***  PHONE (612-625-7375), EMAIL (vanr0033@umn.edu)                 ***; 
***********************************************************************; 

*Change the path to indicate where you have saved the CCD Data. Then run this entire program;


data WORK.ccd00;
	infile "C:\WorkSpace\SABINS\SAS\CCD Tables\NS_SABINS_CCD_1112_00.CSV" MISSOVER DSD lrecl=32767;
	informat OBJECTID	 5.
		 GISJOIN	$28.
		 NCESSCH 	$16.
		 SABINSID 	$27.
			 ;
	format	OBJECTID	 5.  
		GISJOIN		$28.
		NCESSCH		$16. 
		SABINSID	$27. 
			 ;
	input OBJECTID 
              GISJOIN 	$
	      NCESSCH 	$
	      SABINSID	$
	         ;
	RUN;
