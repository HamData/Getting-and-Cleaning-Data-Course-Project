library(dplyr)
# extract test data 
X_test <- read.table("./UCI_HAR_Dataset/test/X_test.txt") 
Y_test <- read.table("./UCI_HAR_Dataset/test/Y_test.txt") 
subject_test <- read.table("./UCI_HAR_Dataset/test/subject_test.txt") 

# extract train data 
X_train <- read.table("./UCI_HAR_Dataset/train/X_train.txt") 
Y_train <- read.table("./UCI_HAR_Dataset/train/Y_train.txt") 
subject_train <- read.table("./UCI_HAR_Dataset/train/subject_train.txt")

# read activity labels 
activity_labels <- read.table("./UCI_HAR_Dataset/activity_labels.txt") 

# extract variables from the features file 
var <- read.table("./UCI_HAR_Dataset/features.txt") 

# read activity labels 
activity_labels <- read.table("./UCI_HAR_Dataset/activity_labels.txt") 

# bind x data
X_bound <- rbind(X_train, X_test)

# bind y data
Y_bound <- rbind(Y_train, Y_test)

# bind subject data
Subject_bound <- rbind(subject_train, subject_test) 

# Extracts measurements on the mean and standard deviation for each measurement. 
select_var <- var[grep("mean\\(\\)|std\\(\\)",var[,2]),] 
X_bound <- X_bound[,select_var[,1]] 

# Uses descriptive names to name the activities in the data set 
colnames(Y_bound) <- "activity" 
Y_bound$activitylabel <- factor(Y_bound$activity, labels = as.character(activity_labels[,2])) 
act_label <- Y_bound[,-1] 

# labels the data set with descriptive names. 
colnames(X_bound) <- var[select_var[,1],2] 

# From previous data set creates another independent and tidy data set with an average 
# of each variable for each activity and each subject. 
colnames(Subject_bound) <- "subject" 
All_Data <- cbind(X_bound, act_label, Subject_bound) 
All_mean <- All_Data %>% group_by(act_label, subject) %>% summarise_all(funs(mean))
write.table(All_mean, file = "./UCI_HAR_Dataset/tidydata.txt", row.names = FALSE, col.names = TRUE) 





