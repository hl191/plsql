DELETE FROM PERSONS WHERE PERSONID > 4;

SAVEPOINT initial_sp;

INSERT INTO Persons
	VALUES (5, 'Random', 'Dude', 'Best address', 3013);
-- Causes implicit rollback due to constraint violation
-- INSERT INTO Persons
-- 	VALUES (5, 'Random', 'Dude', 'Best address', 3013);

SAVEPOINT intermediate_sp;
INSERT INTO Persons
	VALUES (6, 'Random', 'Dude', 'Best address', 3013);

-- Explicit rollback
ROLLBACK TO initial_sp; -- omit the savepoint to rollback to last commit
COMMIT;