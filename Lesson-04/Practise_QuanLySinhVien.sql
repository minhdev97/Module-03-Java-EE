USE	quan_ly_sinh_vien;

SELECT Address, COUNT(StudentID) AS 'SỐ LƯỢNG HỌC VIÊN'
FROM Student
GROUP BY ADDRESS;

SELECT S.STUDENTID, S.STUDENTNAME, AVG(MARK)
FROM STUDENT S JOIN MARK M ON S.STUDENTID = M.STUDENTID
GROUP BY S.STUDENTID, S.STUDENTNAME;

SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) > 15;

SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);

SELECT *
FROM Subject
WHERE Credit = (SELECT MAX(Credit) FROM Subject);

SELECT *
FROM Subject
JOIN Mark ON Mark.SubID = Subject.SubID
WHERE Mark = (SELECT MAX(Mark) FROM Mark);

SELECT *
FROM STUDENT
JOIN MARK ON Student.StudentID = Mark.StudentID
ORDER BY MARK DESC;

