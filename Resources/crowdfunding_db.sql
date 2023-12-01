-- Create Category table
CREATE TABLE Category (
    category_id VARCHAR(20) PRIMARY KEY,
    category VARCHAR(20)
);

-- Create Subcategory table
CREATE TABLE Subcategory (
    subcategory_id VARCHAR(30) PRIMARY KEY,
    subcategory VARCHAR(30)
);

-- Create Contacts table
CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(30),
    email VARCHAR(50)
);

-- Create Campaign table with foreign keys
CREATE TABLE Campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(50),
    description VARCHAR(50),
    goal INT,
    pledged INT,
    outcome VARCHAR(30),
    backers_count INT,
    country VARCHAR(5),
    currency VARCHAR(5),
    launched_date TIMESTAMP,
    end_date TIMESTAMP,
    category_id VARCHAR(10),
    subcategory_id VARCHAR(20),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id),
    FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id)
);
