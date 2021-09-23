# Overview

Supervised machine learning models are developed to predict the sale price of recently sold houses in the Montgomery County, MD. The data is [here](montgomery-county-sales/sale_price.csv). There are close to 16K records in this dataset representing houses sold from Q3 2020 to Q3 2021. In addition, this data is enriched by school assignments. Further, school ratings data has been obttained from GreatSchools and is available [here](mcps_school_ratings.csv). To recap, the data pipeline is shown in the picture below.

![](montgomery-county-sales/images/data_pipeline.png)

# Machine Learning Model Features

Data is extracted from the database. In the first phase, we will *not* use the school ratings data, and run the machine learning model on data from the *Houses* table itself. The following features are selected as predictors of the house price. These features are selected from all of the available features we could extract from Zillow data. There could be other important sale price predictors, but they could not be scraped from the Zillow data.

| Feature Name | Type | Rationale |
| ------------ | ---- | --------- |
| Number of bathrooms | Numeric (can be a fraction) | More the number of bathrooms, higher the expected sale price |
| Number of bedrooms | Numeric (can be a fraction) | More the number of bedrooms, higher the expected sale price |
| Home type | Categorical (only three values retained) - apartment, single family or townhouse | The three retained values are most frequent and the sale price is expected to differ among these types |
| Living area | Numeric - normalized all values to sq. feet | The higher the living area, the higher the expected sale price |
| Lot area | Numeric - normalized all values to sq. feet | The higher the lot area, the higher the expected sale price |
| Date Sold | Categorical (broken down in quarters) - Q3 2020, Q4 2020, Q1 2021, Q2 2021, Q3 2021 | Since home prices climbed rapidly in the last year, this feature is expected to influence the sale price |
| Age | Numeric - in years up to 2021 | The newer the house, the higher the expected sale price |

# Data splitting

Data was cleaned, all NULL rows were dropped and finally, it was split into the training and testing set. 20% data was used for testing, while the remaining 80% was used for training. The code is available [here](montgomery-county-sales/ml_ver1.ipynb).

# Model Choice

Since we need to predict the sale price of the house and since we have plenty of training data available, we will use *supervised machine learning*. Further, because the target variable is numeric, we will use the following two prediction algorithms:

* Multiple linear regression  
* Random Forrest regression

The code for these two models is available [here](montgomery-county-sales/ml_ver1.ipynb).
