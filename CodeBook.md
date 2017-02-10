Introduction
-----------------
This script contains a function called run_analysis() which performs the following tasks:
1. Downloads the zipped data set file and names it "uciHardDataSet.zip" only if it does not exist
2. Unzips the downloaded "uciHardDataSet.zip" file. Only if it was not extracted previously.
3. Reads Test and train data sets for both X and Y axis into data frames
4. Merges the test and train data sets into one data set.
5. Extracts only the measurements on the mean and standard deviation for each measurement. 
6. Uses descriptive activity names to name the activities in the data set.
7. Appropriately labels the data set with descriptive variable names.
8. From the data set in step 7, create a second, independent tidy data set with the average of each variable
    for each activity and each subject.

----------

run_analysis.R
-------------

To run the function run_analysis(), load the script and call run_analysis() function from the > prompt as such 
> run_analysis()
> 

The UCI HAR Dataset is made up of test and training data of 30 individuals who performed certain activities while wearing a smartphone. These data sets include activity labels, id for the subject performing the activities and measurements for the phone's accelerometer and gyroscope.

----------

Getting and Cleaning the Data approach
-------------------

Initially the data is downloaded in a zipped file format and saved into "uciHardDataSet.zip" file only if it does exist. Then this file is extracted into "UCI HAR Dataset" only if this folder does not exist. 
At this point the *test* data sets for the X, Y axis and the subject data is read. Then *train* data sets for the X, Y axis and the subject data is read. 
When examining both *test* and *train* data frames, we find that they have the same number of columns 561 but different row count 2947 and 10299 respectively.  In this case when merging, we use the rbind() function to merge all of the rows for each test, train and subject data sets. At the end we will end up with three tables for x, y and subject, each containing the training and test data. The number of columns will be 568 including the activity and subject. The data frames are converted into tables and using dplyr package, the data is processed. Then, we group the table by subject and activity then we use summarize_each to find out the mean of each column before outputting the data set into a csv file format called "UCI_HAR_Datatest_tidy.csv"