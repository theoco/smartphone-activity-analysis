# Human Activity Recognition Using Smartphones Data Set

The dataset analysed here is from the accelerometers from the Samsung Galaxy S smartphone. A full description is available here:
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The full data set can be found here [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

=================
## run_analysis.R

run_analysis.R when run in a folder containing the dataset will collect, merge, and label the dataset and output a tidy dataset containing the means of the following features for all subjects and Activities:

*tBodyAcc-mean()-X
*tBodyAcc-mean()-Y
*tBodyAcc-mean()-Z
*tBodyAcc-std()-X
*tBodyAcc-std()-Y
*tBodyAcc-std()-Z
*tGravityAcc-mean()-X
*tGravityAcc-mean()-Y
*tGravityAcc-mean()-Z
*tGravityAcc-std()-X
*tGravityAcc-std()-Y
*tGravityAcc-std()-Z
*tBodyAccJerk-mean()-X
*tBodyAccJerk-mean()-Y
*tBodyAccJerk-mean()-Z
*tBodyAccJerk-std()-X
*tBodyAccJerk-std()-Y
*tBodyAccJerk-std()-Z
*tBodyGyro-mean()-X
*tBodyGyro-mean()-Y
*tBodyGyro-mean()-Z
*tBodyGyro-std()-X
*tBodyGyro-std()-Y
*tBodyGyro-std()-Z
*tBodyGyroJerk-mean()-X
*tBodyGyroJerk-mean()-Y
*tBodyGyroJerk-mean()-Z
*tBodyGyroJerk-std()-X
*tBodyGyroJerk-std()-Y
*tBodyGyroJerk-std()-Z
*tBodyAccMag-mean()
*tBodyAccMag-std()
*tGravityAccMag-mean()
*tGravityAccMag-std()
*tBodyAccJerkMag-mean()
*tBodyAccJerkMag-std()
*tBodyGyroMag-mean()
*tBodyGyroMag-std()
*tBodyGyroJerkMag-mean()
*tBodyGyroJerkMag-std()
*fBodyAcc-mean()-X
*fBodyAcc-mean()-Y
*fBodyAcc-mean()-Z
*fBodyAcc-std()-X
*fBodyAcc-std()-Y
*fBodyAcc-std()-Z
*fBodyAccJerk-mean()-X
*fBodyAccJerk-mean()-Y
*fBodyAccJerk-mean()-Z
*fBodyAccJerk-std()-X
*fBodyAccJerk-std()-Y
*fBodyAccJerk-std()-Z
*fBodyGyro-mean()-X
*fBodyGyro-mean()-Y
*fBodyGyro-mean()-Z
*fBodyGyro-std()-X
*fBodyGyro-std()-Y
*fBodyGyro-std()-Z
*fBodyAccMag-mean()
*fBodyAccMag-std()
*fBodyBodyAccJerkMag-mean()
*fBodyBodyAccJerkMag-std()
*fBodyBodyGyroMag-mean()
*fBodyBodyGyroMag-std()
*fBodyBodyGyroJerkMag-mean()
*fBodyBodyGyroJerkMag-std()

The variable types and how these variables were measured can be found in the data source description at [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

=================
## Techniques

The run_analysis.R file works by doing the following:

1. Unzipping the data file located in the working directory named "getdata_projectfiles_UCI HAR Dataset.zip".
1. Loading the test and train data from all 30 participants into a single data frame.
1. Extracting the listed feature variables and concatenating this with the subject and Activity variables.
1. Looking up the feature names using the supplied features.txt file and assigning the column header names using the provided lables.
1. Looking up the Activity names using the supplied activity_labels.txt file and assigning these to the data.
1. The data is then summarized by subject and Activity to obtain the mean of each feature variable.
1. The resulting tidy data is then written to disk.

* Ted Randall (2015)