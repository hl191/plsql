CREATE TABLE Persons (
		PersonID int,
		LastName varchar(255),
		FirstName varchar(255),
		Address varchar(255),
		City varchar(255)
	);
	
INSERT INTO Persons VALUES (1, 'Junior', 'Me', 'Best address', 'MyCity');
COMMIT;

DECLARE
	rc sys_refcursor;	
BEGIN
	
	-- Open the cursor and loop through the records
	open rc for select * from Persons;
    dbms_sql.return_result(rc);
	
END;
/

DROP TABLE Persons;

BEGIN
	dbms_output.put_line('Created, inserted and dropped table Persons'); 
END;
/