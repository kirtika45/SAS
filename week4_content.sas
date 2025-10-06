/* selecting the data and naming the datatable */
data mtcars;
infile "/home/u64294500/sasuser.v94/Data/mtcars.csv" delimiter = ",";
input car$ mpg cyl disp hp drat wt qsec vs am gear carb;
run;

/* using contents to summarise the datatable */
proc contents data = mtcars;
run;

/* using order to keep it in the same order */
proc contents data = mtcars order = varnum;
run;

/* to summarise the variables inside the datatable seperately, there are two ways: */
/* one is - if the variable is qualitative in nature, then proc freq is used */
/* the other is - if the variable is quantitative in nature, then proc means is used */

proc means data = mtcars;
run;

proc means data = mtcars maxdec=2;
run;

proc means data = mtcars;
var mpg;
run;

proc freq data = mtcars;
table car;
run;

/* ttest */

proc ttest data = mtcars;
run;

proc ttest data = mtcars;
var mpg;
run;

proc ttest data = mtcars h0 = 18;
var mpg;
run;

proc ttest data = mtcars;
var mpg;
class am;
run;


data lipids;
input exposed$ responses$;
datalines;
high no
high no
normal yes
normal no
normal no
; 
run;

/* table with two categorical variable - contingency table */
proc freq data = lipids;
table exposed;
run;


proc freq data = lipids;
table exposed*responses;
run;

proc freq data = lipids;
table exposed*responses / nocol nocum nofreq norow;
run;

proc means data = mtcars kurtosis mean median;
var mpg;
run;

/* lot of stats for one variable */
proc univariate data = mtcars;
var mpg;
run;

proc univariate data = mtcars mu0=18 normaltest plot;
var mpg;
run;

/* hypothesis testing  */
proc ttest data = mtcars alpha=0.01;
var mpg;
class am;
run;

/* advanced tests */
proc reg data = mtcars;
model mpg=am wt cyl;
run;
 





