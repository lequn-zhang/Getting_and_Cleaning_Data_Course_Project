# Load required library 
if ("dplyr" %in% rownames(installed.packages())) {
  library("dplyr")
} else {
  install.packages("dplyr")
  library("dplyr")
}
  
# Read required data 
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
trainLabel <- read.table("./UCI HAR Dataset/train/y_train.txt")
testLabel <- read.table("./UCI HAR Dataset/test/y_test.txt")
trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
varNames <- read.table("./UCI HAR Dataset/features.txt", 
                       stringsAsFactors = F)$V2
labelNames <- read.table("./UCI HAR Dataset/activity_labels.txt")

# 1. Merges the training and the test sets to create one data set
merged_data <- bind_cols(bind_rows(train, test), 
                         bind_rows(trainLabel, testLabel), 
                         bind_rows(trainSubject, testSubject))

# 2. Extracts only the measurements on the mean and standard deviation for each 
#    measurement.
colnames(merged_data) <- c(varNames, "activity", "subject")
selectedVar <- 
  c(grep("mean\\()|std\\()", varNames, value = T), "activity", "subject")
measure_mean_std <- merged_data[, selectedVar]

# 3. Uses descriptive activity names to name the activities in the data set
measure_mean_std <- measure_mean_std %>% 
  mutate(activity = labelNames$V2[activity])

# 4. Appropriately labels the data set with descriptive variable names.
cleanName <- function(x) {
  # Clean variable names given in Human Activity Recognition Using Smartphones 
  # Dataset
  tmp <- x
  tmp <- gsub("[[:punct:]]", "", tmp)
  tmp <- sub("^t", "Time-", tmp)
  tmp <- sub("^f", "Frequency-", tmp)
  tmp <- gsub("Body", "Body-", tmp)
  tmp <- gsub("Acc", "Acceleration-", tmp)
  tmp <- gsub("Gravity", "Gravity-", tmp)
  tmp <- gsub("Jerk", "Jerk-", tmp)
  tmp <- gsub("Mag", "Magnitude-", tmp)
  tmp <- gsub("Gyro", "Gyro-", tmp)
  tmp <- sub("([X|Y|Z])$", "-\\1", tmp)
  return(tmp)
}

colnames(measure_mean_std) <- cleanName(colnames(measure_mean_std))


# 5. Creates a second, independent tidy data set with the average of each 
#    variable for each activity and each subject.
mean_by_activity_subject <- measure_mean_std %>%
  group_by(activity, subject) %>%
  select(-activity, -subject) %>%
  summarize_each(funs(mean))


write.table(mean_by_activity_subject, file = "./mean_by_activity_subject.txt", 
            row.names = F)
