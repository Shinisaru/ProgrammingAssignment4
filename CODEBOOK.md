# Getting and Cleaning Data Course Project Code Book
This code book contains description of variables used in _aggregated_data.txt_ data set.
This dataset is aggregated and filtered version of original dataset from Non Linear Complex Systems Laboratory.

The original data set is available at:

	* https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The description for original data set is available within downloadable archive and at:

	* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Aggregated data set variables

### Subject
	* Numerical identifier of the subject, who performed typed activity recorded in data set; ranges 1...30

### Activity
	* Codename for specific activity type; available types include:
		1. WALKING
		2. WALKING_UPSTAIRS
		3. WALKING_DOWNSTAIRS
		4. SITTING
		5. STANDING
		6. LAYING
	
### Activity measurements
The variables listed below represent average values of acceleration signals for both test and train sets of original data sets.

#### Acceleration signals
The average aggregated values for acceleration signal from the smartphone accelerometer in standard gravity units _g_.
In case when measurement name ends with _X_, _Y_ or _Z_, the related measurement represents acceleration signal for _X_, _Y_ or _Z_ axis respectfully.

	*  Triaxial body acceleration:
		* tBodyAcc-mean()-X
		* tBodyAcc-mean()-Y
		tBodyAcc-mean()-Z
	* tGravityAcc-mean
		* tGravityAcc-mean()-X
		* tGravityAcc-mean()-Y
		* tGravityAcc-mean()-Z
	* Triaxial Angular velocity from the gyroscope:
		* tBodyAccJerk-mean()-X 
		* tBodyAccJerk-mean()-Y 
		* tBodyAccJerk-mean()-Z 
	* tBodyGyro-mean:
		* tBodyGyro-mean()-X 
		* tBodyGyro-mean()-Y
		* tBodyGyro-mean()-Z
	* tBodyGyroJerk-mean:
		* tBodyGyroJerk-mean()-X
		* tBodyGyroJerk-mean()-Y
		* tBodyGyroJerk-mean()-Z
	* fBodyAcc-mean:
		* fBodyAcc-mean()-X
		* fBodyAcc-mean()-Y
		* fBodyAcc-mean()-Z 
	* fBodyAccJerk-mean:
		* fBodyAccJerk-mean()-X 
		* fBodyAccJerk-mean()-Y 
		* fBodyAccJerk-mean()-Z 
	* fBodyGyro-mean:
		* fBodyGyro-mean()-X
		* fBodyGyro-mean()-Y 
		* fBodyGyro-mean()-Z 
	* tBodyAccMag-mean() 
	* tGravityAccMag-mean() 
	* tBodyAccJerkMag-mean()
	* tBodyGyroMag-mean()
	* tBodyGyroJerkMag-mean()
	* fBodyAccMag-mean() 
	* fBodyBodyAccJerkMag-mean()
	* fBodyBodyGyroMag-mean()
	* fBodyBodyGyroJerkMag-mean() 

#### Standard deviations for acceleration signals
The average aggregated  standard deviation values for acceleration signal from the smartphone accelerometer in standard gravity units _g_.
In case when measurement name ends with _X_, _Y_ or _Z_, the related measurement represents acceleration signal for _X_, _Y_ or _Z_ axis respectfully.

	* tBodyAcc-std:
		* tBodyAcc-std()-X 
		* tBodyAcc-std()-Y
		* tBodyAcc-std()-Z 
	* tGravityAcc-std:
		* tGravityAcc-std()-X
		* tGravityAcc-std()-Y
		* tGravityAcc-std()-Z
	* tBodyAccJerk-std:
		* tBodyAccJerk-std()-X
		* tBodyAccJerk-std()-Y
		* tBodyAccJerk-std()-Z 
	* tBodyGyro-std:
		* tBodyGyro-std()-X
		* tBodyGyro-std()-Y
		* tBodyGyro-std()-Z
	* tBodyGyroJerk-std:
		* tBodyGyroJerk-std()-X 
		* tBodyGyroJerk-std()-Y 
		* tBodyGyroJerk-std()-Z
	* fBodyAcc-std:
		* fBodyAcc-std()-X
		* fBodyAcc-std()-Y
		* fBodyAcc-std()-Z
	* fBodyAccJerk-std:
		* fBodyAccJerk-std()-X
		* fBodyAccJerk-std()-Y
		* fBodyAccJerk-std()-Z
	* fBodyGyro-std:
		* fBodyGyro-std()-X
		* fBodyGyro-std()-Y
		* fBodyGyro-std()-Z
	* tBodyAccMag-std()
	* tGravityAccMag-std()
	* tBodyAccJerkMag-std() 
	* tBodyGyroMag-std() 
	* tBodyGyroJerkMag-std()
	* fBodyAccMag-std()
	* fBodyBodyAccJerkMag-std()
	* fBodyBodyGyroMag-std()
	* fBodyBodyGyroJerkMag-std()