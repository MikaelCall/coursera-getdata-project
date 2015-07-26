# CodeBook - a wearable computing example

Code book for the tidy data set generated in the R data frame <code>activity.subject.averages</code>.

## Observations - Rows

Each row in the tidy data set represents the means of selected measured variables for a given subject and activity.

There are <code>6 * 30 = 180</code> observations.


## Variables - Columns

There are 68 variables, of which two are "factors" used for grouping when the data is aggregated. The remaining 66 variables are referred to as "measurements".


### Factor Variables

#### Activity - Factor used to identify the activity the subject was performing.

This categorical variable takes a value in the set
<code>{ WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING }</code>

(This variable can typically be assumed to be the "label", i.e. the value to be predicted by the remaining measurement variables).

#### Subject - Factor used to identify the subject performing the activity.

This categorical variable takes a value in the range 1 to 30.

### Measurement Variables

There are 66 variables that represent aggregate statistics (mean and standard deviation) from the readings from accelorometers and gyroscopes.

* All variables are **numeric**, and **normalized** to the range <code>-1.0 to 1.0</code>
* All variables represent the **mean** of some *aggregate statistic* (mean or standard deviation) for *all readings of some accelorometer or gyroscope measurement* in the original raw data.
* Variable names have been cleaned up (IMHO) compared to the original variable names. Each variable name consists of two parts:
  * The actual measure, named using the camel case convention (still using abbrevations, e.g. "Acc" for "Acceleration").
  * A suffix, <code>.mean</code> or <code>.std</code>, for the aggregate statistic.
    (Suffixes may have a "dimension" as well, e.g. <code>.meanX</code> or <code>.stdZ</code>)


#### List of all Measurement variable names (and some example explanations)

 * tBodyAcc.meanX - Mean of the original variable <code>tBodyAcc-mean()-X</code>
 * tBodyAcc.meanY - Mean of the original variable <code>tBodyAcc-mean()-Y</code>
 * tBodyAcc.meanZ - Mean of the original variable <code>tBodyAcc-mean()-Z</code>
 * tBodyAcc.stdX  - Mean of the original variable <code>tBodyAcc-std()-X</code>
 * tBodyAcc.stdY  - Mean of the original variable <code>tBodyAcc-std()-Y</code>
 * tBodyAcc.stdZ  - Mean of the original variable <code>tBodyAcc-std()-Z</code>
 * tGravityAcc.meanX
 * tGravityAcc.meanY
 * tGravityAcc.meanZ
 * tGravityAcc.stdX
 * tGravityAcc.stdY
 * tGravityAcc.stdZ
 * tBodyAccJerk.meanX
 * tBodyAccJerk.meanY
 * tBodyAccJerk.meanZ
 * tBodyAccJerk.stdX
 * tBodyAccJerk.stdY
 * tBodyAccJerk.stdZ
 * tBodyGyro.meanX
 * tBodyGyro.meanY
 * tBodyGyro.meanZ
 * tBodyGyro.stdX
 * tBodyGyro.stdY
 * tBodyGyro.stdZ
 * tBodyGyroJerk.meanX
 * tBodyGyroJerk.meanY
 * tBodyGyroJerk.meanZ
 * tBodyGyroJerk.stdX
 * tBodyGyroJerk.stdY
 * tBodyGyroJerk.stdZ
 * tBodyAccMag.mean
 * tBodyAccMag.std
 * tGravityAccMag.mean
 * tGravityAccMag.std
 * tBodyAccJerkMag.mean
 * tBodyAccJerkMag.std
 * tBodyGyroMag.mean
 * tBodyGyroMag.std
 * tBodyGyroJerkMag.mean
 * tBodyGyroJerkMag.std
 * fBodyAcc.meanX
 * fBodyAcc.meanY
 * fBodyAcc.meanZ
 * fBodyAcc.stdX
 * fBodyAcc.stdY
 * fBodyAcc.stdZ
 * fBodyAccJerk.meanX
 * fBodyAccJerk.meanY
 * fBodyAccJerk.meanZ
 * fBodyAccJerk.stdX
 * fBodyAccJerk.stdY
 * fBodyAccJerk.stdZ
 * fBodyGyro.meanX
 * fBodyGyro.meanY
 * fBodyGyro.meanZ
 * fBodyGyro.stdX
 * fBodyGyro.stdY
 * fBodyGyro.stdZ
 * fBodyAccMag.mean
 * fBodyAccMag.std
 * fBodyBodyAccJerkMag.mean
 * fBodyBodyAccJerkMag.std
 * fBodyBodyGyroMag.mean
 * fBodyBodyGyroMag.std
 * fBodyBodyGyroJerkMag.mean
 * fBodyBodyGyroJerkMag.std