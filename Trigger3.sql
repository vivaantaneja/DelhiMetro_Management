/*Trigger to update the total distance and travel time of a route when the source or destination station is updated:*/

CREATE OR REPLACE TRIGGER update_route_info
AFTER UPDATE OF SourceStationID, DestStationID ON Routes
FOR EACH ROW
BEGIN
  UPDATE Routes SET TotalDistance = :new.TotalDistance, TotalTravelTime = :new.TotalTravelTime
  WHERE RouteID = :new.RouteID;
END;
/

