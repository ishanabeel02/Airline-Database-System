
-- --------------------------------------------------------
--
--			 --------JOINS--------------
--
-- --------------------------------------------------------


-- List all pilots with their assigned flights (INNER JOIN)
SELECT P.Pilot_Name, F.Flight_id, F.Origin, F.Destination
FROM Pilot P
INNER JOIN Flight F ON P.Pilot_id = F.Pilot_id;


-- Show all passengers with their booking status (LEFT JOIN)
SELECT Pass.Pass_Name, B.Flight_id, B.Booking_status
FROM Passenger Pass
LEFT JOIN Booking B ON Pass.Passenger_id = B.Passenger_id;


-- List all flights with aircraft model and status (RIGHT JOIN)
SELECT F.Flight_id, A.Model, A.Status
FROM Flight F
RIGHT JOIN Aircraft A ON F.Aircraft_id = A.Aircraft_id;

--Get total luggage weight per passenger
SELECT P.Pass_Name, SUM(L.Weight) AS Total_Luggage_Weight
FROM Passenger P
JOIN Luggage L ON P.Passenger_id = L.Passenger_ID
GROUP BY P.Pass_Name;

-- Find all confirmed tickets with passenger name and seat number
SELECT Pass.Pass_Name, T.Seat_Number, T.Ticket_Price
FROM Ticket T
INNER JOIN Passenger Pass ON T.Passenger_ID = Pass.Passenger_id
WHERE T.Ticket_Status = 'Confirmed';


--Show all passengers with their booking status
SELECT Pass.Pass_Name, B.Flight_id, B.Booking_status
FROM Passenger Pass
JOIN Booking B ON Pass.Passenger_id = B.Passenger_id;


-- Get flight schedule with pilot name and flight route
SELECT PS.Schedule_date, PS.Departure_time, PS.Arrival_time, P.Pilot_Name, F.Origin, F.Destination
FROM Pilot_Schedule PS
LEFT JOIN Pilot P ON PS.Pilot_id = P.Pilot_id
LEFT JOIN Flight F ON PS.Flight_id = F.Flight_id;


-- Show payments with passenger name and amount paid
SELECT P.Pass_Name, PM.Amount, PM.Payment_method, PM.Payment_date
FROM Payment PM
FULL JOIN Booking B ON PM.Booking_id = B.Booking_id
FULL JOIN Passenger P ON B.Passenger_id = P.Passenger_id;


-- List ticket info with flight details
SELECT T.Ticket_ID, T.Seat_Number, T.Ticket_Status, F.Origin, F.Destination, F.Departure_time
FROM Ticket T
INNER JOIN Flight F ON T.Flight_ID = F.Flight_id;


--List all bookings with corresponding ticket info
SELECT B.Booking_id, B.Flight_id, T.Seat_Number, T.Ticket_Status
FROM Booking B
JOIN Ticket T ON B.Passenger_id = T.Passenger_ID AND B.Flight_id = T.Flight_ID;
