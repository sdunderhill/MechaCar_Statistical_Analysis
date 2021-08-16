# MechaCar Statistical Analysis

## Overview

The new prototype of AutosRUs' called the MechaCar is having production troubles. AutosRUs' uppermanagement has called on Jeremy's team to review the production data to gather some insights into what may help the manufacturing team.

### Purpose

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.


## Analysis Results

### Linear Regression to Predict MPG

![linear_regression_mpg](https://user-images.githubusercontent.com/81715217/129501025-7110f1fd-4cb5-4505-a4f0-994d6c169fe2.png)

![linear_regression_mpg_2](https://user-images.githubusercontent.com/81715217/129501030-c6b24ba7-1c70-437d-b10d-e6cec83df52a.png)

* According to the linear regression model, vehicle length and ground clearance provided a non-random amount of variance to the mpg values. With the p-value of vehicle length and ground clearance being so low it indicates that those parameters have an impact on mpg
* The slope is not considered to be zero since the p-value is below .05%.
* With the multiple R-squared being at 0.71 it would suggest that this linear regression would be considered effective.


### Summary Statistics on Suspension Coils

![total_summary](https://user-images.githubusercontent.com/81715217/129502853-faf4c3a8-8267-464a-9064-037bf2d33810.png)

![lot_summary](https://user-images.githubusercontent.com/81715217/129502860-2f9482ff-e859-4b6b-9407-5ef172c97aca.png)

The total variance of the suspension coils must not exceed 100 PSI. In the data I have analyzed, the total lot summary does meet the design specification with a variance of 62.29 PSI. However, when devided by lots, lot 3 doesn't meet the specifications with a variance PSI of 170.27. Lot 1 and Lot 2 do meet the specifications with variances of .98 PSI and 7.47 PSI respectively.

### T-Tests on Suspension Coils

Overall comparison against the mean PSI of 1500

![one_sample_t test](https://user-images.githubusercontent.com/81715217/129503264-1c1e0364-bbc3-4da1-bfea-86295a47406b.png)

With our significance level at .05%, our p-value is a slightly higher significance level. With that being the case, we don't have enough evidence to reject the null hypothesis. We would then say that the one sample mean is statistically similar to the population mean

Lot 1 comparison against the mean PSI of 1500

![lot1_t test](https://user-images.githubusercontent.com/81715217/129503472-2b86e12e-0c00-4eca-9a02-f82b4fdeac09.png)

The p-Value of Lot 1 is well above our standard significance level at 1. Therefore, we can't reject the null hypothesis. We would say that Lot 1 mean and population mean are statistically similar.

Lot 2 comparison against the mean PSI of 1500

![lot2_t test](https://user-images.githubusercontent.com/81715217/129503703-404ddaa3-cf98-4ab7-b60c-394d37586b8a.png)

The p-Value of Lot 2 is well above our standard significance level at 0.61. Therefore, we can't reject the null hypothesis. We would say that Lot 2 mean and population mean are statistically similar.

Lot 3 comparison against the mean PSI of 1500

![lot3_t test](https://user-images.githubusercontent.com/81715217/129503806-47417e2e-7b3c-41a3-b434-3eaa64570037.png)

The p-value of lot 3 is below our significance level at 0.04. Therefore we can reject the null hypothesis. We would say that Lot 3 mean and population mean are not statistically similar.

### Study Design: MechaCar vs Competition

As a consumer that commutes to work in all kinds of weather I drive an AWD vehicle. The coorelation between AWD and highway fuel efficiency is important. MechaCar will need to be competitive in the commuting fuel efficiency race in the era of SUVs and AWD. We will need to look at the coorelation between AWD vehicles and their fuel efficiency.

#### Hypotheses

* Null Hypothesis: The mean fuel efficiencies for AWD vehicles are the same across all classes of AWD vehicles.
* Alternative Hypothesis: The mean fuel efficiencies for AWD vehicles are not the same across all classes of AWD vehicles.

#### Statistical Test

A one-way ANOVA test can be used because we are testing the means of a single continuous numerical dependent variable across a single independent variable with multiple groups. We would be comparing the mpg of different classes of AWD vehicles.

#### Data Required

The data needed to perform this test would be data on different classes of vehicles with AWD transmissions.

