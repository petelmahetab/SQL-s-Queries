/* Create an Table name BOOK's*/
show databases;
use grocerystore;

/* Create an Table name BOOK's*/
create table BOOK(
BookId INT primary key not null,
Title VARCHAR(100),
Author VARCHAR(30),
Genre VARCHAR(30),
Price DECIMAL(8,2),
Stock INT,
PublishedDate Date
);

/*Insert values */
INSERT INTO BOOK(BookId,Title,Author,Genre,Price,Stock,PublishedDate)
VALUES(1,'The Great Gatsbay','F. Scott Fitzgerald', 'Fiction', 10.99, 50, '1925-04-10'),
(2, '1984', 'George Orwell', 'Dystopian', 8.99, 30, '1949-06-08'),
(3, 'Becoming', 'Michelle Obama', 'Biography', 15.99, 100, '2018-11-13'),
(4, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 12.99, 20, '1937-09-21');

/*Show Database*/
select * from Book;

/*Update the Stock=40 of perticular book BOOKID=2 */
UPDATE Books
SET Stock=40
WHERE BookId=2;
