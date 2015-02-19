Getting and Cleaning Data Course Project
========================================
========================================
Samer Hassanie
========================================
========================================

The purpose of this code was to:
===============================
-Merge the training and the test sets to create one data set.
-Extract only the measurements on the mean and standard deviation for each measurement. 
-Use descriptive activity names to name the activities in the data set
-Label the data set with descriptive variable names. 
-Create a second, independent tidy data set with the average of each variable for each activity and each subject.

*All the data sets mentioned above are obtained from the "Human Activity Recognition Using Smartphones Data Set " study.

Files included in the repo:
===========================
- 'README.md'

- 'run_analysis.R' : reads and merges the train and test data sets and creates an 
                     independent data set with a long format.

- 'tidier_data.txt': the independent tidy data set with the average of each variable for 
                     each activity and each subject

Notes:
=====
The directory "UCI HAR Dataset" should be in the working directory in order for the code to work.


