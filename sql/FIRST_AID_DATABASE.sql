-- Create the database
CREATE DATABASE IF NOT EXISTS first_aid_business;
USE first_aid_business;

-- Drop tables if they already exist (for refresh/testing purposes)
DROP TABLE IF EXISTS Shipment;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Customer;

-- Create Customer table
CREATE TABLE Customer (
    customer_id        INT PRIMARY KEY,
    first_name         VARCHAR(50) NOT NULL,
    last_name          VARCHAR(50) NOT NULL,
    email              VARCHAR(100),
    phone_number       VARCHAR(25),
    birthdate          DATE
);

-- Create Inventory (Products) table
CREATE TABLE Inventory (
    ProductID          INT PRIMARY KEY,
    Product_name       VARCHAR(150) NOT NULL,
    Price$             DECIMAL(10,2) NOT NULL,
    Stock_Level        INT NOT NULL
);

-- Create Order table
CREATE TABLE Orders (
    Order_ID                INT PRIMARY KEY,
    Foreign_Customer_ID     INT NOT NULL,
    Product_ID              INT NOT NULL,
    Quantity                INT NOT NULL,
    Date_Ordered            DATE,
    Status                  VARCHAR(30),
    Total_Amount            DECIMAL(10,2),
    FOREIGN KEY (Foreign_Customer_ID) REFERENCES Customer(customer_id),
    FOREIGN KEY (Product_ID) REFERENCES Inventory(ProductID)
);

-- Create Shipment table
CREATE TABLE Shipment (
    shipment_ID              INT PRIMARY KEY,
    order_id                 INT NOT NULL,
    shipped_date             DATE,
    Carrier_info             VARCHAR(50),
    Foreign_Customer_ID      INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders (Order_ID),
    FOREIGN KEY (Foreign_Customer_ID) REFERENCES Customer(customer_id)
);
