
-- STEP 1 & 2: CREATE TABLES

CREATE TABLE Book (
    Book_ID         NUMBER PRIMARY KEY,
    Title           VARCHAR2(100) NOT NULL,
    Author          VARCHAR2(100),
    ISBN            VARCHAR2(20) UNIQUE,
    Genre           VARCHAR2(50),
    Publication_Year NUMBER
);

CREATE TABLE Member (
    Member_ID       NUMBER PRIMARY KEY,
    Name            VARCHAR2(100) NOT NULL,
    Address         VARCHAR2(200),
    Phone_Number    VARCHAR2(20),
    Email           VARCHAR2(100) UNIQUE,
    Membership_Type VARCHAR2(50)
);

CREATE TABLE Librarian (
    Librarian_ID    NUMBER PRIMARY KEY,
    Name            VARCHAR2(100) NOT NULL,
    Position        VARCHAR2(50),
    Email           VARCHAR2(100) UNIQUE,
    Shift           VARCHAR2(20)
);

CREATE TABLE Transaction (
    Transaction_ID  NUMBER PRIMARY KEY,
    Book_ID         NUMBER,
    Member_ID       NUMBER,
    Issue_Date      DATE NOT NULL,
    Return_Date     DATE,
    Status          VARCHAR2(20),
    CONSTRAINT fk_book FOREIGN KEY (Book_ID) REFERENCES Book(Book_ID),
    CONSTRAINT fk_member FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID)
);
