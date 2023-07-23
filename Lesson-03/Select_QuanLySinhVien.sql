USE	quan_ly_sinh_vien;

SELECT * FROM Student WHERE StudentName LIKE 'h%';
SELECT * FROM Class WHERE StartDate LIKE '_____12';
SELECT * FROM Subject WHERE Credit BETWEEN 3 AND 5;
UPDATE Student SET ClassID = 2 WHERE StudentName = "Hung";
SELECT StudentName, SubName, Mark 
FROM Student S
INNER JOIN Mark M
ON 
