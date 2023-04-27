/*Function to retrieve the list of all employees for a given station:*/

CREATE OR REPLACE FUNCTION get_station_employees(station_id IN NUMBER)
RETURN SYS_REFCURSOR
IS
  employees SYS_REFCURSOR;
BEGIN
  OPEN employees FOR
  SELECT employeeid, employeename, designation, department, contactnumber, email, salary
  FROM employees
  WHERE stationid = station_id;
  
  RETURN employees;
END;
/