# What's the script is doing ? -> see README.md

# Path of features.txt
# Will be use to know column numbers to keep in x_test.txt and in x_train.txt
pathFeatures <- "./Data/features.txt"
pathActivityLabels <- "./Data/activity_labels.txt"

# Path of "test" files
pathTestSubject <- "Data/test/subject_test.txt"
pathTestSignal <- "Data/test/X_test.txt"
pathTestActivity <- "Data/test/y_test.txt"

# Path of "train" files
pathTrainSubject <- "./Data/train/subject_train.txt"
pathTrainSignal <- "./Data/train/X_train.txt"
pathTrainActivity <- "./Data/train/y_train.txt"

#1) Get the column number to extract from features.txt
myFeatures<- read.csv (pathFeatures, sep=" ")

######[2. Coursera] Extracts only the measurements on the mean and standard deviation 
######for each measurement.
meanstdCol <- grep("mean|std",myFeatures[,2])

#2) Merge test Files Subject + Activities labels + Signal
testSubject <-read.csv(pathTestSubject, sep="", header=FALSE)
testActivity <-   read.csv(pathTestActivity, sep="", header=FALSE)
activityLabels <- read.csv(pathActivityLabels, sep="", header=FALSE)

#2.1 Merge subject and activity
testColName <- c("subject", "activity")
#####[3. Coursera] Uses descriptive activity names to name the activities in the data set
testFile <- cbind(testSubject,merge(testActivity, activityLabels)[-1])
colnames(testFile) <- testColName

#2.2 clean test Signal Files
#Write column with write column name
testSignal <- read.csv(pathTestSignal, sep="", header=FALSE)[meanstdCol]
######[4.Coursera ]Appropriately labels the data set with descriptive variable names 
######the activities in the data set
colnames(testSignal) <- myFeatures[meanstdCol,2]
#2.3 Merge Signal with 2.1
testFile <- cbind(testFile, testSignal)
#At this moment, the testFile is a tidy data

#3) Merge train Files Subjet + Activity + Signal labels
#3.1 Merge subject and activity
trainSubject <-read.csv(pathTrainSubject, sep="", header=FALSE)
trainActivity <-   read.csv(pathTrainActivity, sep="", header=FALSE)
trainColName <- c("subject", "activity")
#####[3. Coursera] Uses descriptive activity names to name the activities in the data set
trainFile <- cbind(trainSubject,merge(trainActivity, activityLabels)[-1])
#[4.Coursera ]Appropriately labels the data set with descriptive variable names
colnames(trainFile) <- trainColName

#3.2 clean Signal Files
#Write column with write column name
trainSignal <- read.csv(pathTrainSignal, sep="", header=FALSE)[meanstdCol]
colnames(trainSignal) <- myFeatures[meanstdCol,2]
#3.3 Merge Signal with 2.1
######[1. Coursera] Merges the training and the test sets to create one data set.
trainFile <- cbind(trainFile, trainSignal)
#At this moment, the trainFile is a tidy data

#4 Merge test file and train file then order by subject
FinalTidyFile <- rbind(trainFile,testFile)
FinalTidyFile <- FinalTidyFile[order(FinalTidyFile$subject),]

colnames(FinalTidyFile) <- tolower (colnames(FinalTidyFile))
colnames(FinalTidyFile) <- gsub("mean()", "mean",colnames(FinalTidyFile))
colnames(FinalTidyFile) <- gsub("std()", "standarddeviation",colnames(FinalTidyFile))
colnames(FinalTidyFile) <- gsub("-", "",colnames(FinalTidyFile))
colnames(FinalTidyFile) <- gsub("-", "", colnames(FinalTidyFile))
colnames(FinalTidyFile) <- gsub("\\(", "", colnames(FinalTidyFile))
colnames(FinalTidyFile) <- gsub("\\)", "", colnames(FinalTidyFile))
colnames(FinalTidyFile) <- gsub("^t", "time", colnames(FinalTidyFile))
colnames(FinalTidyFile) <- gsub("fbody", "frequencydomainsignalbody", colnames(FinalTidyFile)) 
colnames(FinalTidyFile) <- gsub("acc", "acceleration", colnames(FinalTidyFile)) 
colnames(FinalTidyFile) <- gsub("gyro", "gyroscope", colnames(FinalTidyFile))
colnames(FinalTidyFile) <- gsub("mag", "magnitude", colnames(FinalTidyFile)) 

######[5. Coursera] From the data set in step 4, creates a second, independent tidy data set 
######with the average of each variable for each activity and each subject

### TEST
#miaou <- as.formula(timebodyaccelerationmeanz+timebodyaccelerationmeany)
#aggregate(formula=timebodyaccelerationmeany~subject+activity, data=FinalTidyFile, FUN=mean, na.rm = TRUE)
#aggregate(formula=cbind(timebodyaccelerationmeanz,timebodyaccelerationmeany)~subject+activity, data=FinalTidyFile, FUN=mean, na.rm = TRUE)
#aggregate(x=FinalTidyFile[, 3:4], by=list(FinalTidyFile$subject,FinalTidyFile$activity), FUN=mean)
### FIN TEST
q5 <- aggregate(x=FinalTidyFile[,3:80], by=list(FinalTidyFile$subject,FinalTidyFile$activity), FUN=mean)
colnames(q5)[1:2] <- c("subject", "activity")

q5 <- q5[order(q5$subject),]

###
#5 Write the final file
write.table(q5, file = "tidydata.txt", append = FALSE, quote = TRUE, sep = " ",
            eol = "\n", na = "NA", dec = ".", row.names = FALSE,
            col.names = TRUE, qmethod = c("escape", "double"),
            fileEncoding = "")

#6 Clean up all variables
rm (meanstdCol)
rm (myFeatures)
rm (pathFeatures)
rm (pathTestActivity)
rm (pathTestSignal)
rm (pathTestSubject)
rm (pathTrainActivity)
rm (pathTrainSignal)
rm (pathTrainSubject)
rm (testFile)
rm (trainFile)
rm (testActivity)
rm (testColName)
rm (testSignal)
rm (testSubject)
rm (pathActivityLabels)
rm (activityLabels)
rm (trainActivity)
rm (trainColName)
rm (trainSignal)
rm (trainSubject)
rm (FinalTidyFile)
