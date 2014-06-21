CleanHAR_data
=============

This is the repo of a project that uses the Human Activity Recognition data recorded by an experiment conducted at Smartlab (See reference at the bottom for source publication).

This project prepares the consolidated data only with various means and standard deviations of measurements recorded.

The project also summarizes average of each measurement variable for each subject for each activity. 30 Subjects are numberedfrom 1 to 30 and 6 activities are as named. 

The project was built on windows 7 X 64bit with R version 3.1.0

This repo includes the following files:
---------------------------------------

* **README.md**

* **CodeBook.md**: Shows information about the variables used.

* **HAR_mean_n_std_measurements.txt**: Tab delimited text file with various means and standard deviations of measurements. Each row is observation with columns representing subject, activity and measurements.

* **HAR_variableAverage_for_Subject.Activity.txt**: Tab delimited text file with averages of measurements for each subject and each activity. Each row represents a specific measurement and each column represents an activity of a subject. 

* **run_analysis.R**: The R script to prouce above two files from source data.

#### Instructions to create the data files from source
(see refernce at the bottom):

* Download the dataset zip file from the source referenced at the bottom of this README

* Extract the zip files in the working directory of R, maintaining the original folder/directory structure.The folder "UCI HAR Dataset" should appear under working directory.

* Run the script "run_analysis.R" in the working directory and wait for printed instruction "Created files HAR_mean_n_std_measurements.txt and HAR_variableAverage_for_Subject.Activity.txt" 

* Find the files in working directory.

* Created data files can be viewed with any editor like Excel that will open using TAB as delimiter

#### Reference:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

A [full description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) of the source dataset:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
