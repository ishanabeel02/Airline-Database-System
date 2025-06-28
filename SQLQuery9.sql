-- --------------------------------------------------------
--
--                     DashBoard
--
-- --------------------------------------------------------
-- Declaring variables for summary metrics

DECLARE @passengers INT,
        @flights INT,
        @pilots INT,
        @aircraft INT,
        @confirmed_bookings INT,
        @payments INT,
        @revenue FLOAT,
        @avg_payment FLOAT,
        @avg_revenue_per_flight FLOAT;

-- Fetching total passengers
SELECT @passengers = COUNT(*) FROM Passenger;

-- Fetching total flights
SELECT @flights = COUNT(*) FROM Flight;

-- Fetching total pilots
SELECT @pilots = COUNT(*) FROM Pilot;

-- Fetching total aircraft
SELECT @aircraft = COUNT(*) FROM Aircraft;

-- Fetching confirmed bookings
SELECT @confirmed_bookings = COUNT(*) 
FROM Booking 
WHERE Booking_status = 'Confirmed';

-- Fetching successful payments
SELECT @payments = COUNT(*) 
FROM Payment 
WHERE Payment_status = 'Successful';

-- Calculating total revenue
SELECT @revenue = SUM(Amount) 
FROM Payment 
WHERE Payment_status = 'Successful';

-- Calculating average payment
SELECT @avg_payment = AVG(Amount) 
FROM Payment 
WHERE Payment_status = 'Successful';

-- Calculating average revenue per flight
SET @avg_revenue_per_flight = 
    CASE WHEN @flights > 0 THEN @revenue / @flights ELSE 0 END;

-- Displaying the dashboard summary
PRINT '==========================================';
PRINT '         AIRLINE MANAGEMENT DASHBOARD     ';
PRINT '==========================================';
PRINT 'Total Passengers:           ' + CAST(@passengers AS VARCHAR);
PRINT 'Total Flights:              ' + CAST(@flights AS VARCHAR);
PRINT 'Total Pilots:               ' + CAST(@pilots AS VARCHAR);
PRINT 'Total Aircraft:             ' + CAST(@aircraft AS VARCHAR);
PRINT 'Confirmed Bookings:         ' + CAST(@confirmed_bookings AS VARCHAR);
PRINT 'Successful Payments:        ' + CAST(@payments AS VARCHAR);
PRINT 'Total Revenue:             $' + CAST(@revenue AS VARCHAR(20));
PRINT 'Average Payment Amount:    $' + CAST(@avg_payment AS VARCHAR(20));
PRINT 'Average Revenue per Flight:$' + CAST(@avg_revenue_per_flight AS VARCHAR(20));
PRINT '==========================================';
