DECLARE
	-- Global variables
	num1        NUMBER := 95; -- assignment
	num2        NUMBER NOT NULL DEFAULT 85; -- default value and not null constraint
	-- constant declaration
	pi CONSTANT NUMBER := 3.141592654;
BEGIN
	dbms_output.put_line('Outer Variable num1: ' || num1);
	dbms_output.put_line('Outer Variable num2: ' || num2);
	dbms_output.put_line('Constant Variable pi: ' || pi);
	DECLARE
		-- Local variables
		num1 NUMBER := 195;
		num2 NUMBER := 185;
	BEGIN
		dbms_output.put_line('Inner Variable num1: ' || num1);
		dbms_output.put_line('Inner Variable num2: ' || num2);
	END;
END;
/ 