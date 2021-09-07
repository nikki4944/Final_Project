# Resources

## House Sales Price Data

All house sales in the last 12 months in the **Montgomery County, MD** were queried and found from Zillow. This data has following important characteristics:

* Complete address
* Lattitude and Longitude
* Sale price
* Z-estimate
* Square footage
* Number of bedrooms
* Number of bathrooms
* Lot size

## Zillow Data Scraping Tool

Zillow data was scraped using the following method:

* By successively setting appropriate filters (so as not to let Zillow exceed the total dataset size over 500 and cause pagination), data was retrieved on the Zillow portal.
* From the developers tool, the API response was downloaded - it is downloaded in a *HAR* format.
* The following free tool is used to scrape the HTML response and dump the output in JSON: https://stevesie.com/apps/zillow-api. The resulting JSON file is saved in an S3 bucket in AWS (TODO: Give the public location of the S3 bucket).

## Maryland Zip-Tabulated Demographics Data

The 2020 demographics data for all Maryland zip codes is avaulable from the Maryland government website here: https://data.imap.maryland.gov/datasets/eb706b48117b43d482c63d02017fc3ff/explore?location=38.817745%2C-77.268400%2C8.60

**Warning**: This data is extremely hard to get though publicly available. It takes a lot of trial and error and patience.

## Greatschools School Ratings Data

All elementary, middle and high school ratings data has been extracted from Greatschools: https://www.greatschools.org/

## Important Locations in the Montgomery County

The following important locations will be saved in a table:

* Malls
* I495
* Interstate County Connector (ICC)
* Community Centers
* Montgomery College Campuses


