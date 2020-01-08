CREATE OR REPLACE PROCEDURE greetings --cut the or replace ... w/e
AS -- AS for standalone procedures, else IS it is :D
BEGIN 
   dbms_output.put_line('Hello World!'); 
END; 
/

EXECUTE greetings;

--clean up
DROP PROCEDURE greetings; 

DECLARE 
	a number; 
	b number; 
	c number;
   
	PROCEDURE findMin(x IN number, y IN number, z OUT number) IS 
	BEGIN 
	   IF x < y THEN 
		  z:= x; 
	   ELSE 
		  z:= y; 
	   END IF; 
	END;  
 
BEGIN 
   a:= 22; 
   b:= 33; 
   findMin(a, b, c); 
   dbms_output.put_line(' Minimum of (' || a || ', ' || b || ') : ' || c); 
END; 
/