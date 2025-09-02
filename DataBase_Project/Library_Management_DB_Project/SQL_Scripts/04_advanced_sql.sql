
-- STEP 5: ADVANCED SQL

-- Option 1: Sequence
CREATE SEQUENCE transaction_seq
  START WITH 1006
  INCREMENT BY 1
  NOCACHE;

-- Example insert using sequence
-- INSERT INTO Transaction (Transaction_ID, Book_ID, Member_ID, Issue_Date, Return_Date, Status)
-- VALUES (transaction_seq.NEXTVAL, 1, 101, SYSDATE, NULL, 'Borrowed');

-- Option 2: View
CREATE VIEW Transaction_Summary AS
SELECT 
    T.Transaction_ID,
    B.Title AS Book_Title,
    M.Name AS Member_Name,
    T.Issue_Date,
    T.Return_Date,
    T.Status
FROM Transaction T
JOIN Book B ON T.Book_ID = B.Book_ID
JOIN Member M ON T.Member_ID = M.Member_ID;
