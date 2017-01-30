## Getting and Cleaning Data - Programming Assignment (Sathish Sankaran)

### Introduction

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy
data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project.
You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for
performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you
performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo
explains how all of the scripts work and how they are connected.

### Original Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on
the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a
constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly
partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding
windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion
components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed
to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of
features was obtained by calculating variables from the time and frequency domain.

### Original Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### Tidy Data Set Attribute Information (Data, Variables and Transformations):

Tidy data set has 35 obs. of 82 variables.

Each row corresponds to the average measurement of a subject performing a particular activity (averaged over multiple observations).

The following variables are availabled as column names:
 $ ActivityID                     : int  1 1 1 1 1 2 2 2 2 2 ...
 $ SubjectID                      : int  26 27 28 29 30 12 13 18 20 24 ...
 $ tBodyAcc-mean()-X              : num  0.277 0.277 0.278 0.279 0.276 ...
 $ tBodyAcc-mean()-Y              : num  -0.0184 -0.0168 -0.0192 -0.0185 -0.0176 ...
 $ tBodyAcc-mean()-Z              : num  -0.11 -0.111 -0.11 -0.109 -0.106 ...
 $ tBodyAcc-std()-X               : num  -0.518 -0.661 -0.649 -0.574 -0.619 ...
 $ tBodyAcc-std()-Y               : num  -0.476 -0.63 -0.574 -0.598 -0.522 ...
 $ tBodyAcc-std()-Z               : num  -0.636 -0.683 -0.686 -0.606 -0.529 ...
 $ tGravityAcc-mean()-X           : num  0.67 0.627 0.624 0.683 0.695 ...
 $ tGravityAcc-mean()-Y           : num  0.0629 0.0322 -0.1476 0.1155 0.0535 ...
 $ tGravityAcc-mean()-Z           : num  0.194 0.141 -0.047 0.208 0.186 ...
 $ tGravityAcc-std()-X            : num  -0.97 -0.975 -0.974 -0.973 -0.974 ...
 $ tGravityAcc-std()-Y            : num  -0.954 -0.973 -0.96 -0.965 -0.952 ...
 $ tGravityAcc-std()-Z            : num  -0.952 -0.959 -0.946 -0.942 -0.93 ...
 $ tBodyAccJerk-mean()-X          : num  0.0805 0.0768 0.0807 0.0788 0.0737 ...
 $ tBodyAccJerk-mean()-Y          : num  0.00484 0.00618 0.01382 0.009 0.00776 ...
 $ tBodyAccJerk-mean()-Z          : num  -0.008689 -0.00495 0.000824 -0.003553 0.000255 ...
 $ tBodyAccJerk-std()-X           : num  -0.597 -0.701 -0.681 -0.623 -0.682 ...
 $ tBodyAccJerk-std()-Y           : num  -0.598 -0.675 -0.652 -0.635 -0.663 ...
 $ tBodyAccJerk-std()-Z           : num  -0.735 -0.784 -0.801 -0.794 -0.782 ...
 $ tBodyGyro-mean()-X             : num  -0.0182 -0.0609 -0.0645 -0.0102 -0.034 ...
 $ tBodyGyro-mean()-Y             : num  -0.0837 -0.0552 -0.0471 -0.0883 -0.0718 ...
 $ tBodyGyro-mean()-Z             : num  0.0869 0.1089 0.1008 0.0882 0.083 ...
 $ tBodyGyro-std()-X              : num  -0.708 -0.796 -0.74 -0.735 -0.673 ...
 $ tBodyGyro-std()-Y              : num  -0.749 -0.802 -0.741 -0.635 -0.544 ...
 $ tBodyGyro-std()-Z              : num  -0.63 -0.674 -0.67 -0.714 -0.592 ...
 $ tBodyGyroJerk-mean()-X         : num  -0.0972 -0.0893 -0.0881 -0.1007 -0.0933 ...
 $ tBodyGyroJerk-mean()-Y         : num  -0.0403 -0.045 -0.0448 -0.0464 -0.0415 ...
 $ tBodyGyroJerk-mean()-Z         : num  -0.0543 -0.0586 -0.0608 -0.0528 -0.0488 ...
 $ tBodyGyroJerk-std()-X          : num  -0.661 -0.821 -0.721 -0.736 -0.781 ...
 $ tBodyGyroJerk-std()-Y          : num  -0.796 -0.837 -0.825 -0.854 -0.8 ...
 $ tBodyGyroJerk-std()-Z          : num  -0.718 -0.783 -0.77 -0.77 -0.764 ...
 $ tBodyAccMag-mean()             : num  -0.498 -0.628 -0.61 -0.554 -0.542 ...
 $ tBodyAccMag-std()              : num  -0.512 -0.678 -0.636 -0.579 -0.591 ...
 $ tGravityAccMag-mean()          : num  -0.498 -0.628 -0.61 -0.554 -0.542 ...
 $ tGravityAccMag-std()           : num  -0.512 -0.678 -0.636 -0.579 -0.591 ...
 $ tBodyAccJerkMag-mean()         : num  -0.62 -0.702 -0.689 -0.665 -0.699 ...
 $ tBodyAccJerkMag-std()          : num  -0.593 -0.696 -0.688 -0.62 -0.661 ...
 $ tBodyGyroMag-mean()            : num  -0.617 -0.694 -0.649 -0.602 -0.514 ...
 $ tBodyGyroMag-std()             : num  -0.688 -0.755 -0.711 -0.654 -0.578 ...
 $ tBodyGyroJerkMag-mean()        : num  -0.748 -0.823 -0.789 -0.802 -0.787 ...
 $ tBodyGyroJerkMag-std()         : num  -0.77 -0.837 -0.806 -0.84 -0.811 ...
 $ fBodyAcc-mean()-X              : num  -0.558 -0.681 -0.654 -0.58 -0.638 ...
 $ fBodyAcc-mean()-Y              : num  -0.513 -0.641 -0.585 -0.588 -0.561 ...
 $ fBodyAcc-mean()-Z              : num  -0.664 -0.715 -0.715 -0.681 -0.638 ...
 $ fBodyAcc-std()-X               : num  -0.504 -0.655 -0.648 -0.573 -0.612 ...
 $ fBodyAcc-std()-Y               : num  -0.492 -0.65 -0.595 -0.631 -0.535 ...
 $ fBodyAcc-std()-Z               : num  -0.65 -0.692 -0.696 -0.603 -0.514 ...
 $ fBodyAcc-meanFreq()-X          : num  -0.266 -0.17 -0.218 -0.165 -0.301 ...
 $ fBodyAcc-meanFreq()-Y          : num  -0.00118 0.09597 -0.06523 0.12808 -0.08353 ...
 $ fBodyAcc-meanFreq()-Z          : num  0.0945 0.1332 0.019 0.0886 -0.0367 ...
 $ fBodyAccJerk-mean()-X          : num  -0.617 -0.715 -0.687 -0.63 -0.688 ...
 $ fBodyAccJerk-mean()-Y          : num  -0.623 -0.695 -0.671 -0.641 -0.674 ...
 $ fBodyAccJerk-mean()-Z          : num  -0.724 -0.769 -0.779 -0.768 -0.756 ...
 $ fBodyAccJerk-std()-X           : num  -0.612 -0.713 -0.704 -0.652 -0.705 ...
 $ fBodyAccJerk-std()-Y           : num  -0.598 -0.676 -0.655 -0.656 -0.674 ...
 $ fBodyAccJerk-std()-Z           : num  -0.745 -0.797 -0.822 -0.818 -0.808 ...
 $ fBodyAccJerk-meanFreq()-X      : num  -0.0821 -0.0105 -0.0342 0.0108 -0.1302 ...
 $ fBodyAccJerk-meanFreq()-Y      : num  -0.246 -0.1159 -0.2776 -0.0816 -0.2934 ...
 $ fBodyAccJerk-meanFreq()-Z      : num  -0.1535 -0.06816 -0.12606 -0.00953 -0.16527 ...
 $ fBodyGyro-mean()-X             : num  -0.624 -0.769 -0.674 -0.686 -0.669 ...
 $ fBodyGyro-mean()-Y             : num  -0.747 -0.795 -0.747 -0.736 -0.632 ...
 $ fBodyGyro-mean()-Z             : num  -0.614 -0.703 -0.674 -0.689 -0.618 ...
 $ fBodyGyro-std()-X              : num  -0.735 -0.806 -0.762 -0.753 -0.678 ...
 $ fBodyGyro-std()-Y              : num  -0.753 -0.809 -0.741 -0.589 -0.503 ...
 $ fBodyGyro-std()-Z              : num  -0.67 -0.697 -0.7 -0.749 -0.623 ...
 $ fBodyGyro-meanFreq()-X         : num  -0.01744 -0.08917 -0.15164 0.00201 -0.23183 ...
 $ fBodyGyro-meanFreq()-Y         : num  -0.0703 -0.0527 -0.2706 -0.2539 -0.3582 ...
 $ fBodyGyro-meanFreq()-Z         : num  -0.03017 -0.00708 -0.08969 0.02035 -0.19995 ...
 $ fBodyAccMag-mean()             : num  -0.527 -0.667 -0.629 -0.589 -0.603 ...
 $ fBodyAccMag-std()              : num  -0.58 -0.735 -0.697 -0.639 -0.65 ...
 $ fBodyAccMag-meanFreq()         : num  0.0568 0.1918 0.018 0.1628 -0.0286 ...
 $ fBodyBodyAccJerkMag-mean()     : num  -0.596 -0.689 -0.675 -0.61 -0.658 ...
 $ fBodyBodyAccJerkMag-std()      : num  -0.594 -0.708 -0.706 -0.636 -0.667 ...
 $ fBodyBodyAccJerkMag-meanFreq() : num  0.1323 0.2467 0.1736 0.2275 0.0833 ...
 $ fBodyBodyGyroMag-mean()        : num  -0.71 -0.786 -0.738 -0.722 -0.672 ...
 $ fBodyBodyGyroMag-std()         : num  -0.728 -0.778 -0.744 -0.671 -0.594 ...
 $ fBodyBodyGyroMag-meanFreq()    : num  0.00296 0.01149 -0.123 -0.04465 -0.20376 ...
 $ fBodyBodyGyroJerkMag-mean()    : num  -0.778 -0.838 -0.807 -0.84 -0.812 ...
 $ fBodyBodyGyroJerkMag-std()     : num  -0.776 -0.848 -0.818 -0.851 -0.824 ...
 $ fBodyBodyGyroJerkMag-meanFreq(): num  0.10475 0.20368 -0.00201 0.21243 0.04325 ...
 $ ActivityLabel                  : Factor w/ 6 levels "LAYING","SITTING",..: 4 4 4 4 4 6 6 6 6 6 ...