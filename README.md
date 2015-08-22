<h1>1.  Introduction</h1>
This repository contains the work I am submitting in connection with the Getting and Cleaning Data Course Project.  The course is offered through John Hopkins University on the Coursera learning platform.  More information about Coursera and this course is available at [www.coursera.com](http:www.coursera.com).

<h1>2.  Background </h1>
The original source data for this assignment (referred to herein as "source data") comes from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).  In brief, the data represent readings taken from the accellerometer of a Samsung Galaxy S smartphone worn by study participants while performing various activities.  Additional background on the study can be found at [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).<p>  

For this assignment, students were asked to write an R script that:
> * 1. Merges the training and the test sets to create one data set.
> * 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
> * 3. Uses descriptive activity names to name the activities in the data set
> * 4. Appropriately labels the data set with descriptive variable names. 
> * 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.<br>

In addition, students were asked to submit a codebook, named CodeBook.md, as well as this README.md document.

<h1>3.  Contents of this Repository</h1>
* run_analysis.R - the R script that generates the required output in tidy data format
* CodeBook.md - the codebook describing the variables in the tidy data set
* README.md - this document


<h1>4. Processing Steps</h1>
The original data consisted of several files, some containing data, and others containing descriptions of the data.  Each file is described in detail in the README.txt file of the source data.  Steps associated with completing this assignment were as follows:

<h3>Step 1</h3>
 The script merges the training and the test sets to create one data set by building a dataframe from the training data, and building a separate dataframe from the test data. Each of these two data frames combines the data from three files (the values from the measurments of the activities, the subject performing the activity, and the type of activity).  The script then merges the to dataframes into one dataframe.
 
 <h3>Step 2</h3>
The script extracts the variables related to mean and standard deviation for each measurement.  As noted in several discussion forums (see, for example, the the point made by class TA David Hood in the section on "what columns are measurements on the mean and standard deviation" found [here](http://test.com) ), the instructions were not clear as to which variable names actually referred to mean or standard deviation.  I chose to simply subset the dataframe to those variables that contained either the string "mean" or "std", on the theory that being overinclusive in my selection would be safer than being underinclusive, if this assignment were being carried out in practice.

<h3>Step 3</h3>
The assignment instructions ask students to use descriptive activity names to name the activities in the data set.  
<h1>5.  Instructions </h2>
Run the file run_analysis.R, with the working directory in your R environment set to the "UCI HAR Dataset" directory that is unzipped from the zip of the source file, to generate the tidy data set described above.




