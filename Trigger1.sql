CREATE OR REPLACE TRIGGER tr_schedule_check_time
FOR INSERT OR UPDATE ON TrainSchedule
COMPOUND TRIGGER
  v_error NUMBER;
  
  BEFORE STATEMENT IS
  BEGIN
    v_error := 0;
  END BEFORE STATEMENT;
  
  BEFORE EACH ROW IS
  BEGIN
    IF :NEW.DepartureTime <= :NEW.ArrivalTime THEN
      v_error := 1;
    END IF;
  END BEFORE EACH ROW;
  
  AFTER EACH ROW IS
  BEGIN
    IF v_error = 1 THEN
      RAISE_APPLICATION_ERROR(-20001, 'Departure time must be later than arrival time.');
    END IF;
  END AFTER EACH ROW;
  
  AFTER STATEMENT IS
  BEGIN
    v_error := 0;
  END AFTER STATEMENT;
END;
/
