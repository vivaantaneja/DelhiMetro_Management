/*Trigger on TrainSchedule table to prevent a new schedule from being added if the departure time is earlier than the arrival time:*/

CREATE OR REPLACE TRIGGER tr_schedule_check_time
BEFORE INSERT OR UPDATE ON TrainSchedule
FOR EACH ROW
BEGIN
  IF :NEW.DepartureTime <= :NEW.ArrivalTime THEN
    RAISE_APPLICATION_ERROR(-20001, 'Departure time must be later than arrival time.');
  END IF;
END;
/
