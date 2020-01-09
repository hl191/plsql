CREATE TABLE Persons
(
    PersonId  INT,
    LastName  VARCHAR(255),
    FirstName VARCHAR(255),
    Address   VARCHAR(255),
    City      VARCHAR(255)
);

INSERT INTO Persons
VALUES (1, 'Junior', 'Me', 'Best address', 'MyCity');
COMMIT;

SELECT *
FROM Persons;

CREATE VIEW ShortPersons AS
SELECT LastName, FirstName
FROM Persons;

SELECT *
FROM ShortPersons;

CREATE UNIQUE INDEX UniquePersonIdIndex ON Persons (PersonId);
CREATE INDEX NameIndex ON Persons (LastName, FirstName);

DROP INDEX UniquePersonIdIndex;

ALTER TABLE Persons
    ADD PRIMARY KEY (PersonId);

DROP VIEW ShortPersons;
DROP TABLE Persons;

BEGIN
    dbms_output.put_line('Created, inserted and dropped table Persons');
END;
/