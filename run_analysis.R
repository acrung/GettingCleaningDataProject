# What's the script is doing ? -> see file XXX

# Path of features.txt
# Will be use to know the column number to catch in x_test.txt and in x_train.txt
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
testFile <- cbind(testSubject,testActivity, sep="", header=FALSE)
colnames(testFile) <- testColName

#2.2 clean Signal Files
#Write column with write column name
testSignal <- read.csv(pathTestSignal, sep="", header=FALSE)[meanstdCol]
colnames(testSignal) <- myFeatures[meanstdCol,2]
#2.3 Merge Signal with 2.1
testFile <- cbind(testFile, testSignal)
