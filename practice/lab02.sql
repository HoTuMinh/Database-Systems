CREATE DATABASE My_Classicmodels;

USE My_Classicmodels;

-- Create the productlines table
CREATE TABLE productlines (
    productLine VARCHAR(50) PRIMARY KEY,
    textDescription VARCHAR(4000),
    htmlDescription MEDIUMTEXT,
    image MEDIUMBLOB
);

-- Create the products table
CREATE TABLE products (
    productCode VARCHAR(15) PRIMARY KEY,
    productName VARCHAR(70),
    productLine VARCHAR(50),
    productScale VARCHAR(10),
    productVendor VARCHAR(50),
    productDescription TEXT,
    quantityInStock SMALLINT,
    buyPrice DOUBLE,
    FOREIGN KEY (productLine) REFERENCES productlines(productLine) ON UPDATE CASCADE
);

-- Create the orders table
CREATE TABLE orders (
    orderNumber INT AUTO_INCREMENT PRIMARY KEY,
    orderDate DATETIME,
    requiredDate DATETIME,
    shippedDate DATETIME,
    status VARCHAR(15),
    comments TEXT,
    customerNumber INT
);

-- Create the orderdetails table
CREATE TABLE orderdetails (
    orderNumber INT,
    productCode VARCHAR(15),
    quantityOrdered INT,
    priceEach DOUBLE,
    orderLineNumber SMALLINT,
    PRIMARY KEY (orderNumber, productCode),
    FOREIGN KEY (orderNumber) REFERENCES orders(orderNumber) ON UPDATE CASCADE,
    FOREIGN KEY (productCode) REFERENCES products(productCode) ON UPDATE CASCADE
);

DROP TABLE orderdetails, orders, products, productlines;

DROP DATABASE My_Classicmodels;

CREATE DATABASE My_Classicmodels;
USE My_Classicmodels;

-- Create the productlines table
CREATE TABLE productlines (
    productLine VARCHAR(50) PRIMARY KEY,
    textDescription VARCHAR(4000),
    htmlDescription MEDIUMTEXT,
    image MEDIUMBLOB
);

-- Create the products table
CREATE TABLE products (
    productCode VARCHAR(15) PRIMARY KEY,
    productName VARCHAR(70),
    productLine VARCHAR(50),
    productScale VARCHAR(10),
    productVendor VARCHAR(50),
    productDescription TEXT,
    quantityInStock SMALLINT(6),
    buyPrice DOUBLE
);

-- Create the orders table
CREATE TABLE orders (
    orderNumber INT(11) AUTO_INCREMENT PRIMARY KEY,
    orderDate DATETIME,
    requiredDate DATETIME,
    shippedDate DATETIME,
    status VARCHAR(15),
    comments TEXT,
    customerNumber INT(11)
);

-- Create the orderdetails table
CREATE TABLE orderdetails (
    orderNumber INT(11),
    productCode VARCHAR(15),
    quantityOrdered INT(11),
    priceEach DOUBLE,
    orderLineNumber SMALLINT(6),
    PRIMARY KEY (orderNumber, productCode)
);

-- Add foreign key for productLine in products table
ALTER TABLE products ADD CONSTRAINT fk_productline FOREIGN KEY (productLine) REFERENCES productlines(productLine) ON UPDATE CASCADE;

-- Add foreign key for productCode in orderdetails table
ALTER TABLE orderdetails ADD CONSTRAINT fk_productcode FOREIGN KEY (productCode) REFERENCES products(productCode) ON UPDATE CASCADE;

-- Add foreign key for orderNumber in orderdetails table
ALTER TABLE orderdetails ADD CONSTRAINT fk_ordernumber FOREIGN KEY (orderNumber) REFERENCES orders(orderNumber) ON UPDATE CASCADE;

