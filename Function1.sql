/*Function to retrieve the list of all trains passing through a given station:*/

CREATE OR REPLACE FUNCTION get_trains_at_station(station_id IN NUMBER)
RETURN SYS_REFCURSOR
IS
  trains SYS_REFCURSOR;
BEGIN
  OPEN trains FOR
  SELECT t.trainid, t.trainname, t.maxspeed, t.numcoaches, t.capacitypercoach, t.avgruntime
  FROM trains t
  JOIN trainschedule ts ON t.trainid = ts.trainid
  WHERE ts.stationid = station_id;
  
  RETURN trains;
END;
/
