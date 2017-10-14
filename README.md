# Getting-and-Cleaning-Data-Course-Project
This is the repository for the "Getting and Cleaning Data" course in Coursera.

### Overview

One of the most exciting areas in all of data science right now is wearable computing . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.

In this project, data collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone was retrieved, worked with, and cleaned, to prepare a tidy data that can be used for later analysis.

This repository contains the following files:

1. README.md, this file provides an overview of the repository and how all the parts are connected.
2. run_analysis.R, This R script generates the tidy data set.
3. tidy_data.txt, this is the data set created by the run_analysis.R srcipt. The data set contains the cleaned data collected from the accelerometers from the Samsung Galaxy S smartphone.
4. CodeBook.md, this code book describes the variables, the data, and any transformations or work that you performed to clean up the data.


### Create the tidy data
The R script, run_analysis.R, does the following things step by step to generate the tidy date:

1. Download and unzip source data if it doesn't exist
2. read the data, include the test data, train data, activity_labels and features
3. mearge test data and train data to create one data set.
4. Extracts only the measurements on the mean and standard deviation for each measurement.
5. Uses descriptive activity names to name the activities in the data set
6. Appropriately labels the data set with descriptive variable names.
7. create a second, independent tidy data set with the average of each variable for each activity and each subject.

