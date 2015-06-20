
# CodeBook

The data set contains this variables:

* __subject__ - ID of volunteer person in experiment
* __label__ - label for activity
* set of measurements whith rules of name, described below.

## Measurements

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals *tAcc-XYZ* and *tGyro-XYZ*. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (*tBodyAcc-XYZ* and *tGravityAcc-XYZ*) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (*tBodyAccJerk-XYZ* and *tBodyGyroJerk-XYZ*). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (*tBodyAccMag*, *tGravityAccMag*, *tBodyAccJerkMag*, *tBodyGyroMag*, *tBodyGyroJerkMag*). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing *fBodyAcc-XYZ*, *fBodyAccJerk-XYZ*, *fBodyGyro-XYZ*, *fBodyAccJerkMag*, *fBodyGyroMag*, *fBodyGyroJerkMag*. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
__'-XYZ'__ is used to denote 3-axial signals in the X, Y and Z directions.

* __tBodyAcc-XYZ__
* __tGravityAcc-XYZ__
* __tBodyAccJerk-XYZ__
* __tBodyGyro-XYZ__
* __tBodyGyroJerk-XYZ__
* __tBodyAccMag__
* __tGravityAccMag__
* __tBodyAccJerkMag__
* __tBodyGyroMag__
* __tBodyGyroJerkMag__
* __fBodyAcc-XYZ__
* __fBodyAccJerk-XYZ__
* __fBodyGyro-XYZ__
* __fBodyAccMag__
* __fBodyAccJerkMag__
* __fBodyGyroMag__
* __fBodyGyroJerkMag__

The set of variables that were estimated from these signals are: 

* __mean__: Mean value
* __std__: Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* __gravityMean__
* __tBodyAccMean__
* __tBodyAccJerkMean__
* __tBodyGyroMean__
* __tBodyGyroJerkMean__

--------

Notes: 

* Features are normalized and bounded within [-1,1].
* The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
* The gyroscope units are rad/seg.

For more information about this dataset please contact: [otetz@me.com](mailto:otetz@me.com)
