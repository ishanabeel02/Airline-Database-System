-- --------------------------------------------------------
--
-- Sub queries (Single/Multi Func) and math funcs 
--
-- --------------------------------------------------------


--Show all active aircrafts
SELECT * 
FROM Aircraft 
WHERE Status = 'Active';

--Find passengers older than 20
SELECT Pass_Name, P_age 
FROM Passenger 
WHERE P_age > 20;

--List all cancelled bookings
SELECT * 
FROM Booking 
WHERE Booking_status = 'Cancelled';

-- Count number of flights per destination
SELECT Destination, COUNT(*) AS Total_Flights
FROM Flight
GROUP BY Destination
ORDER BY Total_Flights DESC;

--Get all available pilots older than 30
SELECT Pilot_Name, Age, Rank
FROM Pilot
WHERE Is_available = 1 AND Age > 30;

--Show total payments made for each payment method
SELECT Payment_method, SUM(Amount) AS Total_Amount
FROM Payment
GROUP BY Payment_method
ORDER BY Total_Amount DESC;

--Find passengers who booked more than 2 times
SELECT Passenger_id, COUNT(*) AS Total_Bookings
FROM Booking
GROUP BY Passenger_id
HAVING COUNT(*) > 2;

--List top 5 flights by total seats
SELECT Flight_id, Total_no_of_Seat 
FROM Flight 
ORDER BY Total_no_of_Seat DESC 
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

--Group aircrafts by status and count them
SELECT Status, COUNT(*) AS Aircraft_Count 
FROM Aircraft 
GROUP BY Status;

--Show flights that have more seats than the average
SELECT Flight_id, Total_no_of_Seat 
FROM Flight 
WHERE Total_no_of_Seat > (
    SELECT AVG(Total_no_of_Seat) FROM Flight
);
--Get pilot name in uppercase and show length of their name
SELECT Pilot_Name, UPPER(Pilot_Name) AS Uppercase_Name, LEN(Pilot_Name) AS Name_Length
FROM Pilot;
--Total salary paid to all pilots
SELECT SUM(Salary) AS Total_Salary_Paid
FROM Pilot;
--Average salary of Captains
SELECT AVG(Salary) AS Avg_Captain_Salary
FROM Pilot
WHERE Rank = 'Captain';
--Minimum and Maximum salaries
SELECT MIN(Salary) AS Min_Salary, MAX(Salary) AS Max_Salary
FROM Pilot;
--Count how many pilots are earning over 300,000
SELECT COUNT(*) AS Pilots_Over_300k
FROM Pilot
WHERE Salary > 300000;
-- View 1: Passenger Booking Details
SELECT * FROM PassengerBookingView;

-- View 2: Full Flight Schedule View with pilot and route info
SELECT * FROM FlightScheduleView;

-- View 3: Payment summary with passenger names
SELECT * FROM PaymentSummaryView;

-- View 4: Dashboard Summary (one row with totals)
SELECT * FROM AdminDashboardView;

-- Example: Show only bookings for passenger named 'Sehar Nabeel'

SELECT * FROM PassengerBookingView
WHERE Pass_Name = 'Isha Ahmed';




