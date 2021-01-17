# Florida Standards Assessment (FSA) Score Predictor

## Overview
The purpose of this project is to predict Third, Fourth, and Fifth Grade Achievement Levels on the Florida Standards Assessment (FSA) in ELA (English Lanugage Arts) and Math.  The FSA is a high-stakes test that is used to determine teacher ratings, school grades, Third Grade promotion requirements, and graduation eligibility.  Florida teachers spend a great deal of time using data to drive their instruction.  Educators provide targeted interventions that close learning gaps to ensure students achieve proficiency of grade level standards.  This model will use historical diagnostic data as well as demographics, attendance, and discipline data to predict student achievement on the FSA.  The analysis of this data will provide insight as to which factors impact performance on the assessment.  Schools will be able to use this model to predict achievement levels and prepare their staff and students for success.

## Data
Our data is composed of 300 or more students in two different schools in the State of Florida. The data collected was I-Ready diagnostic tests for grades K-2 and FSA scores for grades 3-5. There is at least three data points per student in one given school year. The categorical data chosen include race, gender, absence rate, behavior incidents, and retentions. Fall, Winter, and Spring Diagnostic assessment scores dating back to the 2017-2018 school year provide evidence of academic growth. ELA and Math scores are in separate tables due to the fact that they are scored on separate scales

The data was analyzed and filtered by gender in both subject areas ELA and Math. In ELA the data shows that scores were similar amongst females and males with a passing score. In Math the data show that scores were similar amongst females and males with a passing score.
![](https://github.com/leah-braswell/Boot_Camp_Final_Project/blob/main/Charts/Gender%20ELA.png)
![](https://github.com/leah-braswell/Boot_Camp_Final_Project/blob/main/Charts/Gender%20Math.png)


The data was analyzed and filtered by ethnicity in both subject areas ELA and Math. In ELA the data shows that  Cauacasians scored a passing score at a higher rate than any other ethnicity. It should a similar result in Math. 
![](https://github.com/leah-braswell/Boot_Camp_Final_Project/blob/main/Charts/Ethnicity%20ELA.png)
![](https://github.com/leah-braswell/Boot_Camp_Final_Project/blob/main/Charts/Ethnicity%20Math.png)

The data was analyzed and filtered by attendance in both subject areas ELA and Math. The attendance data refers to if a student has had 10 or more absences in that school year. In ELA the data shows that scores were higher amongst students with no attendance concerns. In Math it should a similar result. Students who attend school regularly will have a higher chance of passing the FSA with a 3 or higher.
![](https://github.com/leah-braswell/Boot_Camp_Final_Project/blob/main/Charts/Attendance%20ELA.png)
![](https://github.com/leah-braswell/Boot_Camp_Final_Project/blob/main/Charts/Attendance%20Math.png)

The data was analyzed and filtered by student who have been retained (repeated a grade). In ELA the data shows there was a higher number of students passing with a 3 that were retained. In Math the data shows that students will least likely to pass with a 3 higher if they were retained.
![](https://github.com/leah-braswell/Boot_Camp_Final_Project/blob/main/Charts/Retained%20ELA.png)
![](https://github.com/leah-braswell/Boot_Camp_Final_Project/blob/main/Charts/Retained%20Math.png)

## Exploratory and  Analysis  Phase
During the exploratory phase, we used the Pandas library in Python through Jupyter Notebook. We had to handle different forms of raw data that was held in five separate CSV files. The data included Demographics, Achievement_Levels, EWSdata, ELA_DATA, and MATH_DATA.
We imported these files as Dataframes and then combined them in different Dataframes using the merge function. One of the combined Dataframes held all the files in one main Dataframe. Two additional Dataframes were created for ELA data and Math data. These Dataframes allowed us to determine necessary statistical information, using the descriptive function. The descriptive functions were the total quantity of rows and minimum and maximum of key features like the Diagnosis in the Fall and Winter periods. This step was essential to determine the five different levels of bins. We noticed that the allocation in ELA assessment is different from the Math assessment, and in the end, this was critical to obtain accurate bins.
One of the valuable objectives of this analysis was to group the diagnosis features into bins. The decision to take this approach was based on the fact that the initial Machine Learning model achieved only around 50% of predictive accuracy.
 
## Machine Learning Model Narrative
### Preprocessing
The data was gathered from two Central Florida Elementary schools.  Data for certain students was accessed through a portal called Performance Matters.  Data for other students was pulled from archived data sheets kept by the schools.  The necessary data was selected and either copied or exported to csv files.  Pandas and scikit-learn were imported for creating DataFrames, scaling, and encoding.  Null values were removed using Pandas, however there were some cells that appeared to be blank but were not removed with ‘dropna’.  These were removed manually in excel. The data was then standardized, using Pandas, to ensure it all followed the same formatting and capitalization rules. 

### Model Choice
We choose the Random Forest classifier for this project.  This model is best suited for predicting scores. It is also easy to understand and explain outcomes with this model.  Our original model had five possible outcomes.  It was noted that the overall accuracy was barely above 50%.  After noticing that the model was good at predicting an Achievement Level of 3, but the difference between a Level 1 and 2 was less accurate, as was the difference between 4 and 5.  For this reason, the target was changed to a pass/fail.  A column was added that grouped Achievement Levels of 1 and 2 as 0 (fail) and Levels 3-5 as 1 (pass).  

### Feature Engineering and Selection
The numerical features selected are Fall and Winter I-Ready diagnostic tests for Third Grade students.  The categorical features selected include ethnicity, gender, absence rate, behavior incidents, and retention. Absence Rate reflects whether or not a student was absent for 10% or more of the school year.  Behavior Incidents indicate two or more referrals in a school year.  Retentions indicate if a student ever repeated a grade.  
The target is the Florida Standards Assessment (FSA) Achievement Level.  This is on a scale of 1-5 where a 3 is considered “On Grade Level”.  A score of 1 or 2 is not considered passing, and a Third Grade student who scores a 1 on the ELA assessment may be retained and provided remedial instruction in Reading the following year.  A score of 3 or above is considered passing.  

### Train/Test Split
Scikit-Learn was used to create a Train/Test Split.  For the first iteration of the model, we allowed the utility to choose the split of the data.  A 70/30 split is used in the final model.  The Scikit-Learn Standard Scaler was used to scale the numerical and categorical data.

### Accuracy Score
The current accuracy score for the English Language Arts model is 79.7% for predicting pass/fail.



## Database
Data will be provided from two Florida public elementary schools with any identifying information redacted to protect student privacy.  The categorical data chosen include race, gender, absence rate, behavior incidents, and retentions.  Fall, Winter, and Spring Diagnostic assessment scores dating back to the 2017-2018 school year provide evidence of academic growth.  ELA and Math scores are in separate tables due to the fact that they are scored on separate scales. 

## Presentation

The following link will take you to the Google Slides presentation. The presentation will tell the story of the project.

https://docs.google.com/presentation/d/e/2PACX-1vQKtrgxA88cZ8FfiY-rjbQno07R9LYr2ki83eTg24WP4XJf1wpaEJpuywWDH-yJRN76ru4fubnWFa9g/pub?start=false&loop=false&delayms=3000

