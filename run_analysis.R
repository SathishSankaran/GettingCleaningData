rm(list=ls())
cat("\014")

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

# Extract features that are mean or std of the measurements
matchcols <- grep("mean|std",df.features$V2)
cols <- df.features$V1[matchcols]
df.xnew <- df.xcombined[,cols]

# Desciptive variable names
colnames(df.xnew) <- df.features$V2[matchcols]
colnames(df.ycombined) <- c("ActivityID")
colnames(df.activitylabel) <- c("ActivityID","ActivityLabel")
colnames(df.subcombined) <- c("SubjectID")

# Descriptive activity names
df.ynew <- merge(df.ycombined,df.activitylabel,"ActivityID",sort=FALSE)

# Merge subject, x and y datasets
df.new <- cbind(df.subcombined,df.xnew,df.ynew)

# Group by activity and subject; calculate average
df.tidy <- df.new %>% group_by(ActivityID,SubjectID) %>% summarise_all(funs(mean))
df.tidy <- df.tidy[,1:81]
df.tidy <- merge(df.tidy,df.activitylabel,"ActivityID",sort=FALSE)

# Write tidy dataset
write.csv(df.tidy,file="TidyDataSet.csv",row.names = FALSE)
