
-- Find the average fare for each route

SELECT r.RouteID, AVG(r.Fare) AS AverageFare
FROM Routes r
GROUP BY r.RouteID;


-- Find the total number of trains scheduled at each station

SELECT Stations.StationName, COUNT(*) AS TotalTrains
FROM Stations
INNER JOIN TrainSchedule ON Stations.StationID = TrainSchedule.StationID
GROUP BY Stations.StationName;

-- Retrieve all passengers who have made a complaint

SELECT Passengers.PassengerID, Passengers.PassengerName, Complaints.ComplaintType
FROM Passengers
INNER JOIN Complaints ON Passengers.PassengerID = Complaints.PassengerID;


-- Passengers who have a positive token balance

SELECT Passengers.PassengerID, Passengers.PassengerName, Passengers.Age, Passengers.Gender, Passengers.ContactNumber, Passengers.Email, Passengers.PaymentMethod, Token.TokenBalance
FROM Passengers
INNER JOIN Token ON Passengers.PassengerID = Token.PassengerID
WHERE Token.TokenBalance > 0;


-- Retrieves the details of passengers who have traveled on a specific train

SELECT Passengers.PassengerID, Passengers.PassengerName, Passengers.Age, Passengers.Gender, Passengers.ContactNumber, Passengers.Email,
       Trains.TrainID, Trains.TrainName
FROM Passengers
INNER JOIN TrainSchedule ON Passengers.PassengerID = TrainSchedule.PassengerID
INNER JOIN Trains ON TrainSchedule.TrainID = Trains.TrainID
WHERE Trains.TrainID = 12345; 
