# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

After conducting a multiple linear regression model on the sample MPG data set, there were 2 variables that provided a non-random p-value variance, Vehicle Length & Ground Clearance. These 2 variables do have a significant impact on the actual MPG results.

[!Multiple linear regression model] (https://github.com/bdang303/MechaCar_Statistical_Analysis/blob/main/Resources/D1_LinearModel.png) 

The multiple linear regression model shown in the above results determine that the slope of the model is not considered 0, as the variables do have an impact on MPG. 

With a Multiple R-Squared value of 0.71, roughly ~71% of the variability could be explained by our model, which is considered effective.


## Summary Statistics on Suspension Coils

A key element of the design specifications note that the variance of suspension coils manufactured should not exceed 100 lbs per square inch (PSI). If we look at the data at an aggregate level, we can see via the table below that the variance of 62.3 is below this threshold.

[!Total Summary] (https://github.com/bdang303/MechaCar_Statistical_Analysis/blob/main/Resources/Total_Summary.png)

However, if we were to dissect the data by the lot it was manufactured in, the coils manufactured in lot 3 actually exceed this threshold with a variance of 170.29. 

[!Lot Summary] (https://github.com/bdang303/MechaCar_Statistical_Analysis/blob/main/Resources/LotSummary.png)


## T-Test on Suspension Coils

To determine whether or not each of the lots manufactured are statistically different compared to the overall population, we conducted a series of T-Tests to determine p-values. 

[!Lot 1] (https://github.com/bdang303/MechaCar_Statistical_Analysis/blob/main/Resources/Lot1TTest.png)

- With a P-Value of 1.0, we fail to reject the null hypothesis, therefore stating that Lot 1 does not have a statistically different mean than the population.

[!Lot 2] (https://github.com/bdang303/MechaCar_Statistical_Analysis/blob/main/Resources/Lot2TTest.png)

- With a P-Value of 0.61, we fail to reject the null hypothesis, therefore stating that Lot 2 does not have a statistically different mean than the population.


[!Lot 3] (https://github.com/bdang303/MechaCar_Statistical_Analysis/blob/main/Resources/Lot3TTest.png)

- With a P-Value of 0.04, we can reject the null hypothesis, therefore stating that Lot 3 does have a statistically different mean than the population.

## Study Design: MechaCar vs. Competition 

Upon gathering these metrics on MPG & Suspension Coils, we can further enhance these insights by conducting an additional study to see how the performance of the MechaCar compares to competitors. A few additional metrics that we can use to determine this: 

- Total Cost to manufacture 1 vehicle
- Total Time required to manufacture 1 vehicle

Null Hypothesis: There is no difference between the cost & time required to manufacture MechaCar vs. Competition

Alternatives Hypothesis: There is a difference between the cost & time required to manufacture Mechacar vs. Competition 

WeÕd use a 2-sample t test to determine this, as well as data from various vehicle manufactures in order to understand the total costs & time it takes to get these vehicles from concept to road. 


