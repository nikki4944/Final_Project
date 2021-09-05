# Final_Project

## Project Proposal
A mockup database has been created using Amazon RDS and Postgres to host our CSV data.
- First I created an ERD (entity relationship diagram) to show the layout of the data in the table: there are 14 columns of data that are either numeric (including decimals) or integers. The `medv` column stands for "median value of owner-occupied homes in \$1000s" which is our target for the project since we are looking at the variance in home prices over time:

![FinalProject_Housing_ERD](https://user-images.githubusercontent.com/82347825/132143874-da1f3fff-2fe2-4d9b-9a80-167ab461aa92.png)

- Next I created an RDS database using AWS and connected it to Postgres:

![FinalProject_Database_Mockup_Postgres](https://user-images.githubusercontent.com/82347825/132143903-61b3366b-43ad-4792-9e08-251fc9ccc456.png)

- In Postgres I created the table with column names:

![FinalProject_Housing_CreateTableCode](https://user-images.githubusercontent.com/82347825/132143913-3972af79-d2c2-43ab-92c7-0f684ab0ee0e.png)

- And the final result with the data loaded:

![FinalProject_Housing_Postgres_Data](https://user-images.githubusercontent.com/82347825/132143923-ac272c5e-4926-4d72-960c-c962366087a8.png)
