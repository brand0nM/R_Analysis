# R_Analysis
## Overview
Determine which metrics have the most profound impact on a cars mileage.

### Purpose 
Factors like vehicle length, weight, spoiler angle, drivetrain, and ground clearance, were collected on each vehicle. Using R's tidyverse package, clean the data and design a linear model that predicts the mpg using several variables from the MechaCar_mpg.csv

## Analysis
### Linear Regression to Predict MPG
<img width="740" alt="Screen Shot 2022-07-09 at 7 15 51 AM" src="https://user-images.githubusercontent.com/79609464/178107386-53012759-756f-45fe-a837-f88b9200966f.png"><br />

This Linear model accounts for ~71.5% of mileage variance- the multiple R^2 value. From the Pr(>|t|) values, one can conclude the Spoiler-Angle and Drivetrain are the most impactful factors while the vehicle length and clearance are the least. Finally, we can reject the NULL hypothesis since a p-Value of 5.35e-11 is less than .05; This means the slope of our line is non-zero and a strong correlation does exist between the considered variables.

### Summary Statistics on Suspension Coils
<img width="370" alt="Screen Shot 2022-07-09 at 7 26 15 AM" src="https://user-images.githubusercontent.com/79609464/178107810-f7210da5-d6b8-4621-af92-3d3e33eb0217.png"><br />
<img width="509" alt="Screen Shot 2022-07-09 at 7 26 22 AM" src="https://user-images.githubusercontent.com/79609464/178107821-21ec01ce-de29-403c-ac6d-18e5d9894044.png"><br />

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Since the Variance of the overall suspension coils is less than 100 pounds/ square inch the MechaCar meets the design specifications. Upon closer inspection, it appears cars from lot 3 have a significantly higher variance of 170 pounds/ square inch, and thus do not meet manufacturing criteria

### T-Tests on Suspension Coils
#### All Lots
<img width="433" alt="Screen Shot 2022-07-09 at 7 57 12 AM" src="https://user-images.githubusercontent.com/79609464/178108989-4d60de21-13ed-4e4b-9b5a-c5a30c865b52.png">

#### Lot 1
<img width="569" alt="Screen Shot 2022-07-09 at 7 57 21 AM" src="https://user-images.githubusercontent.com/79609464/178108990-43184ed0-c1bf-4d72-8672-0dfe3d9ceb6f.png">

#### Lot 2
<img width="574" alt="Screen Shot 2022-07-09 at 7 57 32 AM" src="https://user-images.githubusercontent.com/79609464/178108993-15b7245b-4a33-4091-b6b2-e114cc5a09b9.png">

#### Lot 3
<img width="576" alt="Screen Shot 2022-07-09 at 7 57 40 AM" src="https://user-images.githubusercontent.com/79609464/178108995-38a135d8-10f1-4b77-a905-22423bb17507.png">

### Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
