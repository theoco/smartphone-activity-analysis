library(plyr)
library(reshape)

## Unzip the datafile 
unzip("getdata_projectfiles_UCI HAR Dataset.zip", exdir = ".", overwrite = TRUE)

## Load the test and train data
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")

## Concatenate test and train data to a single data frame
X <- rbind(X_test, X_train)

## Load the test and train activities
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")

## Concatenate test and train activities to a single data frame
y <- rbind(y_test, y_train)

## Load data file containing the subject listing
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

subject <- rbind(subject_test, subject_train)
names(subject) <- c("subject")

## Extract only the mean and std variables of the dataset
X_mean_std <- X[,c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,241,253,254,266,267,268,269,270,271,345,346,347,348,349,350,424,425,426,427,428,429,503,504,516,517,529,530,542,543)]

## Load the features to name each data column appropriatly
features <- read.table("UCI HAR Dataset/features.txt")
names(X_mean_std) <- features[c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,241,253,254,266,267,268,269,270,271,345,346,347,348,349,350,424,425,426,427,428,429,503,504,516,517,529,530,542,543),]$V2 

## Combine all the datasets
data <- cbind(subject, X_mean_std, y)

## Read in the activity names file
activity_names <- read.table("UCI HAR Dataset//activity_labels.txt")

## Join the activity names to the dataset
data <- join(data,activity_names)

## Label the Activity column appropriatly
colnames(data)[colnames(data) == "V2"] <- "Activity"
data$V1 <- NULL

## Melt and Cast the data into the appropriate format (ie. means of all data elements)
data2 <- melt(data, id=c("subject", "Activity"))
tidy_data <- cast(data2, subject + Activity~..., mean)

## Write the tidy_data to disk
write.table(tidy_data, "tidy_data.txt", row.names=FALSE)
