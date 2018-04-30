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

-- Select Product name and ID with a ORDER NUMBER
SELECT 
  p.szProductID, p.szProductName
FROM
  Orders o,
  Product p
WHERE
  o.szOrderID = 'ORDER_ID'
    AND o.szProductID =  p.szProductID;

-- Select the Inventory and the Product name
-- Name is from the Product table
SELECT 
  p.szProductID,
  p.szProductName,
  i.iQuantity,
  i.szRecievedDt,
  i.szExpirationDt
FROM
  Product p,
  Inventory i
WHERE
  i.szProductID = p.szProductID;
