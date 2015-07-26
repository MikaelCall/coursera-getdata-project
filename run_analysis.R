library(plyr)


mergeData <- function(directory) {
  X_train <- read.table(file.path(directory, "train", "X_train.txt"),       colClasses = "numeric")
  y_train <- read.table(file.path(directory, "train", "y_train.txt"),       colClasses = "factor")
  z_train <- read.table(file.path(directory, "train", "subject_train.txt"), colClasses = "numeric")
  
  X_test  <- read.table(file.path(directory, "test",  "X_test.txt"),       colClasses = "numeric")
  y_test  <- read.table(file.path(directory, "test",  "y_test.txt"),       colClasses = "factor")
  z_test  <- read.table(file.path(directory, "test",  "subject_test.txt"), colClasses = "numeric")
    
  X <- rbind(X_train, X_test)
  y <- rbind(y_train, y_test)
  subject <- rbind(z_train, z_test)
  
  cbind(X, subject, y)
}  


# 1. Merges the training and the test sets to create one data set.
directory <- "UCI HAR Dataset"
all.data <- mergeData(directory)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
feature.columns <- grep("-(mean|std)\\(\\)", readLines(file.path(directory, "features.txt")))
original.label.column <- ncol(all.data)
original.subject.column <- ncol(all.data) - 1
valid.columns <- append(feature.columns, c(original.subject.column, original.label.column))
valid.data <- all.data[, valid.columns]

# 3. Uses descriptive activity names to name the activities in the data set
activity.file <- file.path(directory, "activity_labels.txt")
label.names <- read.table(activity.file, col.names = c("label", "activity"), colClasses = "character")
label.column <- ncol(valid.data)
activity.factors <- mapvalues(valid.data[, label.column], from = label.names$label, to = label.names$activity)
valid.data[, label.column] <- activity.factors

# 4. Appropriately labels the data set with descriptive variable names. 
feature.names <- read.table(file.path(directory, "features.txt"), colClasses = "character")[feature.columns, 2]
variable.names <- gsub("-(.*)\\(\\)-?", "\\.\\1", append(feature.names, c("subject", "activity")))
colnames(valid.data) <- variable.names


# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.
activity.subject.averages <- subset(aggregate(valid.data, list(valid.data$activity, valid.data$subject), mean), 
                                    select = - c(subject, activity))
colnames(activity.subject.averages)[c(1, 2)] <- c("Activity", "Subject")
