  -- library.db practice 1 solution 

  select * from Loans;
select * from patrons;
select * from books;

                                  -- From the Loans table
								  
--Q1 - We want to see what is the name of the patron who took the loans. Join the loan tables on “PatronID” with the appropriate table.
                                
select * from loans
inner join patrons
on Loans.PatronID = patrons.PatronID;

--SELECT * FROM Loans INNER JOIN Patrons on loans.PatronID = Patrons.PatronID;
-- doubt class
--SELECT loans.LoanID, Patrons.PatronID, Patrons.FirstName, Patrons.LastName FROM Loans INNER JOIN Patrons on loans.PatronID = Patrons.PatronID;

	-- for adding column or update use this 
                             --UPDATE table_name
                             --SET column1 = value1, column2 = value2...., columnN = valueN
                             --WHERE [condition];
	
								 
--Q2 - Which Patron took the most loans.
    select count(distinct(PatronID)) from Patrons;
	
	SELECT * FROM Loans INNER JOIN Patrons on loans.PatronID = Patrons.PatronID;
	-- doubt class
	--SELECT Patrons.PatronID, count(loans.PatronID) FROM Loans INNER JOIN Patrons 
    --on Loans.PatronID = Patrons.PatronID GROUP BY Loans.PatronID   
     --ORDER BY count(loans.PatronID) DESC;

	




--Q3 - Which book had the most loans against it.

select 
-- SELECT Loans.BookID, count(Loans.BookID) from Loans INNER Join Books On Loans.BookID = Books.BookID GROUP BY Loans.BookID ORDER BY count(Loans.BookID) DESC; 

--doubt class
          --SELECT Books.BookID, Books.Title, count(loans.BookID) FROM Loans INNER JOIN Books 
         --on Loans.BookID = Books.BookID
         --GROUP BY Books.BookID
         --ORDER BY count(loans.BookID) DESC;



--Q4 - Show which entry was returned late compared to the Due date
select * from loans;




