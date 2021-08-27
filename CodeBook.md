---
title: "Code Book - Getting and Cleaning Data Course Project"
author: "JP Anderson"
date: "8/26/2021"
output: html_document
---

==================================================================

* Human Activity Recognition Using Smartphones Dataset
* Version 1.0

==================================================================

* Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
* Smartlab - Non Linear Complex Systems Laboratory
* DITEN - Università degli Studi di Genova.
* Via Opera Pia 11A, I-16145, Genoa, Italy.
* activityrecognition@smartlab.ws
* www.smartlab.ws

==================================================================

* Modified by JP Anderson for the Getting and Cleaning Data course project.

==================================================================

Description:
============

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Features were normalized and bounded within [-1,1].

Feature Selection:
==================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (Time-BodyAcc-XYZ and Time-GravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (Time-BodyAccJerk-XYZ and Time-BodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (Time-BodyAccMag, Time-GravityAccMag, Time-BodyAccJerkMag, Time-BodyGyroMag, Time-BodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FFT-BodyAcc-XYZ, FFT-BodyAccJerk-XYZ, FFT-BodyGyro-XYZ, FFT-BodyAccJerkMag, FFT-BodyGyroMag, FFT-BodyGyroJerkMag. (Note the 'FFT' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Variable Derivation:
====================

The set of variables that were estimated from the signals are: 

* Mean: Mean value
* StdDev: Standard deviation

Each variable was then averaged by activity and subject.

Variables Included:
===================

Categorical Variables:

* Subject: Identifies the subject who performed the activity. Its range is from 1 to 30.
* Activity: Identifies the activity that was being performed by the subject.
    + WALKING
    + WALKING_UPSTAIRS
    + WALKING_DOWNSTAIRS
    + SITTING
    + STANDING
    + LAYING

Observed Variables:

* Average-of-Time-BodyAcc-Mean-X
* Average-of-Time-BodyAcc-Mean-Y
* Average-of-Time-BodyAcc-Mean-Z
* Average-of-Time-GravityAcc-Mean-X
* Average-of-Time-GravityAcc-Mean-Y
* Average-of-Time-GravityAcc-Mean-Z
* Average-of-Time-BodyAccJerk-Mean-X
* Average-of-Time-BodyAccJerk-Mean-Y
* Average-of-Time-BodyAccJerk-Mean-Z
* Average-of-Time-BodyGyro-Mean-X
* Average-of-Time-BodyGyro-Mean-Y
* Average-of-Time-BodyGyro-Mean-Z
* Average-of-Time-BodyGyroJerk-Mean-X
* Average-of-Time-BodyGyroJerk-Mean-Y
* Average-of-Time-BodyGyroJerk-Mean-Z
* Average-of-Time-BodyAccMag-Mean
* Average-of-Time-GravityAccMag-Mean
* Average-of-Time-BodyAccJerkMag-Mean
* Average-of-Time-BodyGyroMag-Mean
* Average-of-Time-BodyGyroJerkMag-Mean
* Average-of-FFT-BodyAcc-Mean-X
* Average-of-FFT-BodyAcc-Mean-Y
* Average-of-FFT-BodyAcc-Mean-Z
* Average-of-FFT-BodyAccJerk-Mean-X
* Average-of-FFT-BodyAccJerk-Mean-Y
* Average-of-FFT-BodyAccJerk-Mean-Z
* Average-of-FFT-BodyGyro-Mean-X
* Average-of-FFT-BodyGyro-Mean-Y
* Average-of-FFT-BodyGyro-Mean-Z
* Average-of-FFT-BodyAccMag-Mean
* Average-of-FFT-BodyAccJerkMag-Mean
* Average-of-FFT-BodyGyroMag-Mean
* Average-of-FFT-BodyGyroJerkMag-Mean
* Average-of-Time-BodyAcc-StdDev-X
* Average-of-Time-BodyAcc-StdDev-Y
* Average-of-Time-BodyAcc-StdDev-Z
* Average-of-Time-GravityAcc-StdDev-X
* Average-of-Time-GravityAcc-StdDev-Y
* Average-of-Time-GravityAcc-StdDev-Z
* Average-of-Time-BodyAccJerk-StdDev-X
* Average-of-Time-BodyAccJerk-StdDev-Y
* Average-of-Time-BodyAccJerk-StdDev-Z
* Average-of-Time-BodyGyro-StdDev-X
* Average-of-Time-BodyGyro-StdDev-Y
* Average-of-Time-BodyGyro-StdDev-Z
* Average-of-Time-BodyGyroJerk-StdDev-X
* Average-of-Time-BodyGyroJerk-StdDev-Y
* Average-of-Time-BodyGyroJerk-StdDev-Z
* Average-of-Time-BodyAccMag-StdDev
* Average-of-Time-GravityAccMag-StdDev
* Average-of-Time-BodyAccJerkMag-StdDev
* Average-of-Time-BodyGyroMag-StdDev
* Average-of-Time-BodyGyroJerkMag-StdDev
* Average-of-FFT-BodyAcc-StdDev-X
* Average-of-FFT-BodyAcc-StdDev-Y
* Average-of-FFT-BodyAcc-StdDev-Z
* Average-of-FFT-BodyAccJerk-StdDev-X
* Average-of-FFT-BodyAccJerk-StdDev-Y
* Average-of-FFT-BodyAccJerk-StdDev-Z
* Average-of-FFT-BodyGyro-StdDev-X
* Average-of-FFT-BodyGyro-StdDev-Y
* Average-of-FFT-BodyGyro-StdDev-Z
* Average-of-FFT-BodyAccMag-StdDev
* Average-of-FFT-BodyAccJerkMag-StdDev
* Average-of-FFT-BodyGyroMag-StdDev
* Average-of-FFT-BodyGyroJerkMag-StdDev"

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

