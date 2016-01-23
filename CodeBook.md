# Code book

## Description

This is the code book for cleaned dataset derived from "Human Activity Recognition Using Smartphones Data Set" which was originally made avaiable [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


## Variable Description

### Orignial data file

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

### Data cleaning process

1. Merge train and text data file & include "activity" and "subject" variable
2. Extract variables on "mean" and "standard deviation" measurements
3. Rename variables by using more descriptive words
4. Group variable by "activity" and "subject"
5. Create summary statistics for dataset in step 4.

### Cleaned dataset

For the following variable names, most of variables are described as its name. Just note that X, Y, Z denote 3-axial signals in the X, Y and Z directions. More info please refers to Readme of dataset.

* "activity": class labels with their activity name
* "subject": who performed the activity for each window sample. Its range is from 1 to 30. 
* "Time-Body-Acceleration-mean-X"
* "Time-Body-Acceleration-mean-Y"
* "Time-Body-Acceleration-mean-Z"
* "Time-Body-Acceleration-std-X"
* "Time-Body-Acceleration-std-Y"
* "Time-Body-Acceleration-std-Z"
* "Time-Gravity-Acceleration-mean-X"
* "Time-Gravity-Acceleration-mean-Y"
* "Time-Gravity-Acceleration-mean-Z"
* "Time-Gravity-Acceleration-std-X"
* "Time-Gravity-Acceleration-std-Y"
* "Time-Gravity-Acceleration-std-Z"
* "Time-Body-Acceleration-Jerk-mean-X"
* "Time-Body-Acceleration-Jerk-mean-Y"
* "Time-Body-Acceleration-Jerk-mean-Z"
* "Time-Body-Acceleration-Jerk-std-X"
* "Time-Body-Acceleration-Jerk-std-Y"
* "Time-Body-Acceleration-Jerk-std-Z"
* "Time-Body-Gyro-mean-X"
* "Time-Body-Gyro-mean-Y"
* "Time-Body-Gyro-mean-Z"
* "Time-Body-Gyro-std-X"
* "Time-Body-Gyro-std-Y"
* "Time-Body-Gyro-std-Z"
* "Time-Body-Gyro-Jerk-mean-X"
* "Time-Body-Gyro-Jerk-mean-Y"
* "Time-Body-Gyro-Jerk-mean-Z"
* "Time-Body-Gyro-Jerk-std-X"
* "Time-Body-Gyro-Jerk-std-Y"
* "Time-Body-Gyro-Jerk-std-Z"
* "Time-Body-Acceleration-Magnitude-mean"
* "Time-Body-Acceleration-Magnitude-std"
* "Time-Gravity-Acceleration-Magnitude-mean"
* "Time-Gravity-Acceleration-Magnitude-std"
* "Time-Body-Acceleration-Jerk-Magnitude-mean"
* "Time-Body-Acceleration-Jerk-Magnitude-std"
* "Time-Body-Gyro-Magnitude-mean"
* "Time-Body-Gyro-Magnitude-std"
* "Time-Body-Gyro-Jerk-Magnitude-mean"
* "Time-Body-Gyro-Jerk-Magnitude-std"
* "Frequency-Body-Acceleration-mean-X"
* "Frequency-Body-Acceleration-mean-Y"
* "Frequency-Body-Acceleration-mean-Z"
* "Frequency-Body-Acceleration-std-X"
* "Frequency-Body-Acceleration-std-Y"
* "Frequency-Body-Acceleration-std-Z"
* "Frequency-Body-Acceleration-Jerk-mean-X"
* "Frequency-Body-Acceleration-Jerk-mean-Y"
* "Frequency-Body-Acceleration-Jerk-mean-Z"
* "Frequency-Body-Acceleration-Jerk-std-X"
* "Frequency-Body-Acceleration-Jerk-std-Y"
* "Frequency-Body-Acceleration-Jerk-std-Z"
* "Frequency-Body-Gyro-mean-X"
* "Frequency-Body-Gyro-mean-Y"
* "Frequency-Body-Gyro-mean-Z"
* "Frequency-Body-Gyro-std-X"
* "Frequency-Body-Gyro-std-Y"
* "Frequency-Body-Gyro-std-Z"
* "Frequency-Body-Acceleration-Magnitude-mean"
* "Frequency-Body-Acceleration-Magnitude-std"
* "Frequency-Body-Body-Acceleration-Jerk-Magnitude-mean"
* "Frequency-Body-Body-Acceleration-Jerk-Magnitude-std"
* "Frequency-Body-Body-Gyro-Magnitude-mean"
* "Frequency-Body-Body-Gyro-Magnitude-std"
* "Frequency-Body-Body-Gyro-Jerk-Magnitude-mean"
* "Frequency-Body-Body-Gyro-Jerk-Magnitude-std"

