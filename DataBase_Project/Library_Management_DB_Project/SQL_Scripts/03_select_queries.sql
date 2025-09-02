
-- STEP 4: SELECT QUERIES

SELECT B.Title, M.Name AS Borrower, T.Status
FROM Transaction T
INNER JOIN Book B ON T.Book_ID = B.Book_ID
INNER JOIN Member M ON T.Member_ID = M.Member_ID
WHERE T.Status IN ('Borrowed', 'Overdue');

SELECT M.Name, COUNT(T.Transaction_ID) AS Total_Transactions
FROM Member M
JOIN Transaction T ON M.Member_ID = T.Member_ID
GROUP BY M.Name
HAVING COUNT(T.Transaction_ID) > 0;

SELECT T.Transaction_ID, B.Title, M.Name, T.Issue_Date, T.Status
FROM Transaction T
INNER JOIN Book B ON T.Book_ID = B.Book_ID
INNER JOIN Member M ON T.Member_ID = M.Member_ID;


SELECT B.Title, T.Status
FROM Book B
LEFT JOIN Transaction T ON B.Book_ID = T.Book_ID
WHERE T.Status = 'Borrowed';


SELECT DISTINCT M.Name
FROM Member M
WHERE M.Member_ID IN (
    SELECT T.Member_ID
    FROM Transaction T
    JOIN Book B ON T.Book_ID = B.Book_ID
    WHERE B.Author = 'George Orwell'
);
