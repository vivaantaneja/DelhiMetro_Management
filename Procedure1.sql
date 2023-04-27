/*Procedure to update the capacity of a parking lot for a given station:*/

CREATE OR REPLACE PROCEDURE update_parking_capacity(station_id IN NUMBER, new_capacity IN NUMBER)
IS
BEGIN
  UPDATE parking
  SET parkingcapacity = new_capacity
  WHERE stationid = station_id;
  
  DBMS_OUTPUT.PUT_LINE('Parking capacity for station ' || station_id || ' updated to ' || new_capacity);
END;
/
