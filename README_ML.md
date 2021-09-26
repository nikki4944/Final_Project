# Final Project

## Machine Learning Model

### Data Preprocessing

The machine learning models were created using our previously cleaned csv file of housing information obtained from the real estate MLS database. The original data set contained over 100 columns which were trimmed down to seventeen of the most important as determined by the group.

For the machine learning model, the seventeen columns, or features, were trimmed down further to only contain the following: Sold Price, New Construction YN, Age, InteriorSqFt, Bedrooms, Baths, Garage YN, #ofStories, and Stucture Type. The Sold Price column was further preproccessed by removing the "$" and "," from the number. The final step was to run .get_dummies() on the dataframe to convert all features to numerical values.

### Feature Selection

As the purpuse of the model is to predict housing prices, the Sold Price column was used as the target feature.

### Training and Testing

The data was split into 20% testing and 80% training sets.

### Model Choice

Two models were created in order to determine the most accurate model for predicting housing prices using this dataset. 

First, a Multiple Linear Regression model was created which yielded a 56% testing accuracy and a 59% training accuracy.
<img width="715" alt="Screen Shot 2021-09-22 at 9 29 35 PM" src="https://user-images.githubusercontent.com/82982901/134442663-5e1c73e7-0b1b-452c-91c7-2eef39527de8.png">

Second, a Random Forest Regressor model was created wich yielded a 96% training accuracy and a 71% testing accuracy.
<img width="720" alt="Screen Shot 2021-09-22 at 9 31 19 PM" src="https://user-images.githubusercontent.com/82982901/134442779-89f24a43-cec3-4400-b58f-2db5283a0456.png">

The Random Forest Regressor model is preferred for this project as it has better control over overfitting as well as using averages to improve predictive accuracy.
