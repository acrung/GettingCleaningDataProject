# Coursera project Getting and Cleaning Data project
##  The raw data
For any information about the raw data, please :
- go to the originals site 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- or check the README.txt in the data repository

All the raw data are in " 	Data" folder

## The tidy data set
After performing the R code from R or R studio: source('run_analysis.R')), the output file will be ""tidydata.txt""

## A code book 
The tidy data set has 80 columns.
 [1] "subject" -> ID of a subject                                                                
 [2] "activity" -> label of a subject
 
All the other variables [3] to [78] are numeric variables.
They are all the mean or standard deviation columns you can find in data/features.txt.
They all have been rename in order to be more readable.
Basically, in the tidydata.txt they are the mean of all measures group by the subject and the activity.
 [3] "timebodyaccelerationmeany"                                              
 [4] "timebodyaccelerationmeanz"                                              
 [5] "timebodyaccelerationstandarddeviationx"                                 
 [6] "timebodyaccelerationstandarddeviationy"                                 
 [7] "timebodyaccelerationstandarddeviationz"                                 
 [8] "timegravityaccelerationmeanx"                                           
 [9] "timegravityaccelerationmeany"                                           
[10] "timegravityaccelerationmeanz"                                           
[11] "timegravityaccelerationstandarddeviationx"                              
[12] "timegravityaccelerationstandarddeviationy"                              
[13] "timegravityaccelerationstandarddeviationz"                              
[14] "timebodyaccelerationjerkmeanx"                                          
[15] "timebodyaccelerationjerkmeany"                                          
[16] "timebodyaccelerationjerkmeanz"                                          
[17] "timebodyaccelerationjerkstandarddeviationx"                             
[18] "timebodyaccelerationjerkstandarddeviationy"                             
[19] "timebodyaccelerationjerkstandarddeviationz"                             
[20] "timebodygyroscopemeanx"                                                 
[21] "timebodygyroscopemeany"                                                 
[22] "timebodygyroscopemeanz"                                                 
[23] "timebodygyroscopestandarddeviationx"                                    
[24] "timebodygyroscopestandarddeviationy"                                    
[25] "timebodygyroscopestandarddeviationz"                                    
[26] "timebodygyroscopejerkmeanx"                                             
[27] "timebodygyroscopejerkmeany"                                             
[28] "timebodygyroscopejerkmeanz"                                             
[29] "timebodygyroscopejerkstandarddeviationx"                                
[30] "timebodygyroscopejerkstandarddeviationy"                                
[31] "timebodygyroscopejerkstandarddeviationz"                                
[32] "timebodyaccelerationmagnitudemean"                                      
[33] "timebodyaccelerationmagnitudestandarddeviation"                         
[34] "timegravityaccelerationmagnitudemean"                                   
[35] "timegravityaccelerationmagnitudestandarddeviation"                      
[36] "timebodyaccelerationjerkmagnitudemean"                                  
[37] "timebodyaccelerationjerkmagnitudestandarddeviation"                     
[38] "timebodygyroscopemagnitudemean"                                         
[39] "timebodygyroscopemagnitudestandarddeviation"                            
[40] "timebodygyroscopejerkmagnitudemean"                                     
[41] "timebodygyroscopejerkmagnitudestandarddeviation"                        
[42] "frequencydomainsignalbodyaccelerationmeanx"                             
[43] "frequencydomainsignalbodyaccelerationmeany"                             
[44] "frequencydomainsignalbodyaccelerationmeanz"                             
[45] "frequencydomainsignalbodyaccelerationstandarddeviationx"                
[46] "frequencydomainsignalbodyaccelerationstandarddeviationy"                
[47] "frequencydomainsignalbodyaccelerationstandarddeviationz"                
[48] "frequencydomainsignalbodyaccelerationmeanfreqx"                         
[49] "frequencydomainsignalbodyaccelerationmeanfreqy"                         
[50] "frequencydomainsignalbodyaccelerationmeanfreqz"                         
[51] "frequencydomainsignalbodyaccelerationjerkmeanx"                         
[52] "frequencydomainsignalbodyaccelerationjerkmeany"                         
[53] "frequencydomainsignalbodyaccelerationjerkmeanz"                         
[54] "frequencydomainsignalbodyaccelerationjerkstandarddeviationx"            
[55] "frequencydomainsignalbodyaccelerationjerkstandarddeviationy"            
[56] "frequencydomainsignalbodyaccelerationjerkstandarddeviationz"            
[57] "frequencydomainsignalbodyaccelerationjerkmeanfreqx"                     
[58] "frequencydomainsignalbodyaccelerationjerkmeanfreqy"                     
[59] "frequencydomainsignalbodyaccelerationjerkmeanfreqz"                     
[60] "frequencydomainsignalbodygyroscopemeanx"                                
[61] "frequencydomainsignalbodygyroscopemeany"                                
[62] "frequencydomainsignalbodygyroscopemeanz"                                
[63] "frequencydomainsignalbodygyroscopestandarddeviationx"                   
[64] "frequencydomainsignalbodygyroscopestandarddeviationy"                   
[65] "frequencydomainsignalbodygyroscopestandarddeviationz"                   
[66] "frequencydomainsignalbodygyroscopemeanfreqx"                            
[67] "frequencydomainsignalbodygyroscopemeanfreqy"                            
[68] "frequencydomainsignalbodygyroscopemeanfreqz"                            
[69] "frequencydomainsignalbodyaccelerationmagnitudemean"                     
[70] "frequencydomainsignalbodyaccelerationmagnitudestandarddeviation"        
[71] "frequencydomainsignalbodyaccelerationmagnitudemeanfreq"                 
[72] "frequencydomainsignalbodybodyaccelerationjerkmagnitudemean"             
[73] "frequencydomainsignalbodybodyaccelerationjerkmagnitudestandarddeviation"
[74] "frequencydomainsignalbodybodyaccelerationjerkmagnitudemeanfreq"         
[75] "frequencydomainsignalbodybodygyroscopemagnitudemean"                    
[76] "frequencydomainsignalbodybodygyroscopemagnitudestandarddeviation"       
[77] "frequencydomainsignalbodybodygyroscopemagnitudemeanfreq"                
[78] "frequencydomainsignalbodybodygyroscopejerkmagnitudemean"                
[79] "frequencydomainsignalbodybodygyroscopejerkmagnitudestandarddeviation"   
[80] "frequencydomainsignalbodybodygyroscopejerkmagnitudemeanfreq"   
	
## The receipt from raw data to tidy data.txt
###**Objectives :** You should create one R script called run_analysis.R that does the following.
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

###The receipt (for more precise information, just look the code)
1. Catch the column number to extract from features.txt (all that have "mean" or "std").
Their are 78 columns
2. Extract only measurements from this 78 columns of for the test file measurements (X_test.txt)
3. Merge subject and activity file for "test subject" (both of them has 2947 rows)
- Subject file : their are only ID of the subject with nothing more. Value 1 to 30
- Activity File : their are only ID of the activity. Value 1 to 6
4. Replace the id of the activites by the label
5. Change the first column names by "subject" and "activity" and obtain a first cool Test files treatment
Do the same with train files
6. Extract only measurements from this 78 columns of for the test file measurements (X_train.txt)
7. Merge subject and activity file for "ttrain subject" (both of them has 7352 rows)
  - Subject file : their are only ID of the subject with nothing more. Value 1 to 30
  - Activity File : their are only ID of the activity. Value 1 to 6
8. Replace the id of the activites by the label
9. Change the first column names by "subject" and "activity" and obtain a first cool Test files treatment
10. Merge the test and train files obtain by adding theirs rows. Both file have the same number of column (80 = "subject", "activity", and 78 measurements)
11. Order the file by the subject (1, 2, 3, ...30)
12. Do some label clean up
  - lower everything
  - delete "-", "(", ")"
  - replace abbreviation by plain text (ex acc->acceleration, gyro->gyroscope etc.)
13. Now summarize the file by aggregating measurements group by subject and activity with the mean function
14. write the file tidyfile.txt
15. 

###The receipt2
1. Download everything in the repository
2. Launch the script : source('run_analysis.R')
<<<<<<< HEAD
3. Wait and get the tidydata.txt file
=======
3. Wait and get the tidydata.txt file
>>>>>>> b741704bb002ae711b9b52cbc4aaeabb624688fb
