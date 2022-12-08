SABINS to CCD Crosswalk Files

This directory contains different versions of a table that links school
attendance areas to schools in the National Center for Education Statistics'
Common Core of Data. 

This directory contains six files:

Three syntax files:
Import NS_SABINS_CCD_1112_XX.do    --- Stata syntax file
Import NS_SABINS_CCD_1112_XX.sas   --- SAS syntax file
Import NS_SABINS_CCD_1112_XX.sps   --- SPSS syntax file

Three data files:
NS_SABINS_CCD_1112_XX.csv - Comma-separated value file for SAS/SPSS syntax files
NS_SABINS_CCD_1112_XX.dta - Stata data file for Stata syntax files
NS_SABINS_CCD_1112_XX.dbf - dBase file for use in a GIS

where XX is the grade level. 

The NS_SABINS_CCD_1112_XX.csv file was designed for use in statistical packages
and does not contain a header row. The NS_SABINS_CCD_0910_XX.dbf has a header
row.

The data files each contain three columns. The SABINSID column contains the 
codes that uniquely identify every school attendance boundary in the 
database. The GISJOIN column contains the codes that also uniquely identify 
every school attendance boundary in the database. GISJOIN can be linked to 
census data extracted from the SABINS data finder application. The NCESSCH 
column contains the codes that uniquely identify schools in the NCES Common
Core of Data. You can link NCESSCH to the Common Core of Data file available
on the SABINS website.

This table depicts a many-to-many relationship between school attendance 
boundaries and schools in the Common Core of Data. Some school attendance
boundaries are served by multiple schools, and some schools serve multiple
school attendance boundaries. For more information on using the 
NS_SABINS_CCD tables, please consult the Using SABINS and CCD guide on the 
User Resources >> User's Guide portion of the SABINS website.


