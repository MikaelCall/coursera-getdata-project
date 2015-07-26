# Tidy data - a wearable computing example
Course project for [Coursera](https://www.coursera.org) course [Getting and Cleaning Data](https://www.coursera.org/course/getdata).

The aim of the project is to extract a tidy data set from the provided [raw data set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). The linked data represents data collected from accelerometers from a smartphone that may presumably be used to predict a subjects activity, e.g. walking or runing.

## Repository Contents

* [__run_analysis.R__](https://github.com/MikaelCall/coursera-getdata-project/blob/master/run_analysis.R)<br>An R script for producing the tidy data set (see instructions below).
* [__CodeBook.md__](https://github.com/MikaelCall/coursera-getdata-project/blob/master/CodeBook.md)<br>A code book with explanations of the variables in the resulting tidy data set.

## Instructions

The R script has comments to make it clear where all the five steps outlined in the assignment take place. More importantly, R variable names are quite detailed.

* It is assumed that the raw data has been extracted to a directory called "UCI HAR Dataset" that must be located in the working directory.
* To generate the tidy data, run the script [__run_analysis.R__](https://github.com/MikaelCall/coursera-getdata-project/blob/master/run_analysis.R), e.g. as follows:
<br>
<code>
source("run_analysis.R")
</code>
* This will generate the tidy data as an R data frame variable <code>activity.subject.averages</code> and write it to disk in a file <code>another_tidy_dataset.txt</code>
* (The script also "pollutes" the environment with variables used along the way to create the tidy data set.)