**Code Book **
--------------

<h3>Introduction</h3>
This document defines the variables used in the result set associated with the output of the run_analysis.R script.

<h3>Variables</h3>
There are four variables in the tidy data set that the script in this repository creates.  They are:
<blockquote>
<table>
	<tr>
		<td>Subject</td>
		<td>The id number (1-30) of the test subject.</td>
	</tr>
	<tr>
		<td>Activity</td>
			<td>The name of the activity (there are six of them) associated with a particular observation.	</td>
	</tr>
	</tr>
	<tr>
		<td>Measurement</td>
		<td>A particular feature of the activity being measured.</td>
	</tr>
	<tr>
		<td>Mean</td>
		<td>The mean of the Measurement for the Subject/Activity pair.  In the original source data, the means for each measure were normalized and bounded within [-1,1].  For each Subject/Activity pair in this data set, the mean is the mean of the normalized source data. </td>
	</tr>
</table>
</blockquote>

The list below provides the unique values for the Measurement variable.  Each unique value represents a particular feature of the action being measured.  Per the information provided in features_info.txt from the original materials, the names of the Measurement values listed below incorporate the following naming convention:

 - a "t" as the first character indicates a time measurement 
 - an "f" as the first character indicates a frequency domain signal
 - "Acc" in the name refers to a reading from the accelerometer
 - "Gyro" in the name refers to a reading from the gyroscope
 - "mag"  in the name refers to the magnitude of three-dimensional signals that were calculated using the Euclidean norm.
 - "body" in the name refers to a body accelleration signal
 - "gravity" in the name refers to a gravity accelleration signal
 - "mean()" at the end of the name refers to a mean measurement
 - "std()" at the end of the name refers to a standard deviation measurement

Other information concerning the measurement values can be found in the features_info.txt file from the original materials.  NOTE: I elected to refrain from changing the names of these measurements from their original form, instead electing to provide the key above to allow readers to decode the meaning of the names.  The alternative -- changing the names to include more verbose meanings, such as changing "Acc" to "accelerometer" or "mag" to "magnitude" -- would seem to me to make the variable names unwieldy without any real improvement in understandability.  See the discussion on the Coursera forums [here](https://class.coursera.org/getdata-031/forum/thread?thread_id=203) for more on this issue.

<blockquote>
1 tBodyAcc-mean()-X<br>
2 tBodyAcc-mean()-Y<br>
3 tBodyAcc-mean()-Z<br>
4 tBodyAcc-std()-X<br>
5 tBodyAcc-std()-Y<br>
6 tBodyAcc-std()-Z<br>
7 tGravityAcc-mean()-X<br>
8 tGravityAcc-mean()-Y<br>
9 tGravityAcc-mean()-Z<br>
10 tGravityAcc-std()-X<br>
11 tGravityAcc-std()-Y<br>
12 tGravityAcc-std()-Z<br>
13 tBodyAccJerk-mean()-X<br>
14 tBodyAccJerk-mean()-Y<br>
15 tBodyAccJerk-mean()-Z<br>
16 tBodyAccJerk-std()-X<br>
17 tBodyAccJerk-std()-Y<br>
18 tBodyAccJerk-std()-Z<br>
19 tBodyGyro-mean()-X<br>
20 tBodyGyro-mean()-Y<br>
21 tBodyGyro-mean()-Z<br>
22 tBodyGyro-std()-X<br>
23 tBodyGyro-std()-Y<br>
24 tBodyGyro-std()-Z<br>
25 tBodyGyroJerk-mean()-X<br>
26 tBodyGyroJerk-mean()-Y<br>
27 tBodyGyroJerk-mean()-Z<br>
28 tBodyGyroJerk-std()-X<br>
29 tBodyGyroJerk-std()-Y<br>
30 tBodyGyroJerk-std()-Z<br>
31 tBodyAccMag-mean()<br>
32 tBodyAccMag-std()<br>
33 tGravityAccMag-mean()<br>
34 tGravityAccMag-std()<br>
35 tBodyAccJerkMag-mean()<br>
36 tBodyAccJerkMag-std()<br>
37 tBodyGyroMag-mean()<br>
38 tBodyGyroMag-std()<br>
39 tBodyGyroJerkMag-mean()<br>
40 tBodyGyroJerkMag-std()<br>
41 fBodyAcc-mean()-X<br>
42 fBodyAcc-mean()-Y<br>
43 fBodyAcc-mean()-Z<br>
44 fBodyAcc-std()-X<br>
45 fBodyAcc-std()-Y<br>
46 fBodyAcc-std()-Z<br>
47 fBodyAccJerk-mean()-X<br>
48 fBodyAccJerk-mean()-Y<br>
49 fBodyAccJerk-mean()-Z<br>
50 fBodyAccJerk-std()-X<br>
51 fBodyAccJerk-std()-Y<br>
52 fBodyAccJerk-std()-Z<br>
53 fBodyGyro-mean()-X<br>
54 fBodyGyro-mean()-Y<br>
55 fBodyGyro-mean()-Z<br>
56 fBodyGyro-std()-X<br>
57 fBodyGyro-std()-Y<br>
58 fBodyGyro-std()-Z<br>
59 fBodyAccMag-mean()<br>
60 fBodyAccMag-std()<br>
61 fBodyBodyAccJerkMag-mean()<br>
62 fBodyBodyAccJerkMag-std()<br>
63 fBodyBodyGyroMag-mean()<br>
64 fBodyBodyGyroMag-std()<br>
65 fBodyBodyGyroJerkMag-mean()<br>
66 fBodyBodyGyroJerkMag-std()<br>
</blockquote>