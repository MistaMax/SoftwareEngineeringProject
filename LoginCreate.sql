USE GDSGoods;
DROP TABLE IF EXISTS Login;
CREATE TABLE Login (
  szUsername     VARCHAR(45) NOT NULL,
  szPassword     VARCHAR(45) NOT NULL,
  PRIMARY KEY (szUsername)
);