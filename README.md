## Getting and Cleaning Data - Programming Assignment (Sathish Sankaran)

### Introduction

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy
data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project.
You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for
performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you
performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo
explains how all of the scripts work and how they are connected.

### Read all data and merge training and test data sets

Load the downloaded files and merge data sets. Also, load features and activity labels into separate data frames.

df.xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
df.xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
df.xcombined <- rbind(df.xtrain,df.xtest)

df.ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
df.ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
df.ycombined <- rbind(df.ytrain,df.ytest)

df.subtrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
df.subtest <- read.table("UCI HAR Dataset/test/subject_test.txt")
df.subcombined <- rbind(df.subtrain,df.subtest)

df.features <- read.table("UCI HAR Dataset/features.txt")
df.activitylabel <- read.table("UCI HAR Dataset/activity_labels.txt")

### Extract features that are mean or std of the measurements

Any variable that has the words "mean" or "std" are selected.

matchcols <- grep("mean|std",df.features$V2)
cols <- df.features$V1[matchcols]
df.xnew <- df.xcombined[,cols]

### Descriptive variable names

Look up "features.txt" file for the variable names and set as column names.

colnames(df.xnew) <- df.features$V2[matchcols]
colnames(df.ycombined) <- c("ActivityID")
colnames(df.activitylabel) <- c("ActivityID","ActivityLabel")
colnames(df.subcombined) <- c("SubjectID")

### Descriptive activity names

Look up "activity_labels.txt" file for the activity names and merge data frames

df.ynew <- merge(df.ycombined,df.activitylabel,"ActivityID",sort=FALSE)

### Merge subject, x and y data together

Column bind all data together.

df.new <- cbind(df.subcombined,df.xnew,df.ynew)

### Group by activity and subject; calculate average

Group by Activity and Subject, and calculate average of all columns; write the tidy data set to a .csv file

df.tidy <- df.new %>% group_by(ActivityID,SubjectID) %>% summarise_all(funs(mean))
df.tidy <- df.tidy[,1:81]
df.tidy <- merge(df.tidy,df.activitylabel,"ActivityID",sort=FALSE)
write.csv(df.tidy,file="TidyDataSet.csv",row.names = FALSE)

