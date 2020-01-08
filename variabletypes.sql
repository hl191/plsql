DECLARE 
   -- Global variables  
   num1 number := 95;   -- assignment
   num2 number NOT NULL DEFAULT 85;  -- default value and not null constraint
   -- constant declaration 
   pi constant number := 3.141592654; 
BEGIN  
   dbms_output.put_line('Outer Variable num1: ' || num1); 
   dbms_output.put_line('Outer Variable num2: ' || num2); 
   dbms_output.put_line('Constant Variable pi: ' || pi); 
   DECLARE  
      -- Local variables 
      num1 number := 195;  
      num2 number := 185;  
   BEGIN  
      dbms_output.put_line('Inner Variable num1: ' || num1); 
      dbms_output.put_line('Inner Variable num2: ' || num2); 
   END;  
END; 
/ 