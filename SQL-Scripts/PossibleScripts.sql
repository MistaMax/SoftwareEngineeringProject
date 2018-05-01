--1
-- Select the Product where the price is greater than PUT_DOUBLE_HERE
-- Replace PUT_DOUBLE_HERE with a double
-- Can be reversed to grab products less than PUT_DOUBLE_HERE by changing > to <
SELECT 
  p.szProductID,
  p.szProductName,
  p.dbPrice
FROM
  Product p
WHERE
  p.dbPrice > PUT_DOUBLE_HERE;

--2
-- Select Product name and ID with a ORDER NUMBER
SELECT 
  p.szProductID, p.szProductName
FROM
  Orders o,
  Product p
WHERE
  o.szOrderID = 'ORDER_ID'
    AND o.szProductID =  p.szProductID;

--3
-- Select the Inventory and the Product name
-- Name is from the Product table
SELECT 
  p.szProductID,
  p.szProductName,
  i.iQuantity,
  p.dbPrice,
  i.szRecievedDt,
  i.szExpirationDt
FROM
  Product p,
  Inventory i
WHERE
  i.szProductID = p.szProductID;
 
 --4
 -- Get the Total Cost, Total Items, Order Date, Order ID
 -- The most annoying Query I have written.... So faaaaar
 SELECT 
    t1.szOrderID,
    t1.szOrderDT,
    SUM(dbTotalPrice) AS dbTotalCost,
    SUM(iTotalQty) AS iTotalItems
FROM
    (SELECT 
        oo.szProductID,
            oo.szOrderID,
            oo.szOrderDT,
            SUM(oo.iQuantity) * pp.dbPrice AS dbTotalPrice,
            SUM(oo.iQuantity) AS iTotalQty
    FROM
        Orders oo, Product pp
    WHERE
        oo.szProductID = pp.szProductID
    GROUP BY oo.szOrderID , oo.szProductID , oo.szOrderDT) t1
GROUP BY t1.szOrderID , t1.szOrderDT;

