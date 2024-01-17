# **Crowdfunding_ETL**
Project 2 - ETL mini project

## Project Overview
We were given the Crowdfunding data set to perform the ETL (Extract, Transform, and Load) process with. We have used Python and PyMongo to extract and transform the data whilst SQL and Postgres have been used to load and query the data

## **Resources**
- PgAdmin 4
- Visual Studio Code
- Jupyter Notebook
- QuickDBD

## ERD

![ERD drawing](https://github.com/BootcampCoderTF/Crowdfunding_ETL/blob/main/Data%20Analysis/images/_EDRcrowdfunding_db_schema.png)

## Part 1: Create the Category and Subcategory DataFrames
First off we started by importing the crowdfunding.xlsx file and converting it into a dataframe so we can start working with the data. Once the data was imported and converted into a dataframe we noticed that the data still needed some cleaning up to make it better to work with. We split the "category & sub-category" column into 2 different columns of "category" and "sub-category". Not only this but we split the data across as well into the 2 new columns. After this, we used some list comprehension to assign new unique IDs to all of our different categories and subcategories. We made data frames with these new IDs into separate data frames and exported these as csv's.

## Part 2: Create the Campaign DataFrame
Once that was completed we created a copy of the crowdfunding data frame and called it the campaign data frame so we had a fresh base to work off. Once the new data frame was copied we cleaned it up a bit to make it easier to work with, converted some data types from strings and integers to floats and date/time, and renamed some columns so it made it easier to keep track of when we were working on it. After all the reformatting we merged our new campaign data frame with the category and subcategory data frames we made earlier so our categories and subcategories now have their attached IDs in a "Master" data frame. Finally, we removed some unneeded columns and exported this final data frame as a CSV. 

## Part 3: Create the Contacts DataFrame
For the next sections firstly we imported the contacts.xlsx and converted it into a dataframe so we could work with and manipulate the data. There were 2 ways of going about this either with pandas or regex, below I will outline how we did both:
### Pandas
Firstly, we needed to import the JSON dependency. Once this was done we created a loop to iterate through the contact_info_df and convert each row to a dictionary. Once the loop was done we made a data frame out of the list of dictionaries it gave us, picked out the items we wanted to keep, split and cleaned the appropriate rows, and exported it out as a CSV. 
### Regex
Once the "re" dependency had been imported we created a copy of the contact info dataframe to work with. After that was done we extracted out the sections we needed one at a time checking what the data types were as we went along converting where necessary. After we had extracted all the data we needed we created a new dataframe with this information leaving behind all the things we didn't need. Finally, we did some more cleaning and reorganising of the data and exported the finished data frame as a CSV  

## Part 4: Create the Crowdfunding Database
The final stage of the project was creating a database, crowdfunding_db, using our now-cleaned and extracted data. To create this database, first, we had to establish the relationship between the data in the CSV files and then visualise the relationship in the form of an Entity Relationship Diagram (ERD), the image shown above. Specifying the correct primary keys, foreign keys, and data types we created the tables in order of dependency. That is, independent entities first and dependent entities last, to handle the foreign key. Therefore, the table was created in this order: Category, Subcategory, contacts, and campaign. After which, the data in the respective csv files was imported into the tables, in their order of creation. Using the 'SELECT' function, we confirmed that the tables were created correctly and that the data was imported into the tables correctly. The file crowdfunding_db_schema.sql contains the code used to create the tables.
In conclusion, the crowdfunding database was successfully created, and we can now run quick data analysis to answer questions about the crowdfunding.

###### By Ayomide Olanrewaju, Daniel Hughes,  Tafadzwa Fararira, Yuk Hang Hui


