---
title: "README - Getting and Cleaning Data Course Project"
author: "JP Anderson"
date: "8/26/2021"
output: html_document
---

This repo contains 4 files:

* README.md
* run_analysis.R: Creates the data set.
* CodeBook.md: Describes the data set.
* grouped_averages.txt: The data set itself.

The data set is created in run_analysis.R by:

1. Reading in all the X and Y variables for both test and train and merging them together.
2. Attaching column names from the features.txt file.
3. Filtering to only the columns that are means or standard deviations.
4. Updating activity numbers to activity names based on the activity_labels.txt file.
5. Cleaning up the column names to be more readable.
6. Adding the subject column from both train and test to the combined data set.
7. Grouping the data by subject and activity.
8. Summarizing by taking the average of each column.
