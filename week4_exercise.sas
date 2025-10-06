/* week 4 exercise */

/* 1.  */
data data;
infile '/home/u64294500/data.csv' delimiter=',' firstobs=2;
input SUBJECT DOSE REACT LIVER_WT SPLEEN; 
run;

/* a. */
proc contents data = data;
run;

/* b. */
proc univariate data = data plot normal ;
var react liver_wt spleen;
run;

proc univariate data = data plot normal ;
var react liver_wt spleen;
by dose;
run;

/* i */
proc means data = data stderr;
var liver_wt;
run;

proc means data = data stderr;
var liver_wt;
by dose;
run;

/* ii */
proc means data = data skewness;
var react;
by dose;
run;

/* iii */
proc means data = data;
var spleen;
by dose;
run;

/* c. */
proc ttest data = data alpha = 0.05;
var react;
class dose;
run;
