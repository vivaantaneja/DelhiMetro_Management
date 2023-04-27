/*Trigger to prevent overlapping schedules for a train at a station: STATION TABLE*/

CREATE OR REPLACE TRIGGER trg_no_overlapping_schedules
BEFORE INSERT OR UPDATE ON TrainSchedule
FOR EACH ROW
DECLARE
  overlap_exists NUMBER;
BEGIN
  SELECT COUNT(*) INTO overlap_exists
  FROM TrainSchedule
  WHERE TrainID = :NEW.TrainID
  AND StationID = :NEW.StationID
  AND (DepartureTime <= :NEW.ArrivalTime AND ArrivalTime >= :NEW.DepartureTime);

  IF overlap_exists > 0 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Overlapping schedules not allowed.');
  END IF;
END;
/
