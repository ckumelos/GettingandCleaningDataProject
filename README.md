Creaing a tidy dataset of averages for each test subject and activity on the data from:

	Human Activity Recognition Using Smartphones Dataset
	Version 1.0
	==================================================================
	Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
	Smartlab - Non Linear Complex Systems Laboratory
	DITEN - Università degli Studi di Genova.
	Via Opera Pia 11A, I-16145, Genoa, Italy.
	activityrecognition@smartlab.ws
	www.smartlab.ws

All the original data can be downloaded from http://archive.ics.uci.edu/ml/machine-learning-databases/00240/

Please be sure to read the README file in that data to get in idea of what we began with.


The original data had this information included: "The experiments have been carried out with a group of 30 volunteers 
within an age bracket of 19-48 years. Each person performed six activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II)
on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular 
velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset 
has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data."[1]

The R code in this repo took those two sets of data, the test data and the training data, and combined them to create one large set of data.
Only the data on Means, mean(), and Standard Deviations, std(), were then included. The activitis were renamed to be descriptive rather than 
numbers and the columns were renamed to also be descriptive according to the original data files. The data was summarized according to each 
subject and each activity to a mean of each activity and each subject.

The R code to create this dataset of means is called run_analysis.R
The dataset created is called tidydata1
The code should be run in RStudio, be sure to load library plyr.


[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
