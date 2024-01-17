# **Crowdfunding_ETL**
Project 2 - ETL mini project

## Project Overview
We were given the Crowfunding data set to perform the ETL (Extract, Transform and Load) process with. We have used Pyhton and PyMongo to extract and transform the data whilst SQL and Postgres have been used to load and query the data

## **Resources**
- PgAdmin 4
- Visual Studio Code
- Jupyter Notebook
- QuickDBD

## ERD

![ERD drawing](https://github.com/BootcampCoderTF/Crowdfunding_ETL/blob/main/crowdfunding_db_ERD.png)

## Part 1: Create the Category and Subcategory DataFrames
First off we started by importing in the crowdfunding.xlsx file and converting it into a dataframe so we can start working with the data. Once the data was imported and converted into a dataframe we noticed that the data still needed some cleaning up to make it better to work with. We split the "category & sub-category" column into 2 different columns of "category" and "sub-category". Not only this but we split the data across as well into the 2 new columns. After this we used some list comprehension to assign new unique ID's to our all of our different categories and subcategories. We made dataframes with these new ID's into seperate dataframes and exported these as csv's.

## Part 2: Create the Campaign DataFrame
Once that was completed we created a copy of the crowd funding dataframe and called it campaign dataframe so we had a fresh base to work off. Once the new dataframe was copied we cleaned it up a bit to make it easier to work with, converted some data types from strings and integers to floats and date/time; also renamed some columns so it made it easier to keep track of when we were working on it. After all the reformatting we merged our new campaign dataframe with the category and sub category dataframes we made earlier so our cateogries and subcategoies now have there attached ID's in a "Master" dataframe. Finally we removed some uneeded columns and exported this final dataframe as a csv. 

## Part 3: Create the Contacts DataFrame
For the next sections firstly we imported the contacts.xlsx and converted it into a dataframe so we could work with and manipulate the data. There was 2 ways of going about this either with pandas or regex, below I will outline how we did both:
### Pandas
Firstly we needed to import the json dependency. Once this was done we created a loop to iterate through the contact_info_df and convert each row to a dictionary. Once the loop was done we made a dataframe out of the list of dictionaries it gave us, picked out the items we wanted to keep, split and cleaned the appropriate rows and exported it out as a csv. 
### Regex
Once the "re" dependency had been imported we created a copy of the contact info dataframe to work with. After that was done we extracted out the sections we needed one at a time checking what the data types were as we went along converting where necessary. After we had extracted all the data we needed we created a new dataframe with this information leaving behind all the things we didn't need. Finally we did some more cleaning and reorganising of the data and exported the finished dataframe as a csv  

## Part 4: Create the Crowdfunding Database

###### By Ayomide Olanrewaju, Daniel Hughes,  Tafadzwa Fararira, Yuk Hang Hui


