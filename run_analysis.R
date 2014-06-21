# #########The acknoledgement of source publication for data set###############
# This script uses the data set from following publication:
#       Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra 
#       and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones 
#       using a Multiclass Hardware-Friendly Support Vector Machine. 
#       International Workshop of Ambient Assisted Living (IWAAL 2012). 
#       Vitoria-Gasteiz, Spain. Dec 2012
##############################################################################
# The script Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for 
# each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names. 
# The script also creates a second, independent tidy data set with the 
# average of each variable for each activity and each subject.
# Both data sets are written in working directory as tab delimited text files
# HAR_mean_n_std_measurements.txt and HAR_variableAverage_for_Subject.Activity.txt
#
## Merge subject, y and X
# Read test set of subject
subject_test<- read.table("./UCI HAR Dataset/test/subject_test.txt")
# Read train set of subject and merge(rbind) with test
subject<- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject<- rbind(subject_test, subject)
# remove the test set from environment/memory
remove("subject_test")
# Label column
names(subject)<- "Subject.Number"

# Read test set of y
y_test<- read.table("./UCI HAR Dataset/test/y_test.txt")
# Read train set of y and merge(rbind) with test
y<- read.table("./UCI HAR Dataset/train/y_train.txt")
y<- rbind(y_test, y)
# remove the test set from environment/memory
remove("y_test")
# Read activity_labels and add activity.Name to y 
activity<- read.table("./UCI HAR Dataset/activity_labels.txt")
names(activity)<- c("Label", "Name") 
names(y)<- "Activity.Label"
y$Activity.Name=activity$Name[y$Activity.Label]

# Read test set of X
X_test<- read.table("./UCI HAR Dataset/test/X_test.txt")
# Read train set of X and merge(rbind) with test
X<- read.table("./UCI HAR Dataset/train/X_train.txt")
X<- rbind(X_test, X)
# remove the test set from environment/memory
remove("X_test")
##

## Preaparing X with less features and labeling
# Read features
features<- read.table("./UCI HAR Dataset/features.txt")
feature<- as.character(levels(features$V2))[features$V2]
# Selecting features for "mean" and "std"(standard deviation), 
# matching pattern with either word followed by presence or absence of 
# word characters and followed by function indicator "()"
# For example: "fBodyAcc-meanFreq()-X" is mean function as meanFreq is
# one word before empty braces, but the feature "angle(X,gravityMean)" is
# not a mean function containg an argument as mean. 
# So the 2nd example is not selected.
cols_to_extract<- grep(".mean\\w*\\(\\)|.std\\w*\\(\\)", feature,
                       ignore.case = TRUE)

# Label columns of X with actual feature name,
# after removing "()" and replacing "-" sign
feature<- gsub("\\(\\)","", feature)
feature<- gsub("-","_", feature)
names(X)<- feature
# Extract selected features as prepared (mean and standard deviation)
X<- X[,cols_to_extract]
##

Activity.Name<-as.character(levels(y$Activity.Name)[as.integer(y$Activity.Name)])
Subject.Number<- subject$Subject.Number 
tidy_data<- data.frame(Subject.Number, Activity.Name,X, 
                       stringsAsFactors = FALSE )
# remove previous datasets from environment/memory
remove("X", "y", "subject")

write.table(tidy_data, "HAR_mean_n_std_measurements.txt", sep = "\t",
            row.names=FALSE)
# Split tidy data set by subject and activity, and then calculate average for
# each variable for each group
split_data<- split(tidy_data, tidy_data[,c("Subject.Number", "Activity.Name")],
                   drop=TRUE)
variableMeanData<- sapply(split_data, function(x) colMeans(x[,3:81]))
# Writing variableMeanData with top-left cell appropriately written
RowIsVariable_ColumnIsSubject.Activity<- row.names(variableMeanData)
variableMeanData<- cbind(RowIsVariable_ColumnIsSubject.Activity, 
                         variableMeanData)
write.table(variableMeanData, "HAR_variableAverage_for_Subject.Activity.txt",
            sep = "\t", row.names=FALSE)

print("Created files HAR_mean_n_std_measurements.txt and HAR_variableAverage_for_Subject.Activity.txt")

################################################################################

