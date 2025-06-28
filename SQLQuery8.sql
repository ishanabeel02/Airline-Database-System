-- --------------------------------------------------------
--
--                        Views  
--
-- --------------------------------------------------------

-- Creating a view for passenger bookings with flight and seat details
CREATE VIEW PassengerBookingView AS
SELECT 
    P.Pass_Name,
    B.Flight_id,
    F.Departure_time,
    F.Arrival_time,
    B.Seat_no,
    B.Booking_status
FROM Booking B
JOIN Passenger P ON B.Passenger_id = P.Passenger_id
JOIN Flight F ON B.Flight_id = F.Flight_id;
GO

-- Creating a view for flight schedules showing pilot, date, and route
CREATE VIEW FlightScheduleView AS
SELECT 
    P.Pilot_Name,
    F.Flight_id,
    PS.Schedule_date,
    PS.Departure_time,
    PS.Arrival_time,
    A1.City AS Origin,
    A2.City AS Destination
FROM Pilot_Schedule PS
JOIN Pilot P ON PS.Pilot_id = P.Pilot_id
JOIN Flight F ON PS.Flight_id = F.Flight_id
JOIN Airport A1 ON F.Origin_Airport_ID = A1.Airport_ID
JOIN Airport A2 ON F.Destination_Airport_ID = A2.Airport_ID;
GO

-- Creating a view for payment summary with passenger details
CREATE VIEW PaymentSummaryView AS
SELECT 
    PM.Payment_id,
    P.Pass_Name,
    PM.Amount,
    PM.Payment_method,
    PM.Payment_date,
    PM.Payment_status
FROM Payment PM
JOIN Booking B ON PM.Booking_id = B.Booking_id
JOIN Passenger P ON B.Passenger_id = P.Passenger_id;
GO
-- Creating a view for admin dashboard to show total counts and summaries
CREATE VIEW AdminDashboardView AS
SELECT 
    (SELECT COUNT(*) FROM Passenger) AS Total_Passengers,
    (SELECT COUNT(*) FROM Pilot) AS Total_Pilots,
    (SELECT COUNT(*) FROM Flight) AS Total_Flights,
    (SELECT COUNT(*) FROM Booking WHERE Booking_status = 'Confirmed') AS Active_Bookings,
    (SELECT COUNT(*) FROM Payment WHERE Payment_status = 'Successful') AS Successful_Payments;
GO
