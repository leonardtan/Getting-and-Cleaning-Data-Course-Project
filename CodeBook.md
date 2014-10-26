Code Book for run_analysis.R
========================================

Source
------
Source of the Data Set is given from the Course Project which can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Source Information
------------------
Full Description of the Source Data can be view from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Result.Txt
-----------
This file consist of 69 fields which is a aggregation average of all variables that contains "mean" or "std" by 6 Activitiy IDs and 30 Subjects.

1. activity_label
2. activity_id
3. subject_id
4. tBodyAcc.mean.X
5. tBodyAcc.mean.Y
6. tBodyAcc.mean.Z
7. tBodyAcc.std.X
8. tBodyAcc.std.Y
9. tBodyAcc.std.Z
10. tGravityAcc.mean.X
11. tGravityAcc.mean.Y
12. tGravityAcc.mean.Z
13. tGravityAcc.std.X
14. tGravityAcc.std.Y
15. tGravityAcc.std.Z
16. tBodyAccJerk.mean.X
17. tBodyAccJerk.mean.Y
18. tBodyAccJerk.mean.Z
19. tBodyAccJerk.std.X
20. tBodyAccJerk.std.Y
21. tBodyAccJerk.std.Z
22. tBodyGyro.mean.X
23. tBodyGyro.mean.Y
24. tBodyGyro.mean.Z
25. tBodyGyro.std.X
26. tBodyGyro.std.Y
27. tBodyGyro.std.Z
28. tBodyGyroJerk.mean.X
29. tBodyGyroJerk.mean.Y
30. tBodyGyroJerk.mean.Z
31. tBodyGyroJerk.std.X
32. tBodyGyroJerk.std.Y
33. tBodyGyroJerk.std.Z
34. tBodyAccMag.mean
35. tBodyAccMag.std
36. tGravityAccMag.mean
37. tGravityAccMag.std
38. tBodyAccJerkMag.mean
39. tBodyAccJerkMag.std
40. tBodyGyroMag.mean
41. tBodyGyroMag.std
42. tBodyGyroJerkMag.mean
43. tBodyGyroJerkMag.std
44. fBodyAcc.mean.X
45. fBodyAcc.mean.Y
46. fBodyAcc.mean.Z
47. fBodyAcc.std.X
48. fBodyAcc.std.Y
49. fBodyAcc.std.Z
50. fBodyAccJerk.mean.X
51. fBodyAccJerk.mean.Y
52. fBodyAccJerk.mean.Z
53. fBodyAccJerk.std.X
54. fBodyAccJerk.std.Y
55. fBodyAccJerk.std.Z
56. fBodyGyro.mean.X
57. fBodyGyro.mean.Y
58. fBodyGyro.mean.Z
59. fBodyGyro.std.X
60. fBodyGyro.std.Y
61. fBodyGyro.std.Z
62. fBodyAccMag.mean
63. fBodyAccMag.std
64. fBodyBodyAccJerkMag.mean
65. fBodyBodyAccJerkMag.std
66. fBodyBodyGyroMag.mean
67. fBodyBodyGyroMag.std
68. fBodyBodyGyroJerkMag.mean
69. fBodyBodyGyroJerkMag.std

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

