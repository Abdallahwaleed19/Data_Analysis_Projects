
-- STEP 3: INSERT DATA

-- Book
INSERT INTO Book VALUES (1, '1984', 'George Orwell', '9780451524935', 'Dystopian', 1949);
INSERT INTO Book VALUES (2, 'To Kill a Mockingbird', 'Harper Lee', '9780061120084', 'Classic', 1960);
INSERT INTO Book VALUES (3, 'The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 'Novel', 1925);
INSERT INTO Book VALUES (4, 'The Hobbit', 'J.R.R. Tolkien', '9780547928227', 'Fantasy', 1937);
INSERT INTO Book VALUES (5, 'Sapiens', 'Yuval Noah Harari', '9780062316110', 'History', 2011);

-- Member
INSERT INTO Member VALUES (101, 'Alice Smith', '123 Main St', '555-1234', 'alice@example.com', 'Premium');
INSERT INTO Member VALUES (102, 'Bob Johnson', '456 Park Ave', '555-5678', 'bob@example.com', 'Standard');
INSERT INTO Member VALUES (103, 'Charlie Davis', '789 Elm Rd', '555-9012', 'charlie@example.com', 'Premium');
INSERT INTO Member VALUES (104, 'Dana Lee', '321 Oak Dr', '555-3456', 'dana@example.com', 'Standard');
INSERT INTO Member VALUES (105, 'Eve Adams', '654 Pine Ln', '555-7890', 'eve@example.com', 'Premium');

-- Librarian
INSERT INTO Librarian VALUES (201, 'John Miller', 'Head Librarian', 'john@library.com', 'Morning');
INSERT INTO Librarian VALUES (202, 'Sarah Green', 'Assistant', 'sarah@library.com', 'Evening');
INSERT INTO Librarian VALUES (203, 'Mark White', 'Clerk', 'mark@library.com', 'Afternoon');
INSERT INTO Librarian VALUES (204, 'Laura Brown', 'Technician', 'laura@library.com', 'Night');
INSERT INTO Librarian VALUES (205, 'Tom Black', 'Volunteer', 'tom@library.com', 'Weekend');

-- Transaction
INSERT INTO Transaction VALUES (1001, 1, 101, SYSDATE-10, SYSDATE, 'Returned');
INSERT INTO Transaction VALUES (1002, 2, 102, SYSDATE-5, NULL, 'Borrowed');
INSERT INTO Transaction VALUES (1003, 3, 103, SYSDATE-8, SYSDATE-2, 'Returned');
INSERT INTO Transaction VALUES (1004, 4, 104, SYSDATE, NULL, 'Overdue');
INSERT INTO Transaction VALUES (1005, 5, 105, SYSDATE-3, SYSDATE+5, 'Returned');
