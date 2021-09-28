# Final_Project

## Project Overview

For the final project, the team performed an analysis of housing data for Montgomery County, Marland, from January 2016 through September 2021. The data was analyzed to see if any trends could be detected in the data that might have been interrrupted by the COVID-19 pandemic. Finally, a supervised machine learning model was built to determine if housing prices could be predicted based on the collected real estate information.

The data consisted of a .csv file obatined from the real estate MLS database which provided comprehensive housing information for each home sold in Montgomery County over the past five years. The information in the .csv file was parred down to contain the core elements determined by the group to be most relevant to the analysis.

<img width="326" alt="Screen Shot 2021-09-26 at 5 39 07 PM" src="https://user-images.githubusercontent.com/82982901/134825053-6cb0d9ba-6ae5-490d-a8ab-8c74dbd06e09.png">

## Technology Overview

The team used the Pandas library for cleaning and scraping the data, PostgreSQL to store the dataset, and the SciKitLearn library for compiling the machine learning model. Additionally, all visuals for the final deliverable were created using Tableau.

## Overview of Analysis



## Machine Learning Model

### Data Preprocessing

The machine learning models were created using our previously cleaned .csv file of housing information obtained from the real estate MLS database. The original data set contained over 100 columns which were trimmed down to seventeen of the most important as determined by the group.

For the machine learning model, the seventeen columns, or features, were trimmed down further to only contain the following: Sold Price, New Construction YN, Age, InteriorSqFt, Bedrooms, Baths, Garage YN, #ofStories, and Stucture Type. The Sold Price column was further preproccessed by removing the "$" and "," from the number. The final step was to run .get_dummies() on the dataframe to convert all features to numerical values.

### Feature Selection

The model is designed to predict housing prices based on the features provided for analysis. The Sold Price column was designated as the target with the New Construction UN, Age, InteriorSqFt, Bedrooms, Baths, Garage YN, #ofStories, and Structure Type columns used as the features. 

### Training and Testing

The data was split into 20% testing and 80% training sets.

### Model Choice

Two supervised machine learning models were created in order to determine the most accurate model for predicting housing prices using this dataset.

First, a Multiple Linear Regression model was created which yielded a 56% testing accuracy and a 59% training accuracy.
<img width="715" alt="Screen Shot 2021-09-22 at 9 29 35 PM" src="https://user-images.githubusercontent.com/82982901/134824560-60cd78a9-ac3c-4f9b-95ca-53d15506b3eb.png">

Second, a Random Forest Regressor model was created wich yielded a 96% training accuracy and a 71% testing accuracy.
<img width="720" alt="Screen Shot 2021-09-22 at 9 31 19 PM" src="https://user-images.githubusercontent.com/82982901/134824553-b2f12a50-1669-4b03-934a-4980fe79a1f6.png">

The Random Forest Regressor model is preferred for this project as it has better control over overfitting as well as using averages to improve predictive accuracy. Additional changes to the features of the model will be made in order to see if the accuracy can be improved.

## Summary



## Presentation
The Google Slides presentation can be found [here](https://docs.google.com/presentation/d/1-4T5Qp4jW8rH_IEMHoFSeD3qF8_sQpcPtzCkrLryhHk/edit?usp=sharing).

The full Tableau visualizations can be found here and here.
