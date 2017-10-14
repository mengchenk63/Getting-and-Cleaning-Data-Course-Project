# Code book

This code book summarizes the resulting data fields in tidy_data.txt file of this repository

### Data file

The tidy_data.txt data file is a text file, containing space-separated values.

The first row contains the names of the variables, which are listed and described in the Variables section, and the following rows contain the values of these variables.

### Identifiers

* subject- The ID of the test subject, ranges from 1 to 30.

* activity-The type of activity performed when the corresponding measurements were taken, string with 6 possible values:

    - WALKING (value1): subject was walking
    - WALKING_UPSTAIRS (value2): subject was walking upstairs
    - WALKING_DOWNSTAIRS (value3): subject was walking downstairs
    - SITTING (value4): subject was sitting
    - STANDING (value5): subject was standing
    - LAYING (value6): subject was laying

### measurement results
in the tidy_data.txt file we only etract the mean and standard deviation for each measurement

- timeDomainBodyAccelerometerMeanX
- timeDomainBodyAccelerometerMeanY
- timeDomainBodyAccelerometerMeanZ
- timeDomainBodyAccelerometerStandardDeviationX
- timeDomainBodyAccelerometerStandardDeviationY
- timeDomainBodyAccelerometerStandardDeviationZ
- timeDomainGravityAccelerometerMeanX
- timeDomainGravityAccelerometerMeanY
- timeDomainGravityAccelerometerMeanZ
- timeDomainGravityAccelerometerStandardDeviationX
- timeDomainGravityAccelerometerStandardDeviationY
- timeDomainGravityAccelerometerStandardDeviationZ
- timeDomainBodyAccelerometerJerkMeanX
- timeDomainBodyAccelerometerJerkMeanY
- timeDomainBodyAccelerometerJerkMeanZ
- timeDomainBodyAccelerometerJerkStandardDeviationX
- timeDomainBodyAccelerometerJerkStandardDeviationY
- timeDomainBodyAccelerometerJerkStandardDeviationZ
- timeDomainBodyGyroscopeMeanX
- timeDomainBodyGyroscopeMeanY
- timeDomainBodyGyroscopeMeanZ
- timeDomainBodyGyroscopeStandardDeviationX
- timeDomainBodyGyroscopeStandardDeviationY
- timeDomainBodyGyroscopeStandardDeviationZ
- timeDomainBodyGyroscopeJerkMeanX
- timeDomainBodyGyroscopeJerkMeanY
- timeDomainBodyGyroscopeJerkMeanZ
- timeDomainBodyGyroscopeJerkStandardDeviationX
- timeDomainBodyGyroscopeJerkStandardDeviationY
- timeDomainBodyGyroscopeJerkStandardDeviationZ
- timeDomainBodyAccelerometerMagnitudeMean
- timeDomainBodyAccelerometerMagnitudeStandardDeviation
- timeDomainGravityAccelerometerMagnitudeMean
- timeDomainGravityAccelerometerMagnitudeStandardDeviation
- timeDomainBodyAccelerometerJerkMagnitudeMean
- timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation
- timeDomainBodyGyroscopeMagnitudeMean
- timeDomainBodyGyroscopeMagnitudeStandardDeviation
- timeDomainBodyGyroscopeJerkMagnitudeMean
- timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation

- frequencyDomainBodyAccelerometerMeanX
- frequencyDomainBodyAccelerometerMeanY
- frequencyDomainBodyAccelerometerMeanZ
- frequencyDomainBodyAccelerometerStandardDeviationX
- frequencyDomainBodyAccelerometerStandardDeviationY
- frequencyDomainBodyAccelerometerStandardDeviationZ
- frequencyDomainBodyAccelerometerMeanFrequencyX
- frequencyDomainBodyAccelerometerMeanFrequencyY
- frequencyDomainBodyAccelerometerMeanFrequencyZ
- frequencyDomainBodyAccelerometerJerkMeanX
- frequencyDomainBodyAccelerometerJerkMeanY
- frequencyDomainBodyAccelerometerJerkMeanZ
- frequencyDomainBodyAccelerometerJerkStandardDeviationX
- frequencyDomainBodyAccelerometerJerkStandardDeviationY
- frequencyDomainBodyAccelerometerJerkStandardDeviationZ
- frequencyDomainBodyAccelerometerJerkMeanFrequencyX
- frequencyDomainBodyAccelerometerJerkMeanFrequencyY
- frequencyDomainBodyAccelerometerJerkMeanFrequencyZ
- frequencyDomainBodyGyroscopeMeanX
- frequencyDomainBodyGyroscopeMeanY
- frequencyDomainBodyGyroscopeMeanZ
- frequencyDomainBodyGyroscopeStandardDeviationX
- frequencyDomainBodyGyroscopeStandardDeviationY
- frequencyDomainBodyGyroscopeStandardDeviationZ
- frequencyDomainBodyGyroscopeMeanFrequencyX
- frequencyDomainBodyGyroscopeMeanFrequencyY
- frequencyDomainBodyGyroscopeMeanFrequencyZ
- frequencyDomainBodyAccelerometerMagnitudeMean
- frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
- frequencyDomainBodyAccelerometerMagnitudeMeanFrequency
- frequencyDomainBodyAccelerometerJerkMagnitudeMean
- frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
- frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency
- frequencyDomainBodyGyroscopeMagnitudeMean
- frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
- frequencyDomainBodyGyroscopeMagnitudeMeanFrequency
- frequencyDomainBodyGyroscopeJerkMagnitudeMean
- frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
- frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency

### Transformations

The following transformations were applied to the source data:

1. The training and test sets were merged to create one data set.
2. Only the measurements on the mean and standard deviation OF each measurement were extracted.
3. The activity identifiers were replaced with descriptive activity names.
4. The variable names were replaced with clear descriptive variable names.
5. the final data set was created with the average of each variable for each activity and each subject.
