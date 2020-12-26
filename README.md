# R_Statistical_Analysis
Using Statistics and R for the Data Science

## Overview
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. The purpose of this analysis is to offer insights on the MechaCar's production to help the manufacturing team utilizing R. Through the statistical analyses of the mile per gallons (MPG) of MechaCar prototypes and pounds per square inch (PSI) of the suspension coils, we will  compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Objects
1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population
4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, we’ll write a summary interpretation of the findings.

## Software/Tools
* Rstudio1.3.1, dplyr library, tidyverse library ggplot2 library, jsonlite library,  Github
* Two csv data are provided [MechaCar_mpg.csv](https://www.citibikenyc.com/system-data) webpage.

I am using the programming language R and its dplyr library to complete this analysis.

## Linear Regression to Predict MPG

In this section, I loaded in the miles per gallon dataset. From there, I preformed a multiple linear regression to see if it could predict the miles per gallon (mpg) dependent variable by using the vehicle length, vehicle weight, spoiler angle, ground clearance, and all wheel drive (AWD) independent variables. By doing this, I wanted to answer three questions:

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
2. Is the slope of the linear model considered to be zero? Why or why not?
3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The answers to these questions are:

1. There were two variables that provided a non-random amount of variance: The vehicle length and the ground_clearance. Both of these have extremely small p-value meaning that they had a high level of significance. It also should be noted that the intercept as had a high level of significance meaning that there are still other factors contributing to the variance of the miles per gallon of the MechaCar. 
2. The slope of the linear model is not considered to be zero. This is because the linear regression shows that some of the independent variables had a significant effect on the dependent variable. If none of the independent variables had an effect on the dependent variable then the linear regression would result in a near zero slope. 
3. The main indicator of whether the linear model predicts the mpg of the MechaCar is the r-squared value. In this case, it is at 0.7149 mean that out of 100 instances, this model would approximately predict the mpg of the MechaCar correctly 71 times. This means that the model would be considered effective.

Here are the summary results from the linear regression.

### Miles Per Gallon Linear Regression

![mpg_linear_regression](https://github.com/Wall-E28/mecha_car_statistical_analysis/blob/main/visualizations/mpg_linear_regression.png)

## Summary Statistics on Suspension Coils

In this section, I loaded in the suspension coils dataset. It  was comprised of 150 different vehicles ID, 3 different lot numbers, and corresponding PSI levels for each vehicle. From there I created two summary tables to look at the mean, median, variance, and standard deviation of data. The first table looked at of the data as a whole, while the second table looked specific at each of the three different lots that the MechaCars were divided into. Here are the two tables.

### Total Summary Table

![total_sum_sus_coils](https://github.com/Wall-E28/mecha_car_statistical_analysis/blob/main/visualizations/total_sum_sus_coils.png)

### Lot Summary Table

![lot_sum_sus_coils](https://github.com/Wall-E28/mecha_car_statistical_analysis/blob/main/visualizations/lot_sum_sus_coils.png)

By completing this analysis I want to answer one question:

1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The answer to this question is:

1. Looking at the total summary, the current variance is approximately 76.23 PSI meaning that is does meet the design specification. When looking at the lots individuals, the first two lotas meet the design specification at a varaince of approximately 1.14 PSI and 10.13 PSI respectfully, but the third lot does not. This is becasue the third lot's variance is approximately 220.01 PSI, exceeding the design specification by more than double the alotted amount. Therefore, the manufacturing team should work with the cars in lots 1 and 2 compared to those in lot 3.

## T-Tests on Suspension Coils

In this section, I wanted to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. In order to do this, I used R's t.test() function to find four different p-values. The question that I wanted to answer by doing this was:

1. Do any of the four groups have a statistically different mean from the population mena of 1,500 PSI?

The answer to this question is:

1. By using a significance level of 95%, meaning that 95% of the time this tests results would be true, I tested to see if any of the four groups had a statistical difference from the mean of 1,500 PSI. After running the tests, all four p-values where much greater than .05 meaning that I would fail to reject that there is a statistical difference between the four groups and the population mean.

Here is a breakdown of each of the four tests:

### All Three Lots Combined Test

![total_pop_test](https://github.com/Wall-E28/mecha_car_statistical_analysis/blob/main/visualizations/total_pop_test.png)

### Lot 1 Test

![1_pop_test](https://github.com/Wall-E28/mecha_car_statistical_analysis/blob/main/visualizations/1_pop_test.png)

### Lot 2 Test

![2_pop_test](https://github.com/Wall-E28/mecha_car_statistical_analysis/blob/main/visualizations/2_pop_test.png)

### Lot 3 Test

![3_pop_test](https://github.com/Wall-E28/mecha_car_statistical_analysis/blob/main/visualizations/3_pop_test.png)

## Study Design: MechaCar vs Competition

In this section, I am comparing how the MechaCar performs with the competition. I am not preforming any tests in R, I am talking about how I would go about completing this analysis. In order to do this I want to answer four different questions which are:

1. What metric or metrics are you going to test?
2. What is the null hypothesis or alternative hypothesis?
3. What statistical test would you use to test the hypothesis? And why?
4. What data is needed to run the statistical test?

The answer to these questions are:

1. The metrics I want to test are city and highway fuel efficiencies.
2. Null Hypothesis is that all of the cars in the same class have the same fuel efficienies. THe Alternative Hypothesis is that they are not all the same.
3. I would use an ANOVA test to complete this analysis for both types of fuel efficiencies. Also I would use the ggplot2 library to show the potential spread between different cars using a boxplot.
4. I would need fuel efficiency data from 50 individual cars to create a sample size of data for each car in the class type. For example, if there was 10 cars in the class type, I would have a top of 500 data points collected for each fuel efficiency type.

