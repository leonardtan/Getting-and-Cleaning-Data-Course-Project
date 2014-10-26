Getting-and-Cleaning-Data-Course-Project
========================================

Introduction
------------
This repository comprises the solution for Course Project of Getting and Cleaning Data.  The Source Data is also included in this table with the intention to allow the evaluator to fork and run the R code as intended. 

Source
------
Source of the Data Set is given from the Course Project which can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Source Information
------------------
Full Description of the Source Data can be view from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Content of Repository
---------------------
This repository consist of 4 files and a folder containing the source data.

1. CodeBook.md     | Summary on the coding approach taken
2. README.md       | The file you are reading now
3. Result.txt      | Answer to Step 5 of this course project
4. run_analysis.R  | The source code of this course project
5. UCI HAR Dataset | Data Source

Pseudocode
----------
1. Load Train and Test Data Files into Data Frame for Observations for Subject, Activity and Measurement
2. Create Common Index for Subject, Activity and Measurements
3. Merge all Subject, Activity and Measure into a Data Frame per Train and Test Data Frame
4. Consolidate Train and Test into a Single Data Frame
5. Filter Data Frame with only Variables that contains Mean or Standard Deviation
6. Rename Columns with more meaningful labels
7. Merge Activity Labels to Data Frame
8. Aggregate Data Frame by Subject and Activity
9. Tidy up Aggregated Data Frame by removing and renaming columns
10. Write Final DataFrame to File

Things to note
--------------
Please remember to check your working directories using 'getwd()' before running run_analysis.R to avoid any issues when loading the files.  You can use 'setwd()' to set the working directory.

