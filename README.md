### **Crowdfunding_ETL**
Project 2 - ETL mini project

## Project Overview
We were given the Crowfunding data set to perform the ETL (Extract, Transform and Load) process with. We have used Pyhton and PyMongo to extract and transform the data whilst SQL and Postgres have been used to load and query the data

## **Resources**
- PgAdmin 4
- Visual Studio Code
- Jupyter Notebook
- QuickDBD
- backer_info.csv

## ERD

![ERD drawing](https://github.com/BootcampCoderTF/Crowdfunding_ETL/blob/main/Data%20Analysis/images/_EDRcrowdfunding_db_schema.png)

## Part 1: Create the Category and Subcategory DataFrames
First off we started by importing in the csv file and converting it into a dataframe so we can start working with the data. Once the data was imported and converted into a csv we noticed that the data still needed some cleaning up to make it better to work with. We split the "category & sub-category" column into 2 different columns of "category" and "sub-category". Not only this but we split the data across as well into the 2 new columns. After this we used some list comprehension to assign new unique ID's to our all of our different categories and subcategories. We made dataframes with these new ID's into seperate dataframes and exported these as csv's.

## Part 2: Create the Campaign DataFrame
Once that was completed we created a copy of the crowd funding dataframe and called it campaign dataframe so we had a fresh base to work off. Once the new dataframe was copied we cleaned it up a bit to make it easier to work with, converted some data types from strings and integers to floats and date/time; also renamed some columns so it made it easier to keep track of when we were working on it. After all the reformatting we merged our new campaign dataframe with the category and sub category dataframes we made earlier so our cateogries and subcategoies now have there attached ID's in a "Master" dataframe. Finally we removed some uneeded columns and exported this final dataframe as a csv. 

## Part 3: Create the Contacts DataFrame

## Part 4: Create the Crowdfunding Database

###### By Ayomide Olanrewaju, Daniel Hughes,  Tafadzwa Fararira, Yuk Hang Hui


