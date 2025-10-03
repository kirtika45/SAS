/* introduction to sas */
/* reading data */
/* 1.  */
data question1;
input ID Family Name$ Score Age;
datalines;
1 52 Peter 77.2 52
2 53 George 68.4 24
3 51 Anna 23.0 13
4 52 Tom 78.1 31
5 53 William 18.2 17
;
run;

/* a. */
proc print data = question1;
title 'Apptitude Test Results';
run;

/* b. */
proc print data = question1;
var ID Name;
title 'Participants';
run;

/* c. */
proc sort data = question1;
by score;
run;

/* d. */
proc sort data = question1;
by descending score;
run;

/* 2. */
data question2;
infile "/home/u64294500/sasuser.v94/Data/data.csv" delimiter = ',' firstobs=2;
input SUBJECT DOSE REACT LIVER_WT SPLEEN;
run;

/* a. */

/* b. */
proc print data = question2 (firstobs=2);
run;

/* c. */
proc print data = question2 (obs = 5);
title 'Spleen Activity';
run;



