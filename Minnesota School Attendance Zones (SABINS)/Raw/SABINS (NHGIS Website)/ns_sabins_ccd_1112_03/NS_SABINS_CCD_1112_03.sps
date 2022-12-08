**********************************************************************************************************************; 
***  THIS SPSS PROGRAM IMPORTS THE CROSSWALK TO BE USED FOR JOINING	***; 
***  THE COMMON CORE OF DATA (CCD) CREATED BY THE NATIONAL CENTER		***;
***  FOR EDUCATION STATISTICS WITH SCHOOL ATTENDANCE BOUNDARY 		***;
***  (SABINS) DATA.							***;
***								***;
***  IT THEN MERGES THAT CROSSWALK FILE WITH THE 	CCD DATA FILE		***;
***								***;
***  THIS CODE WAS WRITTEN BY JULIA SHUMWAY ON JULY 25, 2011 		***;
***  FOR THE SCHOOL ATTENDANCE BOUNDARY INFORMATION SYSTEM (SABINS)	***;
***  PROGRAM AT THE UNIVERSITY OF MINNESOTA.				***;
***								***; 
***                                                               					***; 
***  ANY QUESTIONS ABOUT THIS PROGRAM, OR THE REPORT(or DATA FILE) 		***; 
***  IT PRODUCES, SHOULD BE REFERRED TO (DAVID VAN RIPER),		    	***; 
***  PHONE (612-625-7375), EMAIL (vanr0033@umn.edu)                 			***; 
**********************************************************************************************************************; 

*Important: Change the file path to wherever you have saved the CCD-SABINS crosswalk
 data table.

GET DATA 
  /TYPE=TXT 
  /FILE="G:\labpcs\data_projects\SABINS\SABINS2\blockRectify\br_march_8\NS_SABINS_CCD_1112_00.csv" 
  /DELCASE=LINE 
  /DELIMITERS="," 
  /ARRANGEMENT=DELIMITED 
  /FIRSTCASE=1 
  /IMPORTCASE=ALL 
  /VARIABLES= 
  OBJECTID  F5.0
  GISJOIN A28
  NCESSCH A12  
  SABINSID A27 
. 
variable labels
NCESSCH "Unique Public School ID (LEAID + SCHNO)"
SABINSID "School Boundary ID"
.
CACHE. 
EXECUTE. 