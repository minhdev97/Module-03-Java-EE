USE Quan_ly_ban_hang;

INSERT INTO Customer
VALUES (1, 'Minh QUan', 10);
INSERT INTO Customer
VALUES (2, 'Ngoc Oanh', 20);
INSERT INTO Customer
VALUES (3, 'Hong Ha', 50);

INSERT INTO Orders(oID, cID, oDate)
VALUES 
(1,1,'2006-3-21'),
(2,2,'2006-3-23'),
(3,1,'2006-3-16');

INSERT INTO Product
VALUES
(1,'May Giat',3),
(2,'Tu Lanh',5),
(3,'Dieu Hoa',7),
(4,'Quat',1),
(5,'Bep Dien',2);

INSERT INTO OrderDetail(oID, pID, odQTY)
VALUES
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);


USE Quan_ly_ban_hang;
SELECT  oID, oDate, pPrice FROM Orders;

SELECT c.Name AS CUSTOMER_NAME, p.pName AS NAME_OF_PRODUCT
FROM Customer c
INNER JOIN Orders o
ON c.cID = o.cID
INNER JOIN OrderDetail od
ON o.oID = od.oID
INNER JOIN Product p
ON o.pID = p.pID;

SELECT *
FROM Customer c
LEFT JOIN Orders o
ON c.cID = o.cID
WHERE o.cID IS NULL;

SELECT o.oID, o.oDate, SUM(od.odQTY*p.pPrice) as oTotalPrice
FROM Orders o
JOIN OrderDetail od
ON o.oID = od.oID
JOIN Product p
ON p.pID = od.pID
GROUP BY oID;
