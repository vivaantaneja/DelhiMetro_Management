CREATE OR REPLACE TRIGGER tr_no_overlapping_schedules
FOR INSERT OR UPDATE ON TrainSchedule
COMPOUND TRIGGER
  -- Define a collection to store the start and end times of all schedules
  TYPE time_range_type IS RECORD(start_time TIMESTAMP, end_time TIMESTAMP);
  TYPE time_range_table_type IS TABLE OF time_range_type INDEX BY PLS_INTEGER;
  time_range_table time_range_table_type;

  -- Define a procedure to update the time_range_table collection
  PROCEDURE update_time_range_table(start_time IN TIMESTAMP, end_time IN TIMESTAMP) IS
  BEGIN
    FOR i IN 1..time_range_table.COUNT LOOP
      -- Check if the new schedule overlaps with an existing schedule
      IF (start_time < time_range_table(i).end_time AND end_time > time_range_table(i).start_time) THEN
        RAISE_APPLICATION_ERROR(-20001, 'Overlapping schedules are not allowed.');
      END IF;
    END LOOP;
    -- Add the new schedule to the collection
    time_range_table(time_range_table.COUNT + 1).start_time := start_time;
    time_range_table(time_range_table.COUNT).end_time := end_time;
  END update_time_range_table;

BEFORE EACH ROW IS
BEGIN
  -- Update the time_range_table collection with the new schedule
  update_time_range_table(:NEW.DepartureTime, :NEW.ArrivalTime);
END BEFORE EACH ROW;

AFTER STATEMENT IS
BEGIN
  -- Clear the time_range_table collection after the statement is complete
  time_range_table.DELETE;
END AFTER STATEMENT;
END tr_no_overlapping_schedules;
/
