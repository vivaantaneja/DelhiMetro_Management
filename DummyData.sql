/*Stations*/

INSERT INTO Stations (StationID, StationName, StationAddress, TotalPlatforms, LinesPassing, ContactNumber) VALUES (1, 'Dilshad Garden', 'Main GT Road, Dilshad Garden Industrial Area, Dilshad Garden, New Delhi, Delhi 110095', 2, 'Red Line', '011-22185517');
INSERT INTO Stations (StationID, StationName, StationAddress, TotalPlatforms, LinesPassing, ContactNumber) VALUES (2, 'Kashmere Gate', 'Kashmere Gate, New Delhi, Delhi 110006', 3, 'Red Line, Yellow Line', '011-23860837');
INSERT INTO Stations (StationID, StationName, StationAddress, TotalPlatforms, LinesPassing, ContactNumber) VALUES (3, 'Rajiv Chowk', 'Rajiv Chowk Metro Station, Block B, Connaught Place, New Delhi, Delhi 110001', 2, 'Yellow Line, Blue Line', '011-23417910');
INSERT INTO Stations (StationID, StationName, StationAddress, TotalPlatforms, LinesPassing, ContactNumber) VALUES (4, 'Central Secretariat', 'Sardar Patel Marg, Nirman Bhawan, New Delhi, Delhi 110011', 4, 'Yellow Line, Violet Line', '011-23313909');
INSERT INTO Stations (StationID, StationName, StationAddress, TotalPlatforms, LinesPassing, ContactNumber) VALUES (5, 'Nehru Place', 'Captain Gaur Marg, Nehru Place, New Delhi, Delhi 110019', 2, 'Violet Line', '011-26449192');

/*Trains*/

INSERT INTO Trains (TrainID, TrainName, MaxSpeed, NumCoaches, CapacityPerCoach, AvgRunTime) VALUES (1, 'Red Line 1', 80, 8, 200, 45);
INSERT INTO Trains (TrainID, TrainName, MaxSpeed, NumCoaches, CapacityPerCoach, AvgRunTime) VALUES (2, 'Yellow Line 1', 80, 6, 200, 50);
INSERT INTO Trains (TrainID, TrainName, MaxSpeed, NumCoaches, CapacityPerCoach, AvgRunTime) VALUES (3, 'Blue Line 1', 80, 8, 200, 55);
INSERT INTO Trains (TrainID, TrainName, MaxSpeed, NumCoaches, CapacityPerCoach, AvgRunTime) VALUES (4, 'Green Line 1', 70, 6, 150, 60);
INSERT INTO Trains (TrainID, TrainName, MaxSpeed, NumCoaches, CapacityPerCoach, AvgRunTime) VALUES (5, 'Violet Line 1', 80, 6, 200, 65);

/*Routes*/

INSERT INTO Routes (RouteID, SourceStationID, DestStationID, TotalDistance, TotalTravelTime, Fare) VALUES (1, 1, 2, 15.3, 20, 25.0);
INSERT INTO Routes (RouteID, SourceStationID, DestStationID, TotalDistance, TotalTravelTime, Fare) VALUES (2, 2, 3, 17.8, 22, 25.0);
INSERT INTO Routes (RouteID, SourceStationID, DestStationID, TotalDistance, TotalTravelTime, Fare) VALUES (3, 3, 4, 16.6, 19, 25.0);
INSERT INTO Routes (RouteID, SourceStationID, DestStationID, TotalDistance, TotalTravelTime, Fare) VALUES (4, 4, 5, 21.9, 28, 25.0);

/*TrainSchedule*/

INSERT INTO TrainSchedule (TrainID, StationID, ArrivalTime, DepartureTime) VALUES (1, 1, TO_TIMESTAMP('06-02-2023 06:00:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('06-02-2023 06:01:00', 'DD-MM-YYYY HH24:MI:SS'));
INSERT INTO TrainSchedule (TrainID, StationID, ArrivalTime, DepartureTime) VALUES (1, 2, TO_TIMESTAMP('06-02-2023 06:03:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('06-02-2023 06:04:00', 'DD-MM-YYYY HH24:MI:SS'));
INSERT INTO TrainSchedule (TrainID, StationID, ArrivalTime, DepartureTime) VALUES (1, 3, TO_TIMESTAMP('06-02-2023 06:06:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('06-02-2023 06:07:00', 'DD-MM-YYYY HH24:MI:SS'));
INSERT INTO TrainSchedule (TrainID, StationID, ArrivalTime, DepartureTime) VALUES (1, 4, TO_TIMESTAMP('06-02-2023 06:09:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('06-02-2023 06:10:00', 'DD-MM-YYYY HH24:MI:SS'));

/*Passenger*/

INSERT INTO Passengers (PassengerID, PassengerName, Age, Gender, ContactNumber, Email, PaymentMethod) VALUES (1, 'John Smith', 25, 'M', '555-1234', 'john.smith@example.com', 'Credit Card');
INSERT INTO Passengers (PassengerID, PassengerName, Age, Gender, ContactNumber, Email, PaymentMethod) VALUES (2, 'Jane Doe', 35, 'F', '555-5678', 'jane.doe@example.com', 'PayPal');
INSERT INTO Passengers (PassengerID, PassengerName, Age, Gender, ContactNumber, Email, PaymentMethod) VALUES (3, 'Bob Johnson', 45, 'M', '555-9876', 'bob.johnson@example.com', 'Credit Card');
INSERT INTO Passengers (PassengerID, PassengerName, Age, Gender, ContactNumber, Email, PaymentMethod) VALUES (4, 'Alice Williams', 30, 'F', '555-4321', 'alice.williams@example.com', 'PayPal');
INSERT INTO Passengers (PassengerID, PassengerName, Age, Gender, ContactNumber, Email, PaymentMethod) VALUES (5, 'Mike Davis', 50, 'M', '555-1111', 'mike.davis@example.com', 'Credit Card');


/*Token*/

INSERT INTO Token (TokenID, PassengerID, TokenBalance, TokenPrice, TransactionID) VALUES (10, 1, 10, 100, 10001);
INSERT INTO Token (TokenID, PassengerID, TokenBalance, TokenPrice, TransactionID) VALUES (11, 2, 20, 100, 10002);
INSERT INTO Token (TokenID, PassengerID, TokenBalance, TokenPrice, TransactionID) VALUES (12, 3, 15, 100, 10003);
INSERT INTO Token (TokenID, PassengerID, TokenBalance, TokenPrice, TransactionID) VALUES (13, 4, 30, 100, 10004);
INSERT INTO Token (TokenID, PassengerID, TokenBalance, TokenPrice, TransactionID) VALUES (14, 5, 5, 100, 10005);

/*Employees*/

INSERT INTO Employees (EmployeeID, StationID, EmployeeName, Designation, Department, ContactNumber, Email, Salary) VALUES (1, 1, 'John Doe', 'Station Manager', 'Operations', '555-1234', 'john.doe@example.com', 50000.00);
INSERT INTO Employees (EmployeeID, StationID, EmployeeName, Designation, Department, ContactNumber, Email, Salary) VALUES (2, 2, 'Jane Smith', 'Train Operator', 'Transportation', '555-5678', 'jane.smith@example.com', 35000.00);
INSERT INTO Employees (EmployeeID, StationID, EmployeeName, Designation, Department, ContactNumber, Email, Salary) VALUES (3, 3, 'Bob Johnson', 'Maintenance Supervisor', 'Facilities', '555-9012', 'bob.johnson@example.com', 45000.00);
INSERT INTO Employees (EmployeeID, StationID, EmployeeName, Designation, Department, ContactNumber, Email, Salary) VALUES (4, 4, 'Alice Brown', 'Customer Service Representative', 'Customer Service', '555-3456', 'alice.brown@example.com', 30000.00);
INSERT INTO Employees (EmployeeID, StationID, EmployeeName, Designation, Department, ContactNumber, Email, Salary) VALUES (5, 5, 'Mike Davis', 'Security Officer', 'Security', '555-7890', 'mike.davis@example.com', 40000.00);

/*Complaints*/

INSERT INTO Complaints (ComplaintID, PassengerID, StationID, TrainID, ComplaintType, ComplaintDesc, ComplaintDate) VALUES (100, 1, 1, 1, 'Delay', 'The metro was delayed by 30 minutes causing me to miss an important meeting', TO_TIMESTAMP('2023-04-28 09:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Complaints (ComplaintID, PassengerID, StationID, TrainID, ComplaintType, ComplaintDesc, ComplaintDate) VALUES (101, 2, 2, 1, 'Cleanliness', 'The metro was very dirty and smelled bad', TO_TIMESTAMP('2023-04-27 16:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Complaints (ComplaintID, PassengerID, StationID, TrainID, ComplaintType, ComplaintDesc, ComplaintDate) VALUES (103, 2, 3, 1, 'Crowding', 'The metro was extremely crowded and it was difficult to breathe', TO_TIMESTAMP('2023-04-26 08:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Complaints (ComplaintID, PassengerID, StationID, TrainID, ComplaintType, ComplaintDesc, ComplaintDate) VALUES (104, 3, 3, 3, 'Ticketing', 'Token recharge machine was not working properly', TO_TIMESTAMP('2023-04-25 12:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Complaints (ComplaintID, PassengerID, StationID, TrainID, ComplaintType, ComplaintDesc, ComplaintDate) VALUES (105, 4, 5, 5, 'Security', 'I felt unsafe due to the lack of security personnel on the train', TO_TIMESTAMP('2023-04-24 19:15:00', 'YYYY-MM-DD HH24:MI:SS'));

/*Maintenance*/

INSERT INTO Maintenance (MaintenanceID, TrainID, MaintenanceType, MaintenanceDesc, MaintenanceDate)  VALUES (1, 1, 'Regular Maintenance', 'Routine inspection and cleaning', TO_TIMESTAMP('2022-01-05 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Maintenance (MaintenanceID, TrainID, MaintenanceType, MaintenanceDesc, MaintenanceDate)  VALUES (2, 2, 'Minor Repair', 'Replacing a broken window', TO_TIMESTAMP('2022-02-10 14:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Maintenance (MaintenanceID, TrainID, MaintenanceType, MaintenanceDesc, MaintenanceDate)  VALUES (3, 3, 'Regular Maintenance', 'Routine inspection and cleaning', TO_TIMESTAMP('2022-03-15 09:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Maintenance (MaintenanceID, TrainID, MaintenanceType, MaintenanceDesc, MaintenanceDate)  VALUES (4, 4, 'Major Repair', 'Replacing a damaged wheel', TO_TIMESTAMP('2022-04-20 11:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Maintenance (MaintenanceID, TrainID, MaintenanceType, MaintenanceDesc, MaintenanceDate)  VALUES (5, 5, 'Regular Maintenance', 'Routine inspection and cleaning', TO_TIMESTAMP('2022-05-25 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));

/*Lost and Found*/

INSERT INTO LostAndFound(ItemID, PassengerID, StationID, TrainID, ItemType, ItemDesc, FoundDate) VALUES (1, 1, 1, 1, 'Wallet', 'Black leather wallet containing cash and credit cards', TO_TIMESTAMP('2022-01-01 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO LostAndFound(ItemID, PassengerID, StationID, TrainID, ItemType, ItemDesc, FoundDate) VALUES (2, 2, 2, 2, 'Mobile phone', 'Samsung Galaxy S21 with black case', TO_TIMESTAMP('2022-02-15 12:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO LostAndFound(ItemID, PassengerID, StationID, TrainID, ItemType, ItemDesc, FoundDate) VALUES (3, 3, 3, 3, 'Laptop', 'Dell Inspiron 15 with blue case', TO_TIMESTAMP('2022-03-20 15:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO LostAndFound(ItemID, PassengerID, StationID, TrainID, ItemType, ItemDesc, FoundDate) VALUES (4, 4, 4, 4, 'Bag', 'Brown leather bag with a shoulder strap', TO_TIMESTAMP('2022-04-10 18:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO LostAndFound(ItemID, PassengerID, StationID, TrainID, ItemType, ItemDesc, FoundDate) VALUES (5, 5, 5, 5, 'Umbrella', 'Small red and black umbrella with a wooden handle', TO_TIMESTAMP('2022-05-05 09:15:00', 'YYYY-MM-DD HH24:MI:SS'));

/*Parking*/

INSERT INTO Parking (StationID, ParkingType, ParkingCapacity, ParkingCharges) VALUES (1, 'Two-Wheeler', 50, 20.00);
INSERT INTO Parking (StationID, ParkingType, ParkingCapacity, ParkingCharges) VALUES (1, 'Four-Wheeler', 20, 50.00);
INSERT INTO Parking (StationID, ParkingType, ParkingCapacity, ParkingCharges) VALUES (2, 'Two-Wheeler', 30, 15.00);
INSERT INTO Parking (StationID, ParkingType, ParkingCapacity, ParkingCharges) VALUES (2, 'Four-Wheeler', 15, 40.00);

/*Vendor*/

INSERT INTO Vendor (VendorID, StationID, VendorName, VendorType, ContactNumber, Email) VALUES (1, 1, 'Metro Mart', 'Retail', '9876543210', 'metromart@gmail.com');
INSERT INTO Vendor (VendorID, StationID, VendorName, VendorType, ContactNumber, Email) VALUES (2, 1, 'Snacks Stop', 'Food and Beverage', '9876543211', 'snacksstop@gmail.com');
INSERT INTO Vendor (VendorID, StationID, VendorName, VendorType, ContactNumber, Email) VALUES (3, 2, 'Quick Bites', 'Food and Beverage', '9876543212', 'quickbites@gmail.com');
INSERT INTO Vendor (VendorID, StationID, VendorName, VendorType, ContactNumber, Email) VALUES (4, 2, 'News and More', 'Retail', '9876543213', 'newsandmore@gmail.com');

