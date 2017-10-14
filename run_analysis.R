library(dplyr)
filename <- "dataset.zip"

## Download and unzip the dataset if it does not exist:
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, mode="wb")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

# read the test data and train data

testValues<-read.table("UCI HAR Dataset/test/X_test.txt")
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")

trainValues<-read.table("UCI HAR Dataset/train/X_train.txt")
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Read date: activity_labels and features
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

# Merges the test data and the train data to create one data set.

allData <- rbind(
  cbind(trainSubjects, trainValues, trainActivities),
  cbind(testSubjects, testValues, testActivities)
)


# remove individual data tables to save some memory
rm(trainSubjects, trainValues, trainActivities, 
   testSubjects, testValues, testActivities)

#assign the column names

colnames(allData) <- c("subject", features[, 2], "activity")

# Extract only the data on mean and standard deviation
columsExtracted <- grepl("subject|activity|mean|std", colnames(allData))
extractData<-allData[,columsExtracted]

#Use descriptive activity names to name the activities
#Appropriately label the data set with descriptive variable names

#turn activities & subjects into factors
extractData$activity <- factor(extractData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
extractData$subject <- as.factor(extractData$subject)

#remove special characters
extractDataCols <- colnames(extractData)
extractDataCols <- gsub("[\\(\\)-]", "", extractDataCols)

# expand abbreviations and clean up names
extractDataCols <- gsub("^f", "frequencyDomain", extractDataCols)
extractDataCols <- gsub("^t", "timeDomain", extractDataCols)
extractDataCols <- gsub("Acc", "Accelerometer", extractDataCols)
extractDataCols <- gsub("Gyro", "Gyroscope", extractDataCols)
extractDataCols <- gsub("Mag", "Magnitude", extractDataCols)
extractDataCols <- gsub("Freq", "Frequency", extractDataCols)
extractDataCols <- gsub("mean", "Mean", extractDataCols)
extractDataCols <- gsub("std", "StandardDeviation", extractDataCols)

# correct typo
extractDataCols <- gsub("BodyBody", "Body", extractDataCols)

# update the column labels 
colnames(extractData) <- extractDataCols

#Create a second, independent tidy set with the average of each
#variable for each activity and each subject

# group by subject and activity then summarise  
extractDataMeans <- extractData %>% 
  group_by(subject, activity) %>%
  summarise_all(funs(mean))

# output to file "tidy_data.txt"
write.table(extractDataMeans, "tidy_data.txt", row.names = FALSE, 
            quote = FALSE)