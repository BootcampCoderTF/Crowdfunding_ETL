-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/LkKiWY
-- Once Database are created it is important to import the CSVs in the following order for foreign key relationships:
-- contacts.csv
-- category.csv
-- subcategory.csv
-- campaign.csv

-- Format the datestyle for the database to Month/Day/Year
ALTER DATABASE "Pewlett Hackard (sql-challenge)" SET datestyle TO "ISO, MDY";

CREATE TABLE category (
    category_id VARCHAR(4)   NOT NULL,
    category VARCHAR(20)   NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10)   NOT NULL,
    subcategory VARCHAR(30)   NOT NULL,
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts (
    contact_id INT   NOT NULL,
    first_name VARCHAR(30)   NOT NULL,
    last_name VARCHAR(30)   NOT NULL,
    email VARCHAR(255)   NOT NULL,
    PRIMARY KEY (contact_id)
);

CREATE TABLE campaign (
    cf_id INT   NOT NULL,
    contact_id INT   NOT NULL,
    company_name VARCHAR(255)   NOT NULL,
    description VARCHAR(255)   NOT NULL,
    goal INT   NOT NULL,
    pledged INT   NOT NULL,
    outcome VARCHAR(10)   NOT NULL,
    backers_count INT   NOT NULL,
    country CHAR(2)   NOT NULL,
    currency CHAR(3)   NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(4)   NOT NULL,
    subcategory_id VARCHAR(10)   NOT NULL,
    PRIMARY KEY (cf_id,contact_id),
    FOREIGN KEY(contact_id) REFERENCES Contacts (contact_id),
    FOREIGN KEY(category_id) REFERENCES Category (category_id),
    FOREIGN KEY(subcategory_id) REFERENCES Subcategory (subcategory_id)
);