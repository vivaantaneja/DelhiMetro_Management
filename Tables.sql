CREATE TABLE Stations (
  StationID NUMBER(10) PRIMARY KEY,
  StationName VARCHAR2(100) NOT NULL,
  StationAddress VARCHAR2(500) NOT NULL,
  TotalPlatforms NUMBER(2),
  LinesPassing VARCHAR2(200),
  ContactNumber VARCHAR2(15) NOT NULL UNIQUE,
  CONSTRAINT chk_TotalPlatforms CHECK (TotalPlatforms > 0)
);

CREATE TABLE Trains (
  TrainID NUMBER(10) PRIMARY KEY,
  TrainName VARCHAR2(100) NOT NULL,
  MaxSpeed NUMBER(5),
  NumCoaches NUMBER(3),
  CapacityPerCoach NUMBER(3),
  AvgRunTime NUMBER(5)
);

CREATE TABLE Routes (
  RouteID NUMBER(10) PRIMARY KEY,
  SourceStationID NUMBER(10),
  DestStationID NUMBER(10),
  TotalDistance NUMBER(8,2),
  TotalTravelTime NUMBER(6),
  Fare NUMBER(6,2),
  CONSTRAINT fk_Routes_SourceStations FOREIGN KEY (SourceStationID) REFERENCES Stations(StationID) ON DELETE CASCADE,
  CONSTRAINT fk_Routes_DestStations FOREIGN KEY (DestStationID) REFERENCES Stations(StationID) ON DELETE CASCADE
);

CREATE TABLE TrainSchedule (
  TrainID NUMBER(10),
  StationID NUMBER(10),
  ArrivalTime TIMESTAMP,
  DepartureTime TIMESTAMP,
  PRIMARY KEY (TrainID, StationID),
  CONSTRAINT fk_TrainSchedule_Trains FOREIGN KEY (TrainID) REFERENCES Trains(TrainID) ON DELETE CASCADE,
  CONSTRAINT fk_TrainSchedule_Stations FOREIGN KEY (StationID) REFERENCES Stations(StationID) ON DELETE CASCADE
);

CREATE TABLE Passengers (
  PassengerID NUMBER(10) PRIMARY KEY,
  PassengerName VARCHAR2(100) NOT NULL,
  Age NUMBER(3),
  Gender CHAR(1),
  ContactNumber VARCHAR2(15) NOT NULL UNIQUE,
  Email VARCHAR2(100),
  PaymentMethod VARCHAR2(50) NOT NULL
);

CREATE TABLE Token (
  TokenID NUMBER(10),
  PassengerID NUMBER(10),
  TokenBalance NUMBER(10),
  TokenPrice NUMBER(6,2),
  TransactionID NUMBER(10) NOT NULL,
  PRIMARY KEY(TokenID,TokenPrice),
  CONSTRAINT chk_balance CHECK (TokenBalance>0),
  CONSTRAINT fk_passengerID_Passengers FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID) 
);

CREATE TABLE Employees (
  EmployeeID NUMBER(10) PRIMARY KEY,
  StationID NUMBER(10),
  EmployeeName VARCHAR2(100) NOT NULL,
  Designation VARCHAR2(50),
  Department VARCHAR2(50),
  ContactNumber VARCHAR2(15) NOT NULL UNIQUE,
  Email VARCHAR2(100),
  Salary NUMBER(8,2),
  CONSTRAINT fk_stationID_Stations FOREIGN KEY (StationID) REFERENCES Stations(StationID)  
);

CREATE TABLE Complaints (
  ComplaintID NUMBER(10) PRIMARY KEY,
  PassengerID NUMBER(10),
  StationID NUMBER(10),
  TrainID NUMBER(10),
  ComplaintType VARCHAR2(50),
  ComplaintDesc VARCHAR2(500),
  ComplaintDate TIMESTAMP,
  CONSTRAINT fk_Complaints_Passengers FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID) ON DELETE SET NULL,
  CONSTRAINT fk_Complaints_Stations FOREIGN KEY (StationID) REFERENCES Stations(StationID) ON DELETE SET NULL,
  CONSTRAINT fk_Complaints_Trains FOREIGN KEY (TrainID) REFERENCES Trains(TrainID) ON DELETE SET NULL
);

CREATE TABLE Maintenance (
  MaintenanceID NUMBER(10) PRIMARY KEY,
  TrainID NUMBER(10) REFERENCES Trains (TrainID) ON DELETE SET NULL,
  MaintenanceType VARCHAR2(50) NOT NULL,
  MaintenanceDesc VARCHAR2(500),
  MaintenanceDate TIMESTAMP NOT NULL
);

CREATE TABLE LostAndFound (
  ItemID NUMBER(10) PRIMARY KEY,
  PassengerID NUMBER(10) REFERENCES Passengers(PassengerID) ON DELETE SET NULL,
  StationID NUMBER(10) REFERENCES Stations(StationID) ON DELETE SET NULL,
  TrainID NUMBER(10) REFERENCES Trains(TrainID) ON DELETE SET NULL,
  ItemType VARCHAR2(50),
  ItemDesc VARCHAR2(500),
  FoundDate TIMESTAMP
);

CREATE TABLE Parking (

  StationID NUMBER(10) REFERENCES Stations(StationID) ON DELETE CASCADE,
  ParkingType VARCHAR2(50),
  ParkingCapacity NUMBER(4),
  ParkingCharges NUMBER(6,2)
);

CREATE TABLE Vendor (
  VendorID NUMBER(10) PRIMARY KEY,
  StationID NUMBER(10) REFERENCES Stations(StationID) ON DELETE CASCADE,
  VendorName VARCHAR2(100) NOT NULL,
  VendorType VARCHAR2(50),
  ContactNumber VARCHAR2(15) NOT NULL,
  Email VARCHAR2(100)
);