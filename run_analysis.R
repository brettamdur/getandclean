# BACKGROUND 
# This is the script that performs the steps to create the tidy data set from the source data,
# as more fully described in the README.md file included in this repository.

# Load required packages
library(dplyr)
library(reshape)

# Step 1 -- Merge the training and the test sets to create one data set.
	features <- read.table("features.txt", stringsAsFactors = FALSE)
	activity.labels <- read.table("activity_labels.txt", stringsAsFactors = FALSE)
	
	#build a dataframe for the training set
		x.train <- read.table("./train/X_train.txt") 
		y.train <- read.table("./train/y_train.txt") 
		subject.train <- read.table("./train/subject_train.txt")
		traindf <- cbind(x.train,subject.train,y.train)
		names(traindf) <- features[,2]
		names(traindf)[562] <- "Subject"
		names(traindf)[563] <- "Activity"
	#build a dataframe for the test set
		x.test <- read.table("./test/X_test.txt") #fix these to grab from the right directory
		y.test <- read.table("./test/y_test.txt") 
		subject.test <- read.table("./test/subject_test.txt")
		testdf <- cbind(x.test,subject.test,y.test)
		names(testdf) <- features[,2]
		names(testdf)[562] <- "Subject"
		names(testdf)[563] <- "Activity"
	
	#combine the training and test dataframes
		combineddf <- rbind(traindf,testdf)
		
# Step 2 - Extract only the measurements on the mean and standard deviation for each measurement.
	combineddf <- combineddf[,grep("mean\\(\\)|std\\(\\)|Activity|Subject", names(combineddf), ignore.case = TRUE)]

# Step 3 - Use descriptive activity names to name the activities in the data set
 	for(i in 1:length(combineddf$Activity)){
 		combineddf$Activity[i] <- activity.labels$V2[as.integer(combineddf$Activity[i])]
 	}
	
# Step 4 - Appropriately label the data set with descriptive variable names. 
# NOTE: This was handled in Step 1.  When the script built the test and training data frames, it 
# 	named the last two variables that were created by adding columns from the y_[train/test] and 
#	subject_[train/test] files.  Otherwise, all variables appear to have had descriptive names
#	in their orignal form (meaning, as they appeared in the X_[train/test] files).

# Step 5 - From the data set in step 4, create a second, independent tidy data set with 
# the average of each variable for each activity and each subject.
	# put the identifying variables at the beginning of the column list
		namesLength <- length(names(combineddf))
		lminus1 <- namesLength - 1
		lminus2 <- namesLength - 2
		combineddf <- combineddf[, c(lminus1, namesLength, 1:lminus2)]
		
	# Melt all variables except the identifying variables to make this tidy.
	# NOTE: not clear that melting is really required, per the assignement instructions,
	# which say that wide form is permitted here.  Without more information about the 
	# use to which this data is being put, we cannot determine whether this melting step is required
	# to make this data tidy.
		combineddf.melted <- melt(combineddf, id = c("Subject", "Activity"))
		combineddf.melted.g <- group_by(combineddf.melted, Subject, Activity, variable)
		finalResult <- summarize(combineddf.melted.g, means=mean(value))
		names(finalResult)[3:4] <- c("Measurement", "Mean")
		write.table(finalResult, file="finalResult.txt", row.names = FALSE, quote = FALSE)
	