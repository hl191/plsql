BEGIN
	EXECUTE IMMEDIATE 'DROP VIEW ShortPersons';
	EXECUTE IMMEDIATE 'DROP TABLE Persons';
	EXECUTE IMMEDIATE 'DROP TABLE PostalCodes';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;
COMMIT;

CREATE TABLE Persons
(
	PersonId  INT,
	LastName  VARCHAR(255),
	FirstName VARCHAR(255),
	Address   VARCHAR(255),
	ZipCode   INT
);

CREATE TABLE PostalCodes
(
	ZipCode INT,
	City    VARCHAR(255),
	PRIMARY KEY (ZipCode)
);

INSERT INTO Persons
	VALUES (1, 'Junior', 'Me', 'Best address', 3013);
INSERT INTO Persons
	VALUES (2, 'Senior', 'Me', 'Best address', 3013);
INSERT INTO Persons
	VALUES (3, 'Old', 'You', '2nd Best address', 39100);
INSERT INTO Persons
	VALUES (4, 'Young', 'You', '2nd Best address', 39100);

CREATE TRIGGER NewPostalCode
	AFTER INSERT
	ON PostalCodes
	FOR EACH ROW
BEGIN
	dbms_output.put_line('Created new Postalcode entry, ZipCode: ' || :NEW.ZipCode || ', City: ' || :NEW.City);
END;


INSERT INTO PostalCodes
	VALUES (3013, 'Bern');
INSERT INTO PostalCodes
	VALUES (39100, 'Bozen');

DROP TRIGGER NewPostalCode;
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

ALTER TABLE Persons
	ADD FOREIGN KEY (ZipCode) REFERENCES PostalCodes (ZipCode);

BEGIN
	dbms_output.put_line('Created, inserted and dropped table Persons');
END;
/