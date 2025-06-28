-- --------------------------------------------------------
--
--			 Alter, Drop, truncate, delete, update
--
-- --------------------------------------------------------
--Alter table 
ALTER TABLE Pilot
ADD Salary DECIMAL(10, 2) CHECK (Salary >= 0);

--Delete table
--DROP TABLE Crew;

--Delete values 
TRUNCATE TABLE Crews;

--Add Availability_Status column to Aircraft
ALTER TABLE Aircraft
ADD Availability_Status VARCHAR(20) DEFAULT 'Available';

--Add Remarks column to Passenger
ALTER TABLE Passenger
ADD Remarks VARCHAR(255);

--Add Rating (1–5) to Pilot
ALTER TABLE Pilot
ADD Rating INT CHECK (Rating BETWEEN 1 AND 5);

--Add CheckIn_Status to Luggage
ALTER TABLE Luggage
ADD CheckIn_Status VARCHAR(20) DEFAULT 'Pending';

-- Delete a passenger who has no bookings
DELETE FROM Passenger
WHERE Passenger_id NOT IN 
(
    SELECT DISTINCT Passenger_id FROM Booking
);

-- Updating Salaries of Pilot 
-- Captain Salaries
UPDATE Pilot SET Salary = 400000 WHERE Rank = 'Captain' AND Experience_years >= 25;
UPDATE Pilot SET Salary = 350000 WHERE Rank = 'Captain' AND Experience_years BETWEEN 15 AND 24;
UPDATE Pilot SET Salary = 300000 WHERE Rank = 'Captain' AND Experience_years < 15;

-- First Officer Salaries
UPDATE Pilot SET Salary = 280000 WHERE Rank = 'First Officer' AND Experience_years >= 15;
UPDATE Pilot SET Salary = 240000 WHERE Rank = 'First Officer' AND Experience_years BETWEEN 10 AND 14;
UPDATE Pilot SET Salary = 200000 WHERE Rank = 'First Officer' AND Experience_years < 10;


-- To verify 
SELECT Pilot_Name, Rank, Experience_years, Salary
FROM Pilot
ORDER BY Salary DESC;

-- adding router and airport 
ALTER TABLE Flight
ADD 
    Router VARCHAR(100),
    Origin_Airport_ID INT,
    Destination_Airport_ID INT;

	-- adding constraints 
ALTER TABLE Flight
ADD CONSTRAINT FK_Flight_Origin
    FOREIGN KEY (Origin_Airport_ID) REFERENCES Airport(Airport_ID),
    
    CONSTRAINT FK_Flight_Destination
    FOREIGN KEY (Destination_Airport_ID) REFERENCES Airport(Airport_ID);

UPDATE Flight
SET 
    Router = 'LHE → ISB',
    Origin_Airport_ID = 1,   -- LHE (Lahore)
    Destination_Airport_ID = 3 -- ISB (Islamabad)
WHERE Flight_id = 'PK101';

UPDATE Flight
SET 
    Router = 'KHI → LHE',
    Origin_Airport_ID = 2,   -- KHI (Karachi)
    Destination_Airport_ID = 1 -- LHE (Lahore)
WHERE Flight_id = 'PK202';

UPDATE Flight
SET 
    Router = 'ISB → DXB',
    Origin_Airport_ID = 3,   -- ISB
    Destination_Airport_ID = 7 -- DXB (Dubai)
WHERE Flight_id = 'PK303';

UPDATE Flight
SET 
    Router = 'SKT → BOM',
    Origin_Airport_ID = 4,   -- Sialkot
    Destination_Airport_ID = 8 -- Mumbai
WHERE Flight_id = 'PK404';

UPDATE Flight
SET 
    Router = 'DXB → JFK',
    Origin_Airport_ID = 7,
    Destination_Airport_ID = 6
WHERE Flight_id = 'PK505';

UPDATE Flight
SET 
    Router = 'LHR → KHI',
    Origin_Airport_ID = 5,
    Destination_Airport_ID = 2
WHERE Flight_id = 'PK606';

-- testing triggers 
-- Update a pilot's age to 60+ to trigger retirement
UPDATE Pilot
SET Age = 61
WHERE Pilot_id = 4;

-- Check result
SELECT Pilot_Name, Age, Is_available FROM Pilot
WHERE Pilot_id = 4;

-- Insert a pilot without setting rating
INSERT INTO Pilot (Pilot_id, Pilot_Name, Age, License_no, Rank, Experience_years, Is_available, Salary)
VALUES (27, 'Test Pilot', 35, 'LIC027', 'First Officer', 12, 1, 200000);

-- Check if rating was auto-assigned
SELECT Pilot_Name, Rating FROM Pilot WHERE Pilot_id = 21;

-- This will trigger an error and rollback
UPDATE Pilot
SET Salary = 180000
WHERE Pilot_id = 2;

ALTER TABLE Admin
ADD Flight_id VARCHAR(7),     -- assuming Flight_id is VARCHAR(7)
    Schedule_id INT;          -- assuming Schedule_id is INT

ALTER TABLE Admin
ADD CONSTRAINT FK_Admin_Flight
FOREIGN KEY (Flight_id) REFERENCES Flight(Flight_id);

ALTER TABLE Admin
ADD CONSTRAINT FK_Admin_Schedule
FOREIGN KEY (Schedule_id) REFERENCES Pilot_Schedule(Schedule_id);

