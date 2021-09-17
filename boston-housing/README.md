# Overview

In this project, we will create models to predict house prices based on a variety of features. This falls in the category of developing *supervised* ML-driven algorithms to predict the output. Since the output - the house price - is a continuous variable, the following two ML algorithms are appropriate for consideration:

* **Multiple Linear Regression** - in this algorithm, an equation such as Y = f(X) describes the relationship between features - X - (also called as independent variables) and the target - Y - (also called as the dependent variable). The multiple linear regression will derive this equation with the objective of minimizing *root mean squared error* (RMSE).

* **Random Forest Regression** - in this algorithm, an ML-driven decision tree is used to map the input features - X - to the output target - Y - using randomly generated features with the same objective as above - minimization of *root mean squared error* (RMSE). The difference is that the relationship between X and Y is not linear, and is controlled by a set of hidden features that the random forest algorithm generates. We expect this algorithm to perform better than the *Multiple Linear Regression* algorithm.

# Dataset

For this problem, we will analyze the *Boston Housing Market* dataset available here: https://www.kaggle.com/c/boston-housing

This dataset contains 511 distinct values and 14 columns. Each column name and its description is given in the following table.

| Column | Description | Type | 
| ------ | ----------- | ---- | 
| crim | per capita crime rate by town | feature |
| zn | proportion of residential land zoned for lots over 25,000 sq.ft. | feature |
| indus | proportion of non-retail business acres per town | feature |
| chas | Charles River dummy variable (= 1 if tract bounds river; 0 otherwise) | feature |
| nox | nitrogen oxides concentration (parts per 10 million) | feature |
| rm | average number of rooms per dwelling | feature |
| age | proportion of owner-occupied units built prior to 1940 | feature |
| dis | weighted mean of distances to five Boston employment centres | feature |
| rad | index of accessibility to radial highways | feature |
| tax | full-value property-tax rate per \$10,000 | feature |
| ptratio | pupil-teacher ratio by town | feature |
| black | 1000(Bk - 0.63)^2 where Bk is the proportion of blacks by town | feature |
| lstat | lower status of the population (percent) | feature |
| medv | median value of owner-occupied homes in \$1000s | **target** |

The complete dataset is available in the csv format [here](boston-housing/boston_housing.csv)

# Methodology

The following steps will be used to develop and analyze the performance of the two ML algorithms.

* Load data into a pandas dataframe
* Remove rows containing null values in any column
* Split the dataframe into two - one containing all features (13 columns) and the other containing the target (the **medv** column)
* Split each dataframe into training and testing sets. Through trial and error, we determined to make 80% data available to the training set
* Create a model on the training set
* Use the model to make predictions on the testing set
* Calculate model accuracy (the **R2** statistic in this case) and the **room mean squared error** (RMSE) metric
* Evaluate the effectiveness of the model

# Results

## Comparison of the two models

The following table shows how each model performed when making predictions on the test data.

| Metric | Multiple Linear Regression | Random Forest Regression | Description | 
| ------ | -------------------------- | ------------------------ | ----------- |
| Dataset Size (Training) | 404 | 404 | 80% data is used for training |
| Dataset Size (Testing) | 102 | 102 | 20% data is used for testing |
| Accuracy - R2 - (Training) | 0.6 | 0.97 | Random forest regressor is nearly perfect on the training set - possible danger of overfitting |
| Accuracy - R2 - (Testing) | 0.75 | 0.87 | MLR surprisingly performs well on the testing set - random forest regression is still superior |
| RMSE | 16.05 | 7.99 | RMSE for the random forest regressor is only half that of MLR |

The table above clearly shows the superiority of the **Random Forest Regressor** over the **Muliple Linear Regressor**. The multiple linear regressor doesn't suffer from the danger of overfitting, and in fact, it's validated by the fact that the model accuracy actually was higher on the testing dataset. This means that even if new datapoints are introduced, this model would not lose its established predictive power.

On the other hand, the random forest regressor achieved an extremely high level of accuracy (97%) on the training dataset, indicating the possible danger of overfitting. While it did perform well enough on the testing dataset, it remains to be seen if introduction of additional data will reduce its effectiveness, and by how much.

## Importance of Features

We do not know if all 13 input features are important for prediction of the target. For the multiple linear regressor, this question can be answered by examining the regression equation. In particular, if the *coefficient* of the feature is high and if its *p-value* is simultaneously low (below 0.05), the input feature is an important predictor. The table below summarizes this finding for all 13 features along with the *intercept*.

| Feature | Coefficient | p value: P > mod(t) | Importance | 
| ------- | ----------- | ------------------- | ---------- |
| Intercept | 19.77 | 0.0077 | **yes** |
| CRIM | - 0.17 | 0.0002 | **yes** |
| ZN | 0.05 | 0.02 | **no - the coefficient is too low** |
| INDUS | -0.02 | 0.85 | **no - the p-value is too high** |
| CHAS | 3.6 | 0.0073 | **yes** |
| NOX | -17.36 | 0.0033 | **yes** |
| RM | 5.81 | 0 | **yes** |
| AGE | -0.06 | 0.003 | **no - the coefficient is too low** |
| DIS | -1.93 | 0 | **yes** |
| RAD | 0.22 | 0.0246 | **yes** |
| TAX | -0.01 | 0.0205 | **no - the coefficient is too low** |
| PTRATIO | -0.61 | 0.0017 | **yes** |
| B | 0.009 | 0.0327 | **no - the coefficient is too low** |
| LSTAT | -0.1 | 0.0769 | **no - the p-value is too high** |

Based on the above table, we can identify the most important features affecting the price of the house by ranking their coefficients from highest to lowest. The top three features are identified below.

* **NOX - Nitrogen Oxides Concentration** - this affects the house price negatively the most.
* **RM - Average Number of Rooms** - this affects the house price positively.
* **CHAS - Charles River Dummy** - this affects the house price positively. 

# Further Tuning

In the main project, we will analyze datasets containing many more columns. Not all columns would be good predictors of the target; we will use the **correlation matrix** and just plain old scatterplots to remove redundant features from the final feature dataset.

In order to prevent overfitting of the random forest regressor on the training data, we would consider reducting the percentage of data points available to the training dataset. We would also consider reducing the number of features for the random forest - in this exercise, we use a very nigh number (128).

Finally, we didn't encounter categorical input data - if we do, we would have to create *dummy variables*. We also didn't scale any input features to increase its sensitivity to the target; if we encounter input data with extremely large or small ranges, we would have to use the appropriate scalars to transform those features.