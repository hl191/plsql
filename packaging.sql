CREATE OR REPLACE PACKAGE greet AS
	PROCEDURE greetings;
	PROCEDURE personalizedGreeting(person VARCHAR2);
END greet;
/

CREATE OR REPLACE PACKAGE BODY greet AS
	
	PROCEDURE greetings IS
	BEGIN
		dbms_output.put_line('Hello World!');
	END greetings;
	
	PROCEDURE personalizedGreeting(person VARCHAR2) IS
	BEGIN
		dbms_output.put_line('Hello ' || person || '!');
	END personalizedGreeting;
END greet;
/

BEGIN
	greet.greetings();
	greet.personalizedGreeting('You');
	greet.personalizedGreeting(:person);
END;
/