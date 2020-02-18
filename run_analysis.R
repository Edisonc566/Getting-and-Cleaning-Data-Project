# Getting and Cleaning Data Final Project

# Create one R script called run_analysis.R that does the following:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# Section 1. Merges the training and the test sets to create one data set.

# download packages and data 
install.packages("dplyr")
install.packages("tidyr")
install.packages("readr")
library("dplyr")
library("tidyr")
library("readr")

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
path <- getwd()
download.file(url, file.path(path, "dataFiles.zip"))
unzip(zipfile = "dataFiles.zip")
path <- file.path(path, "UCI HAR Dataset")

# import data tables
trainfile <- list.files(file.path(path, "train"), full.names = TRUE )[-1]
testfile  <- list.files( file.path(path, "test") , full.names = TRUE )[-1]
raw_bind <- lapply( c( trainfile, testfile ), read.table, stringsAsFactors = FALSE, header = FALSE )

activitylabels <- read.table(file.path(path, "activity_labels.txt")
                             , col.names = c("classLabels", "activityName")
                             , as.is = T )
features <- read.table(file.path(path, "features.txt")
                       , col.names = c("index", "featureNames"), as.is = T)

# merges the training and the test data tables
data_train_test <- rbind(
                          cbind(raw_bind[[1]],raw_bind[[2]],raw_bind[[3]], group = "train"),
                          cbind(raw_bind[[4]],raw_bind[[5]],raw_bind[[6]], group = "test")
                          )

# rename the merged data table
names(data_train_test) <- c("subject", features[,2], "activity", "group")


# Section 2. Extracts only the measurements on the mean and standard deviation for each measurement.

targetindex <- grep("subject|activity|(mean|std)\\(\\)", names(data_train_test))
data_mean_std <- data_train_test[ , targetindex]

# Section 3. Uses descriptive activity names to name the activities in the data set.

data_mean_std$activity <- factor(data_mean_std$activity
                                   , levels = activitylabels[,1]
                                   , labels = activitylabels[,2])

# Section 4. Appropriately labels the data set with descriptive variable names.


lablevariablenames <- function(x){
  
  colnames <- x
  # eliminate the special characters
  colnames <- gsub("[\\(\\)-]", "", colnames) 
  # eliminate the duplicated words
  colnames <- gsub("BodyBody", "Body", colnames) 
  # replace with full name
  colnames <- gsub("^f", "frequencyDomain", colnames)
  colnames <- gsub("^t", "timeDomain", colnames)
  colnames <- gsub("Acc", "Accelerometer", colnames)
  colnames <- gsub("Gyro", "Gyroscope", colnames)
  colnames <- gsub("Mag", "Magnitude", colnames)
  colnames <- gsub("Freq", "Frequency", colnames)
  colnames <- gsub("mean", "Mean", colnames)
  colnames <- gsub("std", "StandardDeviation", colnames)

  return(colnames)
  
}

names(data_mean_std) <- lablevariablenames(names(data_mean_std))


# Section 5. From the data set in step 4, creates a second, independent
#            tidy data set with the average of each variable for each activity and each subject.

data_means_mean_std <- data_mean_std %>% 
  group_by(subject, activity) %>%
  summarise_each(funs(mean))

# output to file "tidy_data.txt"
write.table(data_means_train_test, "tidy_data.txt"
            , row.names = FALSE
            , quote = FALSE)


# End.

