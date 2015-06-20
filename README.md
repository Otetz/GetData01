
# Readme

This script is written for the following tasks:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

At first, we need to set working directory.

Then we read all neded raw data file to R objects. Loading features list, and filter it to only needed variables (with names ending by *mean* and *std*).

At next block, we merging testing and training data together, as described in task. And set the names to variables.

Next, we load activity names, for create factor variable from set of integers.

At final, we putting all things together to get resulting tidy data set. Also, creating second data set and write it to disk for upload.

Used software: R studio (Mac), version __"R version 3.2.0 (2015-04-16)"__.
