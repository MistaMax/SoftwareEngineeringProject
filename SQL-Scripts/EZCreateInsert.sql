--
-- GDSGoods DBS
--
-- USE GDSGoods;

--
-- Employee Table
--
DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee (
  szEmpID     VARCHAR(45) NOT NULL,
  szUsername  VARCHAR(45) NOT NULL,
  iManager    VARCHAR(45) NOT NULL DEFAULT 0,
  szFirstName VARCHAR(45) NOT NULL DEFAULT 'Bill',
  szLastName  VARCHAR(45) NULL     DEFAULT 'Nye',
  PRIMARY KEY (szEmpID)
);
DELETE FROM Employee;
INSERT INTO Employee VALUES(
    "abc123", "1a2b3c", 1, "John", "Doe"
);
INSERT INTO Employee VALUES(
    "def456", "4d5e6f", 0, "Bill", "Board"
);
INSERT INTO Employee VALUES(
    "ghi789", "7g8h9i", 0, "Chris", "Cross"
);
INSERT INTO Employee VALUES(
    "jkl024", "0j2k4l", 1, "Hugh", "Jass"
);
INSERT INTO Employee VALUES(
    "mno680", "6m8n0o", 0, "Brock", "Lee"
);
INSERT INTO Employee VALUES(
    "pqr369", "3p6q9r", 0, "Polly", "Ester"
);

--
-- Inventory Table
--
DROP TABLE IF EXISTS Inventory;
CREATE TABLE Inventory (
  szProductID    VARCHAR(45) NOT NULL,
  iQuantity      INT(100)    NOT NULL DEFAULT 0,
  szRecievedDt   DATE        NOT NULL DEFAULT '1000-01-01',
  szExpirationDt DATE        NOT NULL DEFAULT '1000-01-01',
  PRIMARY KEY (szProductID, szRecievedDt)
);
DELETE FROM Inventory;
INSERT INTO Inventory VALUES(
    "GM123", 2, "2018-04-20", "2018-05-30"
);
INSERT INTO Inventory VALUES(
    "BN664", 20, "2018-03-10", "2018-05-10"
);
INSERT INTO Inventory VALUES(
    "GP564", 45, "2018-04-10", "2018-05-15"
);
INSERT INTO Inventory VALUES(
    "OR876", 10, "2018-04-20", "2018-04-15"
);
INSERT INTO Inventory VALUES(
    "SM234", 10, "2018-03-20", "2018-05-30"
);
INSERT INTO Inventory VALUES(
    "ST456", 5, "2018-01-01", "2018-02-02"
);

--
-- Login Table
--
DROP TABLE IF EXISTS Login;
CREATE TABLE Login (
  szUsername     VARCHAR(45) NOT NULL,
  szPassword     VARCHAR(256) NOT NULL,
  PRIMARY KEY (szUsername)
);
DELETE FROM Login;
INSERT INTO Login VALUES(
    "1a2b3c", "password"
);
INSERT INTO Login VALUES(
    "4d5e6f", "password"
);
INSERT INTO Login VALUES(
    "7g8h9i", "password"
);
INSERT INTO Login VALUES(
    "0j2k4l", "password"
);
INSERT INTO Login VALUES(
    "6m8n0o", "password"
);
INSERT INTO Login VALUES(
    "3p6q9r", "password"
);

--
-- Orders Table
--
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
  szOrderID     VARCHAR(45)  NOT NULL,
  szProductID   VARCHAR(45)  NOT NULL,
  iQuantity     INT(100)     NOT NULL DEFAULT 0,
  szShipmentID  VARCHAR(45)  NOT NULL,
  szOrderDT     DATE         NOT NULL DEFAULT '1000-01-01',
  PRIMARY KEY (szProductID)
);
DELETE FROM Orders;
INSERT INTO Orders VALUES(
    "O1111", "GM123", 10, "S1111", "2019-03-02"
);
INSERT INTO Orders VALUES(
    "O2222", "BN664", 10, "S2222", "2019-04-02"
);
INSERT INTO Orders VALUES(
    "O3333", "GP564", 10, "S2222", "2019-04-20"
);
INSERT INTO Orders VALUES(
    "O1111", "OR876", 10, "S1111", "2019-03-02"
);
INSERT INTO Orders VALUES(
    "O3333", "SM234", 10, "S1111", "2019-04-20"
);

--
-- Product Table
--
DROP TABLE IF EXISTS Product;
CREATE TABLE Product (
  szProductID     VARCHAR(45)  NOT NULL,
  szProductName   VARCHAR(45)  NOT NULL,
  szLocation      VARCHAR(45)  NOT NULL,
  dbPrice         DOUBLE(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (szProductID)
);
DELETE FROM Product;
INSERT INTO Product VALUES(
    "GM123", "Giant Melons", "Aisle 5", 10.00
);
INSERT INTO Product VALUES(
    "SM234", "Small Melons", "Aisle 5", 5.00
);
INSERT INTO Product VALUES(
    "GP564", "Grapes", "Aisle 1", 4.00
);
INSERT INTO Product VALUES(
    "BN664", "Banana", "Aisle 3", 0.50
);
INSERT INTO Product VALUES(
    "OR876", "Orange", "Aisle 2", 0.15
);
INSERT INTO Product VALUES(
    "ST456", "Strawberry", "Aisle 1", 1.00
);