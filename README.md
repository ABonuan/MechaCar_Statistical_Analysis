# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![alt text](https://github.com/ABonuan/MechaCar_Statistical_Analysis/blob/main/resources/Linear_Regression_MPG.png?raw=True)

Summary Statistics show:
- Vehicle length & ground clearance provide a non-random amount of variance to the mpg values.
- The slope of the linear model is *not* zero because p-value of our linear regression analysis is 5.35 x 10<sup>-11</sup>, which is much smaller than our assumed significance level of 0.05%.  Therefore, we can state that there is sufficient evidence to reject our null hypothesis.
-  This linear model does not predict mpg of MechaCar prototypes effectively.  The intercept is statistically significant, which means there are other variables and factors that contribute to the variation in mpg that have not been included in our model.

## Summary Statistics on Suspension Coils
![alt](https://github.com/ABonuan/MechaCar_Statistical_Analysis/blob/main/resources/Summary_stats_total.png?raw=True)\
![alt](https://github.com/ABonuan/MechaCar_Statistical_Analysis/blob/main/resources/Summary_stats_by_LotNo.png?raw=True)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.  At the highest level, the current manufacturing data meets this design specification with a variance equal to 62.29 and a standard deviation of 7.89.  But drilling down to each manufacturing lot, we can see also see that Manufacturing Lot does not meet the design specifications because its variance is 170.29 with a standard deviation of 13.05. The variance is over 100 PSI.

## T-Tests on Suspension Coils
![alt text](https://github.com/ABonuan/MechaCar_Statistical_Analysis/blob/main/resources/T_test_All_Lots.png?raw=True)\
![alt text](https://github.com/ABonuan/MechaCar_Statistical_Analysis/blob/main/resources/T_test_Lot1.png?raw=True)\
![alt text](https://github.com/ABonuan/MechaCar_Statistical_Analysis/blob/main/resources/T_test_Lot2.png?raw=True)\
![alt text](https://github.com/ABonuan/MechaCar_Statistical_Analysis/blob/main/resources/T_test_Lot3.png?raw=True)

The p-values from all t-tests are below the assumed significance level of 0.05, therefore we would state that there is enough evidence to reject the null hypothesis, and that the means of the whole dataset, as well as that of each manufacturing lot, are statistically different from the population mean.

## Study Design: MechaCar vs Competition
- Metric to be Tested: cost
- Hypotheses:
    - H<sub>0</sub>:  There is no statistical difference between the observed sample mean and its presumed population mean. \/ There is no statistical difference between the two observed sample means. 
    - H<sub>a</sub>:  There is a statistical difference between the observed sample mean and its presumed population mean. \/ There is a statistical difference between the two observed sample means.
- Statistical Test which Tests these Hypotheses: One-Sample t-test against the industry mean price of a model type \(for example, MechaCar SUV and all other industry makers' SUV\), as well as  a Two-Sample t-test against a specific make & model \(for example, MechaCar SUV and Volkswagen TOureg SUV\).
- Data Needed for Statistical Test: Maker\/Brand, Model Type, Price