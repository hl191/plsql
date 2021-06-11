BEGIN
	dbms_output.put_line(user || ' Tables in the database:');
	FOR t IN (SELECT table_name FROM user_tables)
		LOOP
			dbms_output.put_line(t.table_name);
		END LOOP;

	-- FOR i IN 1..commands.count loop
    -- FOR i IN va_vp_tab.FIRST .. va_vp_tab.LAST
END;
/ 