# Code book for Getting and Cleaning Data Project

## Variable Introduction

* Subject identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
 `subject`
* Activity names:  WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

  `activity`
   
* Average time-domain body acceleration in the X, Y and Z directions:

`timeDomainBodyAccelerometerMeanX`
`timeDomainBodyAccelerometerMeanY`
`timeDomainBodyAccelerometerMeanZ`


* Standard deviation of the time-domain body acceleration in the X, Y and Z directions:


`timeDomainBodyAccelerometerStandardDeviationX`

`timeDomainBodyAccelerometerStandardDeviationY`

`timeDomainBodyAccelerometerStandardDeviationZ`


* Average time-domain gravity acceleration in the X, Y and Z directions:

`timeDomainGravityAccelerometerMeanX`
`timeDomainGravityAccelerometerMeanY`
`timeDomainGravityAccelerometerMeanZ`

* Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

`timeDomainGravityAccelerometerStandardDeviationX`
`timeDomainGravityAccelerometerStandardDeviationY`
`timeDomainGravityAccelerometerStandardDeviationZ`

* Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

`timeDomainBodyAccelerometerJerkMeanX`
`timeDomainBodyAccelerometerJerkMeanY`
`timeDomainBodyAccelerometerJerkMeanZ`

* Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

`timeDomainBodyAccelerometerJerkStandardDeviationX`
`timeDomainBodyAccelerometerJerkStandardDeviationY`
`timeDomainBodyAccelerometerJerkStandardDeviationZ`

* Average time-domain body angular velocity in the X, Y and Z directions:

`timeDomainBodyGyroscopeMeanX`
`timeDomainBodyGyroscopeMeanY`
`timeDomainBodyGyroscopeMeanZ`

* Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

`timeDomainBodyGyroscopeStandardDeviationX`
`timeDomainBodyGyroscopeStandardDeviationY`
`timeDomainBodyGyroscopeStandardDeviationZ`

* Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

`timeDomainBodyGyroscopeJerkMeanX`
`timeDomainBodyGyroscopeJerkMeanY`
`timeDomainBodyGyroscopeJerkMeanZ`

* Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

`timeDomainBodyGyroscopeJerkStandardDeviationX`
`timeDomainBodyGyroscopeJerkStandardDeviationY`
`timeDomainBodyGyroscopeJerkStandardDeviationZ`

* Average and standard deviation of the time-domain magnitude of body acceleration:

`timeDomainBodyAccelerometerMagnitudeMean`
`timeDomainBodyAccelerometerMagnitudeStandardDeviation`

* Average and standard deviation of the time-domain magnitude of gravity acceleration:

`timeDomainGravityAccelerometerMagnitudeMean`
`timeDomainGravityAccelerometerMagnitudeStandardDeviation`

* Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

`timeDomainBodyAccelerometerJerkMagnitudeMean`
`timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation`

* Average and standard deviation of the time-domain magnitude of body angular velocity:

`timeDomainBodyGyroscopeMagnitudeMean`
`timeDomainBodyGyroscopeMagnitudeStandardDeviation`

* Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

`timeDomainBodyGyroscopeJerkMagnitudeMean`
`timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation`


* Average frequency-domain body acceleration in the X, Y and Z directions:

`frequencyDomainBodyAccelerometerMeanX`
`frequencyDomainBodyAccelerometerMeanY`
`frequencyDomainBodyAccelerometerMeanZ`

* Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

`frequencyDomainBodyAccelerometerStandardDeviationX`
`frequencyDomainBodyAccelerometerStandardDeviationY`
`frequencyDomainBodyAccelerometerStandardDeviationZ`

* Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

`frequencyDomainBodyAccelerometerMeanFrequencyX`
`frequencyDomainBodyAccelerometerMeanFrequencyY`
`frequencyDomainBodyAccelerometerMeanFrequencyZ`

* Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

`frequencyDomainBodyAccelerometerJerkMeanX`
`frequencyDomainBodyAccelerometerJerkMeanY`
`frequencyDomainBodyAccelerometerJerkMeanZ`

* Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

`frequencyDomainBodyAccelerometerJerkStandardDeviationX`
`frequencyDomainBodyAccelerometerJerkStandardDeviationY`
`frequencyDomainBodyAccelerometerJerkStandardDeviationZ`

* Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

`frequencyDomainBodyAccelerometerJerkMeanFrequencyX`
`frequencyDomainBodyAccelerometerJerkMeanFrequencyY`
`frequencyDomainBodyAccelerometerJerkMeanFrequencyZ`

* Average frequency-domain body angular velocity in the X, Y and Z directions:

`frequencyDomainBodyGyroscopeMeanX`
`frequencyDomainBodyGyroscopeMeanY`
`frequencyDomainBodyGyroscopeMeanZ`

* Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

`frequencyDomainBodyGyroscopeStandardDeviationX`
`frequencyDomainBodyGyroscopeStandardDeviationY`
`frequencyDomainBodyGyroscopeStandardDeviationZ`

* Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

`frequencyDomainBodyGyroscopeMeanFrequencyX`
`frequencyDomainBodyGyroscopeMeanFrequencyY`
`frequencyDomainBodyGyroscopeMeanFrequencyZ`

* Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

`frequencyDomainBodyAccelerometerMagnitudeMean`
`frequencyDomainBodyAccelerometerMagnitudeStandardDeviation`
`frequencyDomainBodyAccelerometerMagnitudeMeanFrequency`

* Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

`frequencyDomainBodyAccelerometerJerkMagnitudeMean`
`frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation`
`frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency`

* Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

`frequencyDomainBodyGyroscopeMagnitudeMean`
`frequencyDomainBodyGyroscopeMagnitudeStandardDeviation`
`frequencyDomainBodyGyroscopeMagnitudeMeanFrequency`

* Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

`frequencyDomainBodyGyroscopeJerkMagnitudeMean`
`frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
`frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency`

## Operation

1. Merges the training and the test sets to create one data set (bind data tables together).
2. Extracts only the measurements on the mean and standard deviation for each measurement (match the variable names with "mean()" or "std()").
3. Uses descriptive activity names to name the activities in the data set (replace the activities codes with activities labels).
4. Appropriately labels the data set with descriptive variable names (eliminate the special characters and duplications and replace the abbreviations with full names).
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject(calculate the means for each variables and export as `tidy_data.txt`).
