-- --------------------------------------------------------
--
--			          Procedures 
--
-- --------------------------------------------------------

-- To add a flight 
CREATE PROCEDURE AddFlight
    @Flight_id VARCHAR(7),
    @Destination VARCHAR(60),
    @Origin VARCHAR(60),
    @Total_no_of_Seat INT,
    @Departure_time TIME,
    @Arrival_time TIME,
    @Pilot_id INT,
    @Aircraft_id INT
AS
BEGIN
    INSERT INTO Flight (
        Flight_id, Destination, Origin,
        Total_no_of_Seat, Departure_time, Arrival_time,
        Pilot_id, Aircraft_id
    )
    VALUES (
        @Flight_id, @Destination, @Origin,
        @Total_no_of_Seat, @Departure_time, @Arrival_time,
        @Pilot_id, @Aircraft_id
    );
END;
go

-- Procedure to Deactivate Pilot
CREATE PROCEDURE DeactivatePilot
    @Pilot_id INT
AS
BEGIN
    UPDATE Pilot
    SET Is_available = 0
    WHERE Pilot_id = @Pilot_id;
END;
GO


create PROCEDURE ViewPilotFlights
    @Pilot_id INT
AS
BEGIN
    SELECT 
        F.Flight_id, 
        A1.Name AS Origin, 
        A2.Name AS Destination,
        F.Departure_time, 
        F.Arrival_time, 
        PS.Schedule_date
    FROM Flight F
    JOIN Pilot_Schedule PS ON F.Flight_id = PS.Flight_id
    JOIN Airport A1 ON F.Origin_Airport_ID = A1.Airport_ID       
    JOIN Airport A2 ON F.Destination_Airport_ID = A2.Airport_ID  
    WHERE F.Pilot_id = @Pilot_id;
END;
go

-- Procedure to Get Upcoming Flights
CREATE PROCEDURE GetUpcomingFlights
    @Passenger_id INT
AS
BEGIN
    SELECT 
        B.Flight_id, 
        F.Departure_time, 
        F.Arrival_time, 
        A1.City AS From_City, 
        A2.City AS To_City
    FROM Booking B
    JOIN Flight F ON B.Flight_id = F.Flight_id
    JOIN Airport A1 ON F.Origin_Airport_ID = A1.Airport_ID
    JOIN Airport A2 ON F.Destination_Airport_ID = A2.Airport_ID
    WHERE B.Passenger_id = @Passenger_id AND B.Booking_status = 'Confirmed';
END;
GO
