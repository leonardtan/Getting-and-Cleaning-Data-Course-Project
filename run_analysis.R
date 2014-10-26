#Prepare Training Data Set
#Load Subject Per Observation
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names=c("subject_id"))

#Load Measurement per Observation
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")

#Load Activity ID Per Obervation
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names=c("activity_id"))  # max = 6

#Adding Common ID for Merging
subject_train$ID <- as.numeric(rownames(subject_train))
x_train$ID <- as.numeric(rownames(x_train))
y_train$ID <- as.numeric(rownames(y_train))

#Merge Subject and Activity ID and Measurement Data Set
train <- merge(subject_train, y_train, all=TRUE)
train <- merge(train, x_train, all=TRUE)


#Prepare Test Data Set
#Load Subject Per Observation
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names=c("subject_id"))

#Load Measurement per Observation
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")

#Load Activity ID Per Obervation
y_test = read.table("UCI HAR Dataset/test/y_test.txt", col.names=c("activity_id"))  # max = 6

#Adding Common ID for Merging
subject_test$ID <- as.numeric(rownames(subject_test))
x_test$ID <- as.numeric(rownames(x_test))
y_test$ID <- as.numeric(rownames(y_test))

#Merge Subject and Activity ID and Measurement Data Set
test <- merge(subject_test, y_test, all=TRUE) 
test <- merge(test, x_test, all=TRUE) 

#Merge Train and Test Dataset
data <- rbind(train, test)

#Remove ID Column from Dataset
drops <- c("ID")
data <- data[,!(names(data) %in% drops)]

#Load Feature Descriptions For Filtering and Variables Labeling
features <- read.table("UCI HAR Dataset/features.txt", col.names=c("feature_id", "feature_label"),)

#Filter Features by only Pattern with Mean or STD (Standard Deviations)
features <- features[grepl("mean\\(\\)", features$feature_label) | grepl("std\\(\\)", features$feature_label), ]

#Remove Column from Dataset that does not include Mean or Standard Deviatons
#Retain First 2 Column of Activity ID and Subject ID
data <- data[, c(c(1, 2), features$feature_id + 2) ]

#Replace Feature Label of "(" and ")" with <Blank>
features$feature_label <- gsub("\\(\\)", "", features$feature_label)

#Replace Feature Label of "-" with "."
features$feature_label <- gsub("-", ".", features$feature_label)

#Rename Column of Data.Frame with Feature Labels
for (i in 1:length(features$feature_label)) {
    colnames(data)[i + 2] <- features$feature_label[i]
}

#Load Activity Labels
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("activity_id", "activity_label"),) 

#Merge Activity Labels with Data.Frame
data <- merge(activity_labels,data)

#Aggregate Data.Frame by 6 Activities and 30 Subjects with the Average of Each Variable
avgdataset <- aggregate(data, by=list(data$subject_id, data$activity_id, data$activity_label), FUN=mean, na.rm=TRUE)

#Tidying Up Aggregated Data (Remove and Rename Columns)
drops <- c("Group.1","Group.2", "activity_label")
avgdataset <- avgdataset[,!(names(avgdataset) %in% drops)]
colnames(avgdataset)[1] <- c("activity_label")

#Save Result to Table
write.table(avgdataset, file = "Result.txt",row.names=FALSE, na="",col.names=TRUE, sep="\t")



