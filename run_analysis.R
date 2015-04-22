# What's the script is doing ? -> see README.md

# Path of features.txt
# Will be use to know column numbers to keep in x_test.txt and in x_train.txt
pathFeatures <- "./Data/features.txt"


# Path of "test" files
pathTestSubject <- "Data/test/subject_test.txt"
pathTestSignal <- "Data/test/X_test.txt"
pathTestActivity <- "Data/test/y_test.txt"

# Path of "train" files
pathTrainSubject <- "./Data/train/subject_train.txt"
pathTrainSignal <- "./Data/train/X_train.txt"
pathTrainActivity <- "./Data/train/y_train.txt"

#1) Get the column number from features.txt to extract
myFeatures<- read.csv (pathFeatures, sep=" ")

meanstdCol <- grep("mean|std",myFeatures[,2])
myFeatures[meanstdCol,2]

#2) Merge test Files Subjet + Activity + Signal (only column numbers from #1)
#2.1 Merge subject and activity
testSubject <-read.csv(pathTestSubject, sep="", header=FALSE)
testActivity <-   read.csv(pathTestActivity, sep="", header=FALSE)
testColName <- c("Subject", "Activity")
testFile <- cbind(testSubject,testActivity)
colnames(testFile) <- testColName

#2.2 clean Signal Files
#Write column with write column name
testSignal <- read.csv(pathTestSignal, sep="", header=FALSE)[meanstdCol]
colnames(testSignal) <- myFeatures[meanstdCol,2]
#2.3 Merge Signal with 2.1
testFile <- cbind(testFile, testSignal)
#At this moment, the testFile is a tidy data


#3) Merge train Files Subjet + Activity + Signal (only column numbers from #1)
#3.1 Merge subject and activity
trainSubject <-read.csv(pathTrainSubject, sep="", header=FALSE)
trainActivity <-   read.csv(pathTrainActivity, sep="", header=FALSE)
trainColName <- c("Subject", "Activity")
trainFile <- cbind(trainSubject,trainActivity)
colnames(trainFile) <- testColName

#3.2 clean Signal Files
#Write column with write column name
trainSignal <- read.csv(pathTrainSignal, sep="", header=FALSE)[meanstdCol]
colnames(trainSignal) <- myFeatures[meanstdCol,2]
#3.3 Merge Signal with 2.1
trainFile <- cbind(trainFile, trainSignal)
#At this moment, the trainFile is a tidy data



