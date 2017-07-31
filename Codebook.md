---
title: "Codebook"
author: "John Sarena"
date: "31 July 2017"
output: html_document
---

### Code book for Coursera Getting and Cleaning Data course project

This code book describes the data in tidytext.txt

####Description

Reference Human Activity Recognition Using Smartphones Data Set (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Experiments carried out on 30 volunteers (19-48 years of age).  Acvitivities included WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING while wearing a smartphone (Samsung Galaxy S II) on the waist. 70% of the volunteers generated training data and 30% the test data. 

Variables (Note only Mean and Standard Deviation were used)

mean(): Mean value<br />
std(): Standard deviation<br />
mad(): Median absolute deviation <br />
max(): Largest value in array<br />
min(): Smallest value in array<br />
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. <br />
iqr(): Interquartile range <br />
entropy(): Signal entropy<br />
arCoeff(): Autorregresion coefficients with Burg order equal to 4<br />
correlation(): correlation coefficient between two signals<br />
maxInds(): index of the frequency component with largest magnitude<br />
meanFreq(): Weighted average of the frequency components to obtain a mean frequency<br />
skewness(): skewness of the frequency domain signal <br />
kurtosis(): kurtosis of the frequency domain signal <br />
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.<br />
angle(): Angle between to vectors.<br />

The code binds training and the test sets to create one data set. Then it extracts only the measurements on the mean and standard deviation for each measurement.  Activity names from the activities in the data set are used as labels.  Then a second tidy data set is created in tidydata.txt.