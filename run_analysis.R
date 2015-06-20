# Don't forget to set working directory
setwd("~/Desktop/Coursera/GetData01")

# Loading raw data
xtest <- read.table("UCI HAR Dataset/test/X_test.txt") # 2947 x 561
ytest <- read.table("UCI HAR Dataset/test/y_test.txt") # 2947 x 1 = Activity type
subjtest <- read.table("UCI HAR Dataset/test/subject_test.txt") # 2947 x 1

xtrain <- read.table("UCI HAR Dataset/train/X_train.txt") # 7352 x 561
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt") # 7352 x 1 = Activity type
subjtrain <- read.table("UCI HAR Dataset/train/subject_train.txt") # 7352 x 1

# Loading features. They contains variables names. But we use not all of them
orig_features <- read.table("UCI HAR Dataset/features.txt") # 561 x 2
features_in_use <- orig_features[grep("(mean|std)\\(", orig_features$V2, ignore.case = TRUE), ]
featuresIdx <- features_in_use[[1]]
featuresNames <- as.character(features_in_use[[2]])
featuresNames <- gsub("-|,", ".", featuresNames)
featuresNames <- gsub("\\(|\\)", "", featuresNames)

# Merge x-sets, using only needed variables
x <- rbind(xtest[, featuresIdx], xtrain[, featuresIdx])
# Setting appropriate names for variables
names(x) <- featuresNames

# Merge subjects, and labels (y) and rename columns.
subj <- rbind(subjtest, subjtrain)
label <- rbind(ytest, ytrain)
names(subj) <- c("subject")
names(label) <- c("label")

# Load activity labels
activity <- read.table("UCI HAR Dataset/activity_labels.txt") # 7352 x 561
names(activity) <- c("y", "Label")

# Free some memory
xtest <- xtrain <- ytest <- ytrain <- subjtest <- subjtrain <- features_in_use <- 
  orig_features <- NULL
rm(xtest, xtrain, ytest, ytrain, subjtest, subjtrain, features_in_use, 
   orig_features)

# Putting all things together -- get resulting tidy data set
df <- cbind(subj, label, x)
df$label <- factor(df$label, levels = activity$y, labels = activity$Label)

# Create second data set
df2 <- aggregate(. ~ subject + label, data = df, mean)
df2 <- df2[order(df2$subject, df2$label), ]

# Write it to disk
write.table(df2, file = "df2.txt", row.name = FALSE)
