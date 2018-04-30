USE GDSGoods;
DROP TABLE IF EXISTS Product;
CREATE TABLE Product (
  szProductID     VARCHAR(45)  NOT NULL,
  szProductName   VARCHAR(45)  NOT NULL,
  dbPrice         DOUBLE(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (szProductID)
);