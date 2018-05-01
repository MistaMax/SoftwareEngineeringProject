USE GDSGoods;
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
  szOrderID     VARCHAR(45)  NOT NULL,
  szProductID   VARCHAR(45)  NOT NULL,
  iQuantity     INT(100)     NOT NULL DEFAULT 0,
  szShipmentID  VARCHAR(45)  NOT NULL,
  szOrderDT     DATE         NOT NULL DEFAULT '1000-01-01',
  PRIMARY KEY (szProductID)
);
