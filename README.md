# FSA Score Predictor

## Overview
The purpose of this project is to predict Third, Fourth, and Fifth Grade Achievement Levels on the Florida Standards Assessment (FSA) in ELA (English Lanugage Arts) and Math.  The FSA is a high-stakes test that is used to determine teacher ratings, school grades, Third Grade promotion requirements, and graduation eligibility.  Florida teachers spend a great deal of time using data to drive their instruction.  Educators provide targeted interventions that close learning gaps to ensure students achieve proficiency of grade level standards.  This model will use historical diagnostic data as well as demographics, attendance, and discipline data to predict student achievement on the FSA.  The analysis of this data will provide insight as to which factors impact performance on the assessment.  Schools will be able to use this model to predict achievement levels and prepare their staff and students for success.

## Team Communication Protocols
Team members have agreed to communicate primarily through slack on a day to day basis.  We will meet via Zoom on Tuesdays and Thursdays during/after regularly scheduled class time.  Should the need arise for an interim face-to-face, a Zoom will be scheduled.  During our Zoom meetings, team members will check progress on agreed upon tasks, delegate backlogged tasks, compare deliverables agains the rubric, and decide on next steps.  Each team member will have their own branch on the Git repository and require approval from other members before merging to the main branch.  The team will use GitHub projects and issues for project management.
## Data
Our data is composed of 300 or more students in two different schools in the State of Florida. The data collected was I-Ready diagnostic tests for grades K-2 and FSA scores for grades 3-5. There is at least three data points per student in one given school year. The categorical data chosen include race, gender, absence rate, behavior incidents, and retentions. Fall, Winter, and Spring Diagnostic assessment scores dating back to the 2017-2018 school year provide evidence of academic growth. ELA and Math scores are in separate tables due to the fact that they are scored on separate scales

The data was analyzed and filtered by gender in both subject areas ELA and Math. In ELA the data shows that scores were similar amongst females and males with a passing score. In Math the data show that scores were similar amongst females and males with a passing score.
![](https://github.com/leah-braswell/Boot_Camp_Final_Project/blob/Jessica/Resources/Gender%20ELA.png)
![](https://github.com/leah-braswell/Boot_Camp_Final_Project/blob/Jessica/Resources/Gender%20Math.png)


The data was analyzed and filtered by ethnicity in both subject areas ELA and Math. In ELA the data shows that  Cauacasians scored a passing score at a higher rate than any other ethnicity. It should a similar result in Math. 
![](https://github.com/leah-braswell/Boot_Camp_Final_Project/blob/Jessica/Resources/Ethnicity%20ELA.png)
![](https://github.com/leah-braswell/Boot_Camp_Final_Project/blob/Jessica/Resources/Ethnicity%20Math.png)

The data was analyzed and filtered by attendance in both subject areas ELA and Math. The attendance data refers to if a student has had 10 or more absences in that school year. In ELA the data shows that scores were higher amongst students with no attendance concerns. In Math it should a similar result. Students who attend school regularly will have a higher chance of passing the FSA with a 3 or higher.
![](https://github.com/leah-braswell/Boot_Camp_Final_Project/blob/Jessica/Resources/Attendance%20ELA.png)
![](https://github.com/leah-braswell/Boot_Camp_Final_Project/blob/Jessica/Resources/Attendance%20Math.png)

The data was analyzed and filtered by student who have been retained (repeated a grade). In ELA the data shows there was a higher number of students passing with a 3 that were retained. In Math the data shows that students will least likely to pass with a 3 higher if they were retained.
![](https://github.com/leah-braswell/Boot_Camp_Final_Project/blob/Jessica/Resources/Retained%20ELA.png)
![](https://github.com/leah-braswell/Boot_Camp_Final_Project/blob/Jessica/Resources/Retained%20Math.png)

 
## Machine Learning Model
We choose the Random Forest classifier for this projet.This model is best suited for predicting scores. It is also easy to understand and explain outcomes with this model.  Categorical feature columns (string datatype) will incluede race, gender, absence rate, behavior incidents, and past retentions.  Numerical features (integer datatype) will include Diagnostic assessment scores and growth monitoring (GM) scores.  The target column will the the FSA Achievement level.  Separate models will be written for ELA and Math.


## Database
Data will be provided from two Florida public elementary schools with any identifying information redacted to protect student privacy.  The categorical data chosen include race, gender, absence rate, behavior incidents, and retentions.  Fall, Winter, and Spring Diagnostic assessment scores dating back to the 2017-2018 school year provide evidence of academic growth.  ELA and Math scores are in separate tables due to the fact that they are scored on separate scales. 

## Presentation
https://docs.google.com/presentation/d/12wi2BtFbhAzu5zYDUBJCmo3jlZx0pq8Z9Q29JtZB1_c/edit#slide=id.gb75e8e452f_2_214

