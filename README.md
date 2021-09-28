# Final_Project

## Project Proposal

For the final project, the team has decided to perform an analysis of housing prices for the DMV area over the last five years. The team wants to see if any trends can be detected in the data that might have been interrrupted by the COVID-19 pandemic. For instance, have more homes been purchased in 2020 than the average for the previous four years, have neighborhood demographics changed during the studied time period, and have home prices in 2020 gone up disproportionately to the other years in the study. The team also wants to use a supervised machine learning model to see if the data can be used to predict future home prices in the region.

## Technology Overview

The team intends to use the Pandas library for cleaning and scraping the data, PostgreSQL to store and complile the dataset to be analyzed, and the SciKitLearn library for compiling the machine learning model. Additionally, all visuals for the final deliverable will be created using Tableau. The project will be loaded for public access using Amazon Web Services.

All data used for the Segment 1 deliverables came from a precleaned and compiled dataset pulled from kaggle.com in order to mockup the databases and machine learning model we intend to use for the final project deliverable. The team intends to build a similar dataset with data relating to the DMV region and five year time period we are analyzing using webscraping and APIs from zillow.com and Census data for demographic information.

## Results of Analysis


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
<img width="715" alt="Screen Shot 2021-09-22 at 9 29 35 PM" src="https://user-images.githubusercontent.com/82982901/135129993-cbaa516b-7760-4b40-81c5-504c6c4fb559.png">

Second, a Random Forest Regressor model was created wich yielded a 96% training accuracy and a 71% testing accuracy.
<img width="720" alt="Screen Shot 2021-09-22 at 9 31 19 PM" src="https://user-images.githubusercontent.com/82982901/135130012-1051e1c0-3d32-4547-800e-63a1ddefe129.png">

The Random Forest Regressor model is preferred for this project as it has better control over overfitting as well as using averages to improve predictive accuracy.

## Presentation

The Google Collab slides can be found here. The additional Tableau dashboards can be found here and here.
