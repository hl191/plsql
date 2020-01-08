DECLARE 
   num1 INTEGER; 
   num2 REAL; 
   num3 DOUBLE PRECISION; 
   isFancy BOOLEAN;
   string VARCHAR2(5);
   
   -- userdefined subtypes
   SUBTYPE shortmsg IS char(20); 
   -- declare variable msg as shortmsg typed
   msg shortmsg;
BEGIN 
   msg := 'This is a msg which will be too long';
EXCEPTION
	WHEN OTHERS THEN
		-- since shortmsg datatype assignment should fail ...
		dbms_output.put_line('Exception occurred'); 
		ROLLBACK;
END; 
/ 