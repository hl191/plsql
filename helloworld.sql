DECLARE
    -- variable declaration
    message VARCHAR2(20) := 'Hello, World!';

BEGIN
    /*
    *  PL/SQL executable statement(s)
    *  Use SET SERVEROUTPUT ON; to see console output
    */
    dbms_output.put_line(message);
END;
/