### This is the Code Book for measurement variables of Human Activity Recognition used in following data files: 
1.      "HAR_mean_n_std_measurements.txt" and 
2.      "HAR_variableAverage_for_Subject.Activity.txt".

The first file contains various means and standard deviations of measurements for 30 subjects, who are numbered 1-30, for the activity as named. Each row is observation with columns representing subject, activity and measurements. 

The second file contains the average of the variables from the first file for each subject and each activity. Each row represents a specific measurement and each column represents an activity of a subject.

#### Other relevant notes on original data based on source publication.
(See reference at bottom of this code book for source publication)
* The acceleration signals come from the accelerometer and the angular velocity signals come from the gyroscope.
* The time domain signals were captured at a constant rate of 50 Hz.
* The acceleration signals are separated to body and gravity using a low pass Butterworth filter with a corner frequency of 0.3 Hz.
* The Jerk signals are derived from both body acceleration and angular velocity.
* The frequency domain signals are produced by application of a Fast Fourier Transform (FFT).
* The mean frequency is Weighted average of the frequency components.


#### Variables:
```
tBodyAcc_mean_X        	:	The mean value of body acceleration signals derived in time domain; X coordinate.  
tBodyAcc_mean_Y		:		"	; Y coordinate
tBodyAcc_mean_Z		:		"	; Z coordinate
tBodyAcc_std_X		:	The standard deviation of body acceleration signals derived in time domain; X coordinate.
tBodyAcc_std_Y		:		"	; Y coordinate
tBodyAcc_std_Z		:		"	; Z coordinate
tGravityAcc_mean_X	:	The mean value of gravity acceleration signals derived in time domain; X coordinate.  	
tGravityAcc_mean_Y	:		"	; Y coordinate
tGravityAcc_mean_Z	:		"	; Z coordinate
tGravityAcc_std_X	:	The standard deviation of graivity acceleration signals derived in time domain; X coordinate.
tGravityAcc_std_Y	:		"	; Y coordinate
tGravityAcc_std_Z	:		"	; Z coordinate
tBodyAccJerk_mean_X	:	The mean value of body acceleration Jerk signals derived in time domain; X coordinate.
tBodyAccJerk_mean_Y	:		"	; Y coordinate
tBodyAccJerk_mean_Z	:		"	; Z coordinate
tBodyAccJerk_std_X	:	The standard deviation of body Jerk signals derived in time domain; X coordinate.	
tBodyAccJerk_std_Y	:		"	; Y coordinate
tBodyAccJerk_std_Z	:		"	; Z coordinate
tBodyGyro_mean_X	:	The mean value of body angular velocity signals derived in time domain; X coordinate.
tBodyGyro_mean_Y	:		"	; Y coordinate
tBodyGyro_mean_Z	:		"	; Z coordinate
tBodyGyro_std_X		:	The standard deviation of body angular velocity signals derived in time domain; X coordinate.
tBodyGyro_std_Y		:		"	; Y coordinate
tBodyGyro_std_Z		:		"	; Z coordinate
tBodyGyroJerk_mean_X	:	The mean value of angular velocity Jerk signals derived in time domain; X coordinate.
tBodyGyroJerk_mean_Y	:		"	; Y coordinate
tBodyGyroJerk_mean_Z	:		"	; Z coordinate
tBodyGyroJerk_std_X	:	The standard deviation of angular velocity Jerk signals derived in time domain; X coordinate.
tBodyGyroJerk_std_Y	:		"	; Y coordinate
tBodyGyroJerk_std_Z	:		"	; Z coordinate
tBodyAccMag_mean	:	The mean value of Euclidean magnitudes for body acceleration signals derived in time domain
tBodyAccMag_std		:	The standard deviation of Euclidean magnitudes for body acceleration signals derived in time domain
tGravityAccMag_mean	:	The mean value of Euclidean magnitudes for gravity acceleration signals derived in time domain
tGravityAccMag_std	:	The standard deviation of Euclidean magnitudes for gravity acceleration signals derived in time domain
tBodyAccJerkMag_mean	:	The mean value of Euclidean magnitudes for body acceleration Jerk signals derived in time domain
tBodyAccJerkMag_std	:	The standard deviation of Euclidean magnitudes for body acceleration Jerk signals derived in time domain
tBodyGyroMag_mean	:	The mean value of Euclidean magnitudes for body angular velocity signals derived in time domain
tBodyGyroMag_std	:	The standard deviation of Euclidean magnitudes for body angular velocity signals derived in time domain
tBodyGyroJerkMag_mean	:	The mean value of Euclidean magnitudes for angular velocity Jerk signals derived in time domain
tBodyGyroJerkMag_std	:	The standard deviation of Euclidean magnitudes for angular velocity Jerk signals derived in time domain

fBodyAcc_mean_X		:	The mean value of body acceleration signals derived in frequency domain; X coordinate
fBodyAcc_mean_Y		:		"	; Y coordinate
fBodyAcc_mean_Z		:		"	; Z coordinate
fBodyAcc_std_X		:	The standard deviation of body acceleration signals derived in frequency domain; X coordinate.
fBodyAcc_std_Y		:		"	; Y coordinate
fBodyAcc_std_Z		:		"	; Z coordinate
fBodyAcc_meanFreq_X	:	The mean frequency of body acceleration signals derived in frequency domain; X coordinate.
fBodyAcc_meanFreq_Y	:		"	; Y coordinate
fBodyAcc_meanFreq_Z	:		"	; Z coordinate
fBodyAccJerk_mean_X	:	The mean value of body acceleration Jerk signals derived in frequency domain; X coordinate.
fBodyAccJerk_mean_Y	:		"	; Y coordinate
fBodyAccJerk_mean_Z	:		"	; Z coordinate
fBodyAccJerk_std_X	:	The standard deviation of body acceleration Jerk signals derived in frequency domain; X coordinate.
fBodyAccJerk_std_Y	:		"	; Y coordinate
fBodyAccJerk_std_Z	:		"	; Z coordinate
fBodyAccJerk_meanFreq_X	:	The mean frequency of body acceleration Jerk signals derived in frequency domain; X coordinate.
fBodyAccJerk_meanFreq_Y	:		"	; Y coordinate
fBodyAccJerk_meanFreq_Z	:		"	; Z coordinate
fBodyGyro_mean_X	:	The mean value of body angular velocity signals derived in frequency domain; X coordinate.
fBodyGyro_mean_Y	:		"	; Y coordinate
fBodyGyro_mean_Z	:		"	; Z coordinate
fBodyGyro_std_X		:	The standard deviation of body angular velocity signals derived in frequency domain; X coordinate.
fBodyGyro_std_Y		:		"	; Y coordinate
fBodyGyro_std_Z		:		"	; Z coordinate
fBodyGyro_meanFreq_X	:	The mean frequency of body angular velocity signals derived in frequency domain; X coordinate.
fBodyGyro_meanFreq_Y	:		"	; Y coordinate	
fBodyGyro_meanFreq_Z	:		"	; Z coordinate
fBodyAccMag_mean	:	The mean value of Euclidean magnitudes for body acceleration signals derived in frequency domain
fBodyAccMag_std		:	The standard deviation of Euclidean magnitudes for body acceleration signals derived in frequency domain
fBodyAccMag_meanFreq	:	The mean frequency of Euclidean magnitudes for body acceleration signals derived in frequency domain
fBodyBodyAccJerkMag_mean:	The mean value of Euclidean magnitudes for body acceleration Jerk signals derived in frequency domain	
fBodyBodyAccJerkMag_std	:	The standard deviation of Euclidean magnitudes for body acceleration Jerk signals derived in frequency domain
fBodyBodyAccJerkMag_meanFreq:	The mean frequency of Euclidean magnitudes for body acceleration Jerk signals derived in frequency domain	
fBodyBodyGyroMag_mean	:	The mean value of Euclidean magnitudes for body angular velocity signals derived in frequency domain
fBodyBodyGyroMag_std	:	The standard deviation of Euclidean magnitudes for body angular velocity signals derived in frequency domain
fBodyBodyGyroMag_meanFreq:	The mean frequency of Euclidean magnitudes for body angular velocity signals derived in frequency domain
fBodyBodyGyroJerkMag_mean:	The mean value of Euclidean magnitudes for angular velocity Jerk signals derived in frequency domain
fBodyBodyGyroJerkMag_std:	The standard deviation of Euclidean magnitudes for angular velocity Jerk signals derived in frequency domain
fBodyBodyGyroJerkMag_meanFreq:	The mean frequency of Euclidean magnitudes for angular velocity Jerk signals derived in frequency domain
	
```

#### Reference:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

A [full description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) of the source dataset:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

