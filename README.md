# R_Analysis
## Overview
Determine which metrics have the most profound impact on a cars mileage. Additionally, determine if suspension coil production is statistically similar

### Purpose 
Factors like vehicle length, weight, spoiler angle, drivetrain, and ground clearance, were collected on each vehicle. Using R's tidyverse package, clean the data and design a linear model that predicts the mpg using several variables from the MechaCar_mpg.csv

## Analysis
### Linear Regression to Predict MPG
<img width="740" alt="Screen Shot 2022-07-09 at 7 15 51 AM" src="https://user-images.githubusercontent.com/79609464/178107386-53012759-756f-45fe-a837-f88b9200966f.png"><br />

This Linear model accounts for ~71.5% of mileage variance- the multiple R^{2} value. From the Pr(>|t|) values, one can conclude that Spoiler-Angle and Drivetrain are the most impactful factors while the vehicle length and clearance are the least. Finally, we can reject the NULL hypothesis since a p-Value of 5.35e-11 is less than .05; This means the slope of our line is non-zero and a strong correlation does exist between the considered variables.

### Summary Statistics on Suspension Coils
<img width="370" alt="Screen Shot 2022-07-09 at 7 26 15 AM" src="https://user-images.githubusercontent.com/79609464/178107810-f7210da5-d6b8-4621-af92-3d3e33eb0217.png"><br />
<img width="509" alt="Screen Shot 2022-07-09 at 7 26 22 AM" src="https://user-images.githubusercontent.com/79609464/178107821-21ec01ce-de29-403c-ac6d-18e5d9894044.png"><br />
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

#### Interpretation
Suspension coils from lot 3 tend to be weaker than lot 1 and 2- which have roughly the same strength. This skews the overall strength significantly. Individually (and together) lots 1 and 2 pass the ttest since their p-value was less than .05; However the same can not be said for all lots and lot 3's suspension coils. Since both have a p-value over .05 this shows there isn't a correlation between coils in lot 3 or between all coils to lot 3. 

## Study Design: 
Create a study to compare the MechaCar and its Competition; the Mechacar is an economy vehicle designed for fuel-efficiency. Then we can create a linear regression comparing similar cars' sales volume vs other important metrics; this will help shareholders understand what the customer is looking for. The null hypothesis states there is no significant difference across any metric between Mecahcar and their competition influencing their respective sale volumes. If this is proven false it will most likely be because of metrics market list price, life expectancy, and fuel economy. We could then use a Ttest on the most important metric grouped by car type; this would reveal if any one car model is exceptional at the metric. To do any of this though, we would need Sales data on cars similar to the Mechacar (Volume, Price, Fuel Economy, Forecasted Life Expectancy, Forecasted Repair Costs, etc.).
