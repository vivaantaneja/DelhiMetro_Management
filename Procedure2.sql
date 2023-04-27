/*Procedure to insert a new complaint:*/

CREATE SEQUENCE complaint_seq START WITH 1 INCREMENT BY 1; /*Create Sequence First*/
CREATE OR REPLACE PROCEDURE add_complaint(
  passenger_id IN NUMBER,
  station_id IN NUMBER,
  train_id IN NUMBER,
  complaint_type IN VARCHAR2,
  complaint_desc IN VARCHAR2
)
IS
BEGIN
  INSERT INTO complaints(complaintid, passengerid, stationid, trainid, complainttype, complaintdesc, complaintdate)
  VALUES (complaint_seq.NEXTVAL, passenger_id, station_id, train_id, complaint_type, complaint_desc, SYSDATE);
  
  DBMS_OUTPUT.PUT_LINE('Complaint added successfully.');
END;
/
