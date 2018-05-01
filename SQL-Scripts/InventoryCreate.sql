USE GDSGoods;
DROP TABLE IF EXISTS Inventory;
CREATE TABLE Inventory (
  szProductID    VARCHAR(45) NOT NULL,
  iQuantity      INT(100)    NOT NULL DEFAULT 0,
  szRecievedDt   DATE        NOT NULL DEFAULT '1000-01-01',
  szExpirationDt DATE        NOT NULL DEFAULT '1000-01-01',
  PRIMARY KEY (szProductID)
);
