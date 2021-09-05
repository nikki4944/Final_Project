# Overview

In this project, we will create models to predict house prices based on a variety of features. This falls in the category of developing *supervised* ML-driven algorithms to predict the output. Since the output - the house price - is a continuous variable, the following two ML algorithms are appropriate for development:

* Multiple Linear Regression - in this algorithm, an equation such as Y = f(X) describes the relationship between features - X - (also called as independent variables) and the target - Y - (also called as the dependent variable). The multiple linear regression will derive this equation with the objective of minimizing *root mean squared error* (RMSE).

* Random Forest Regression - in this algorithm, an ML-driven decision tree is used to map the input features - X - to the output target - Y - using randomly generated features with the same objective as above - minimization of *root mean squared error* (RMSE). The difference is that the relationship between X and Y is not linear, and is controlled by a set of hidden features that the random forest algorithm generates. We expect this algorithm to perform better than the *Multiple Linear Regression* algorithm.

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

The complete dataset is available in the csv format ![here](boston_housing.csv)

# Methodology

```flow
st=>start: Start
op=>operation: Your Operation
cond=>condition: Yes or No?
e=>end

st->op->cond
cond(yes)->e
cond(no)->op
```
