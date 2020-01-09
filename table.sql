CREATE TABLE Persons
(
    PersonID  int,
    LastName  varchar(255),
    FirstName varchar(255),
    Address   varchar(255),
    City      varchar(255)
);

INSERT INTO Persons
VALUES (1, 'Junior', 'Me', 'Best address', 'MyCity');
COMMIT;

select *
from Persons;

DROP TABLE Persons;

BEGIN
    dbms_output.put_line('Created, inserted and dropped table Persons');
END;
/