library(dplyr)

# Download and unzip the data
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "data.zip")
unzip("data.zip")

# Load and combine the train and test data sets
train_data_x = read.table("UCI HAR Dataset/train/X_train.txt")
train_data_y = read.table("UCI HAR Dataset/train/Y_train.txt")
colnames(train_data_y) = c("Activity")
train_data = cbind(train_data_y, train_data_x)
test_data_x = read.table("UCI HAR Dataset/test/X_test.txt")
test_data_y = read.table("UCI HAR Dataset/test/Y_test.txt")
colnames(test_data_y) = c("Activity")
test_data = cbind(test_data_y, test_data_x)
all_data = rbind(train_data, test_data)

# Load the column names and update the data set with them
column_names = read.table("UCI HAR Dataset/features.txt")
colnames(all_data)[2:ncol(all_data)] = column_names[,2]

# Filter the columns to only activity, means and standard deviations
filtered = all_data %>% select(c(matches("Activity"), contains("mean()"), contains("std()")))

# Convert activity numbers to activity names
filtered$Activity = recode(filtered$Activity, `1` = "WALKING", `2` = "WALKING_UPSTAIRS",`3` = "WALKING_DOWNSTAIRS", `4` = "SITTING", `5` = "STANDING", `6` = "LAYING")

# Clean up the column names
colnames(filtered) = gsub(x = colnames(filtered), pattern = "^t", replacement = "Time-")
colnames(filtered) = gsub(x = colnames(filtered), pattern = "^f", replacement = "FFT-")
colnames(filtered) = gsub(x = colnames(filtered), pattern = "mean\\(\\)", replacement = "Mean")
colnames(filtered) = gsub(x = colnames(filtered), pattern = "std\\(\\)", replacement = "StdDev")
colnames(filtered) = gsub(x = colnames(filtered), pattern = "BodyBody", replacement = "Body")

# Add the subject data
subject_train = read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test =  read.table("UCI HAR Dataset/test/subject_test.txt")
subject_all = rbind(subject_train, subject_test)
add_subjects = cbind(subject_all, filtered)
colnames(add_subjects)[1] = "Subject"

# Group by subject and activity
grouped = add_subjects %>% group_by(Subject, Activity)

# Take the averages by subject and activity
averages = grouped %>% summarize_all(mean)
colnames(averages)[3:ncol(averages)] = paste0("Average-of-", colnames(averages)[3:ncol(averages)])

# Save the grouped averages data set
write.table(averages, "grouped_averages.txt", row.names = FALSE)
