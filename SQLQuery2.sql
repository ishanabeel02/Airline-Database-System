-- --------------------------------------------------------
--
-- Inserting Values into a Table
--
-- --------------------------------------------------------

INSERT INTO Pilot (Pilot_id, Pilot_Name, Age, License_no, Rank, Experience_years, Is_available) VALUES
(1, 'Isha Nabeel', 45, 'LIC001', 'Captain', 22, 1),
(2, 'Eishal Waqas', 38, 'LIC002', 'First Officer', 14, 1),
(3, 'Aima Anjum', 50, 'LIC003', 'Captain', 28, 0),
(4, 'Sehar Nabeel', 41, 'First004', 'First Officer', 15, 1),
(5, 'Ali Asjab', 36, 'LIC005', 'Captain', 12, 1),
(6, 'Mustafa Nabeel', 44, 'LIC006', 'First Officer', 19, 0),
(7, 'Aneshra Nabeel', 39, 'LIC007', 'Captain', 17, 1),
(8, 'Zayan Shah', 33, 'LIC008', 'First Officer', 9, 1),
(9, 'Yusra Malik', 55, 'LIC009', 'Captain', 29, 0),
(10, 'Hamza Javed', 29, 'LIC010', 'First Officer', 7, 1),
(11, 'Emaan Abbas', 34, 'LIC011', 'Captain', 11, 1),
(12, 'Zara Sheikh', 48, 'LIC012', 'First Officer', 20, 0),
(13, 'Daniyal Ahmed', 43, 'LIC013', 'Captain', 19, 1),
(14, 'Hafsa Hussain', 35, 'LIC014', 'First Officer', 10, 1),
(15, 'Taimoor Shah', 47, 'LIC015', 'Captain', 23, 1),
(16, 'Fariha Nadeem', 31, 'LIC016', 'First Officer', 8, 1),
(17, 'Rehan Ali', 52, 'LIC017', 'Captain', 27, 0),
(18, 'Areesha Tariq', 40, 'LIC018', 'First Officer', 13, 1),
(19, 'Usman Rauf', 46, 'LIC019', 'Captain', 21, 1),
(20, 'Noor Fatima', 30, 'LIC020', 'First Officer', 6, 1);



-- Inserting values into Aircraft table
INSERT INTO Aircraft (Aircraft_id, Model, Manufacturer, Capacity, Status, Manufacture_date, Last_maintenance) VALUES
(1, 'A320 Neo', 'Airbus', 180, 'Active', '2010-04-12', '2024-04-01'),
(2, '737 Max', 'Boeing', 160, 'Under Maintenance', '2012-08-24', '2024-03-10'),
(3, 'E190', 'Embraer', 100, 'Retired', '2008-03-15', '2020-12-15'),
(4, 'A321', 'Airbus', 200, 'Active', '2011-06-22', '2024-05-01'),
(5, 'CRJ900', 'Bombardier', 90, 'Active', '2013-09-30', '2023-11-20'),
(6, '777', 'Boeing', 300, 'Active', '2009-11-10', '2024-01-05'),
(7, 'A220', 'Airbus', 140, 'Active', '2014-02-18', '2024-06-12'),
(8, 'E175', 'Embraer', 88, 'Retired', '2007-07-25', '2019-10-10'),
(9, 'A350', 'Airbus', 280, 'Under Maintenance', '2015-12-01', '2024-05-25'),
(10, '737 NG', 'Boeing', 170, 'Active', '2010-01-11', '2024-06-10'),
(11, 'Dash 8', 'De Havilland', 75, 'Active', '2011-05-15', '2024-04-20'),
(12, 'MD-80', 'McDonnell Douglas', 155, 'Retired', '2005-03-10', '2018-08-30'),
(13, 'A310', 'Airbus', 250, 'Active', '2010-10-10', '2024-02-18'),
(14, 'B747', 'Boeing', 400, 'Active', '2006-11-01', '2024-03-25'),
(15, 'E195', 'Embraer', 124, 'Under Maintenance', '2013-04-09', '2024-06-01'),
(16, 'A330', 'Airbus', 270, 'Active', '2012-07-14', '2024-06-15'),
(17, 'ATR 72', 'ATR', 68, 'Active', '2011-08-20', '2024-01-20'),
(18, 'B787', 'Boeing', 290, 'Under Maintenance', '2016-03-12', '2024-06-12'),
(19, 'Fokker 100', 'Fokker', 100, 'Retired', '2004-05-19', '2019-09-01'),
(20, 'A300', 'Airbus', 240, 'Active', '2009-12-25', '2024-04-25');


-- Inserting values into Flight table
INSERT INTO Flight (Flight_id, Destination, Origin, Status, Total_no_of_Seat, Is_Full, Departure_time, Arrival_time, Pilot_id, Aircraft_id) VALUES
('FL001', 'Karachi', 'Lahore', 'On Time', 180, 0, '08:00:00', '10:00:00', 1, 1),
('FL002', 'Islamabad', 'Karachi', 'Delayed', 160, 0, '12:00:00', '14:30:00', 2, 2),
('FL003', 'Dubai', 'Lahore', 'Cancelled', 200, 0, '06:45:00', '09:30:00', 3, 3),
('FL004', 'Jeddah', 'Karachi', 'On Time', 150, 1, '11:00:00', '13:45:00', 4, 4),
('FL005', 'London', 'Islamabad', 'Delayed', 300, 1, '21:00:00', '03:30:00', 5, 5),
('FL006', 'Doha', 'Lahore', 'On Time', 140, 0, '15:00:00', '17:30:00', 6, 6),
('FL007', 'Multan', 'Karachi', 'On Time', 180, 0, '09:00:00', '11:15:00', 7, 7),
('FL008', 'Lahore', 'Peshawar', 'Cancelled', 120, 1, '10:30:00', '12:00:00', 8, 8),
('FL009', 'Faisalabad', 'Islamabad', 'Delayed', 100, 0, '14:30:00', '16:15:00', 9, 9),
('FL010', 'Karachi', 'Dubai', 'On Time', 250, 0, '23:00:00', '02:00:00', 10, 10),
('FL011', 'Muscat', 'Lahore', 'On Time', 200, 0, '05:30:00', '08:00:00', 11, 11),
('FL012', 'Sialkot', 'Sharjah', 'Delayed', 130, 0, '07:15:00', '10:00:00', 12, 12),
('FL013', 'Dammam', 'Karachi', 'Cancelled', 175, 1, '03:00:00', '05:45:00', 13, 13),
('FL014', 'Abu Dhabi', 'Multan', 'On Time', 220, 0, '06:00:00', '08:45:00', 14, 14),
('FL015', 'New York', 'Islamabad', 'On Time', 350, 1, '16:00:00', '06:00:00', 15, 15),
('FL016', 'Paris', 'Lahore', 'On Time', 280, 0, '13:45:00', '20:00:00', 16, 16),
('FL017', 'Berlin', 'Karachi', 'Delayed', 300, 1, '11:15:00', '17:15:00', 17, 17),
('FL018', 'Istanbul', 'Islamabad', 'On Time', 240, 0, '19:00:00', '23:00:00', 18, 18),
('FL019', 'Tokyo', 'Karachi', 'On Time', 400, 1, '01:00:00', '13:30:00', 19, 19),
('FL020', 'Bangkok', 'Lahore', 'Cancelled', 260, 0, '17:00:00', '22:00:00', 20, 20);



-- Inserting Values into Pilot_Schedule
INSERT INTO Pilot_Schedule (Pilot_id, Flight_id, Schedule_date, Departure_time, Arrival_time) VALUES
(1, 'FL001', '2025-07-01', '08:00:00', '10:00:00'),
(2, 'FL002', '2025-07-02', '09:30:00', '12:15:00'),
(3, 'FL003', '2025-07-03', '14:00:00', '17:00:00'),
(4, 'FL004', '2025-07-04', '11:45:00', '14:30:00'),
(5, 'FL005', '2025-07-05', '06:15:00', '08:30:00'),
(6, 'FL006', '2025-07-06', '10:00:00', '12:45:00'),
(7, 'FL007', '2025-07-07', '16:00:00', '18:30:00'),
(8, 'FL008', '2025-07-08', '18:00:00', '20:45:00'),
(9, 'FL009', '2025-07-09', '07:30:00', '10:00:00'),
(10, 'FL010', '2025-07-10', '22:00:00', '01:00:00'),
(11, 'FL011', '2025-07-11', '05:00:00', '07:30:00'),
(12, 'FL012', '2025-07-12', '13:00:00', '15:45:00'),
(13, 'FL013', '2025-07-13', '09:00:00', '11:30:00'),
(14, 'FL014', '2025-07-14', '10:30:00', '13:15:00'),
(15, 'FL015', '2025-07-15', '06:45:00', '09:00:00'),
(16, 'FL016', '2025-07-16', '12:15:00', '15:00:00'),
(17, 'FL017', '2025-07-17', '19:00:00', '22:30:00'),
(18, 'FL018', '2025-07-18', '14:30:00', '17:00:00'),
(19, 'FL019', '2025-07-19', '08:00:00', '11:00:00'),
(20, 'FL020', '2025-07-20', '16:00:00', '18:45:00');


INSERT INTO Passenger (Passenger_id, Pass_Name, Pass_Mail, P_age, Gender, Phone_no, Nationality, Passport_no, Balance, Registered_on, Is_verified) VALUES
(1, 'Sehar Fatima', 'sehar@mail.com', 25, 'Female', '03001234567', 'Pakistan', 'PK123456', 500.00, GETDATE(), 1),
(2, 'Aima Khan', 'aima.khan@gmail.com', 22, 'Female', '03111234567', 'Pakistan', 'PK223456', 350.50, GETDATE(), 1),
(3, 'Ali Raza', 'ali.raza@yahoo.com', 30, 'Male', '03201234567', 'Pakistan', 'PK323456', 800.00, GETDATE(), 1),
(4, 'Eishal Shah', 'eishal@gmail.com', 28, 'Female', '03331234567', 'Pakistan', 'PK423456', 1200.00, GETDATE(), 1),
(5, 'Mustafa Tariq', 'mustafa@outlook.com', 35, 'Male', '03441234567', 'Pakistan', 'PK523456', 600.75, GETDATE(), 1),
(6, 'Aneshra Malik', 'aneshra@hotmail.com', 26, 'Female', '03011234567', 'Pakistan', 'PK623456', 900.00, GETDATE(), 1),
(7, 'Isha Ahmed', 'isha@live.com', 24, 'Female', '03121234567', 'Pakistan', 'PK723456', 450.30, GETDATE(), 1),
(8, 'Hassan Ali', 'hassan@gmail.com', 33, 'Male', '03221234567', 'Pakistan', 'PK823456', 770.10, GETDATE(), 1),
(9, 'Taimoor Zafar', 'taimoor@aol.com', 40, 'Male', '03341234567', 'Pakistan', 'PK923456', 1230.00, GETDATE(), 1),
(10, 'Noor Ayesha', 'noor@yahoo.com', 29, 'Female', '03451234567', 'Pakistan', 'PK103456', 345.65, GETDATE(), 1),
(11, 'Zoya Asif', 'zoya@abc.com', 27, 'Female', '03091234567', 'Pakistan', 'PK113456', 1234.50, GETDATE(), 1),
(12, 'Huda Rafique', 'huda@gmail.com', 32, 'Female', '03171234567', 'Pakistan', 'PK123457', 500.00, GETDATE(), 1),
(13, 'Sana Javed', 'sana@hotmail.com', 31, 'Female', '03251234567', 'Pakistan', 'PK133456', 850.00, GETDATE(), 1),
(14, 'Rayan Aslam', 'rayan@mail.com', 36, 'Male', '03381234567', 'Pakistan', 'PK143456', 1000.00, GETDATE(), 1),
(15, 'Hassan Rafi', 'hassan23@gmail.com', 38, 'Male', '03461234567', 'Pakistan', 'PK153456', 740.00, GETDATE(), 1),
(16, 'Mehwish Tariq', 'mehwish@mail.com', 29, 'Female', '03081234567', 'Pakistan', 'PK163456', 300.00, GETDATE(), 1),
(17, 'Laiba Saeed', 'laiba@mail.com', 26, 'Female', '03191234567', 'Pakistan', 'PK173456', 950.00, GETDATE(), 1),
(18, 'Sanaullah Khan', 'sanaullah@mail.com', 34, 'Male', '03291234567', 'Pakistan', 'PK183456', 890.00, GETDATE(), 1),
(19, 'Zainab Akram', 'zainab@mail.com', 28, 'Female', '03391234567', 'Pakistan', 'PK193456', 780.00, GETDATE(), 1),
(20, 'Areeba Zia', 'areeba@mail.com', 23, 'Female', '03471234567', 'Pakistan', 'PK203456', 540.00, GETDATE(), 1);


--inseting values into booking
INSERT INTO Booking (Passenger_id, Flight_id, Schedule_date, Seat_no, Booking_status, Booking_time) VALUES
(1, 'FL001', '2025-07-01', 'A1', 'Confirmed', GETDATE()),
(2, 'FL002', '2025-07-02', 'A2', 'Pending', GETDATE()),
(3, 'FL003', '2025-07-03', 'B3', 'Confirmed', GETDATE()),
(4, 'FL004', '2025-07-04', 'B4', 'Cancelled', GETDATE()),
(5, 'FL005', '2025-07-05', 'C1', 'Confirmed', GETDATE()),
(6, 'FL006', '2025-07-06', 'C2', 'Pending', GETDATE()),
(7, 'FL007', '2025-07-07', 'C3', 'Cancelled', GETDATE()),
(8, 'FL008', '2025-07-08', 'D1', 'Confirmed', GETDATE()),
(9, 'FL009', '2025-07-09', 'D2', 'Pending', GETDATE()),
(10, 'FL010', '2025-07-10', 'D3', 'Confirmed', GETDATE()),
(11, 'FL011', '2025-07-11', 'E1', 'Confirmed', GETDATE()),
(12, 'FL012', '2025-07-12', 'E2', 'Pending', GETDATE()),
(13, 'FL013', '2025-07-13', 'E3', 'Cancelled', GETDATE()),
(14, 'FL014', '2025-07-14', 'F1', 'Confirmed', GETDATE()),
(15, 'FL015', '2025-07-15', 'F2', 'Pending', GETDATE()),
(16, 'FL016', '2025-07-16', 'F3', 'Cancelled', GETDATE()),
(17, 'FL017', '2025-07-17', 'G1', 'Confirmed', GETDATE()),
(18, 'FL018', '2025-07-18', 'G2', 'Confirmed', GETDATE()),
(19, 'FL019', '2025-07-19', 'G3', 'Pending', GETDATE()),
(20, 'FL020', '2025-07-20', 'H1', 'Cancelled', GETDATE());



--inserting values into table admin
INSERT INTO Admin (Admin_id, Admin_name, Admin_email, Admin_password, Role) VALUES
(1, 'Sehar Admin', 'sehar.admin@mail.com', 'pass123', 'SuperAdmin'),
(2, 'Ali Admin', 'ali.admin@mail.com', 'pass234', 'Manager'),
(3, 'Mustafa Admin', 'mustafa.admin@mail.com', 'pass345', 'Staff'),
(4, 'Eishal Admin', 'eishal.admin@mail.com', 'pass456', 'Manager'),
(5, 'Zayan Admin', 'zayan.admin@mail.com', 'pass567', 'Staff'),
(6, 'Noor Admin', 'noor.admin@mail.com', 'pass678', 'Staff'),
(7, 'Aima Admin', 'aima.admin@mail.com', 'pass789', 'SuperAdmin'),
(8, 'Aneshra Admin', 'aneshra.admin@mail.com', 'pass890', 'Manager'),
(9, 'Tariq Admin', 'tariq.admin@mail.com', 'pass901', 'Staff'),
(10, 'Isha Admin', 'isha.admin@mail.com', 'pass101', 'Manager'),
(11, 'Usman Admin', 'usman.admin@mail.com', 'pass112', 'Staff'),
(12, 'Fariha Admin', 'fariha.admin@mail.com', 'pass122', 'SuperAdmin'),
(13, 'Daniyal Admin', 'daniyal.admin@mail.com', 'pass132', 'Manager'),
(14, 'Hira Admin', 'hira.admin@mail.com', 'pass142', 'Staff'),
(15, 'Rayan Admin', 'rayan.admin@mail.com', 'pass152', 'SuperAdmin'),
(16, 'Hassan Admin', 'hassan.admin@mail.com', 'pass162', 'Manager'),
(17, 'Zoya Admin', 'zoya.admin@mail.com', 'pass172', 'Staff'),
(18, 'Laiba Admin', 'laiba.admin@mail.com', 'pass182', 'SuperAdmin'),
(19, 'Yusra Admin', 'yusra.admin@mail.com', 'pass192', 'Manager'),
(20, 'Mehwish Admin', 'mehwish.admin@mail.com', 'pass202', 'Staff');


INSERT INTO Payment (Booking_id, Payment_date, Amount, Payment_method, Payment_status) VALUES
(3, '2025-07-01', 1200.00, 'Credit Card', 'Successful'),
(4, '2025-07-02', 950.00, 'Debit Card', 'Failed'),
(5, '2025-07-03', 1500.50, 'Cash', 'Successful'),
(6, '2025-07-04', 1100.00, 'Online Transfer', 'Successful'),
(7, '2025-07-05', 1350.75, 'Wallet', 'Successful'),
(8, '2025-07-06', 2000.00, 'Credit Card', 'Failed'),
(9, '2025-07-07', 990.25, 'Cash', 'Successful'),
(10, '2025-07-08', 1430.10, 'Debit Card', 'Successful'),
(11, '2025-07-09', 875.00, 'Wallet', 'Successful'),
(12, '2025-07-10', 650.00, 'Online Transfer', 'Successful'),
(13, '2025-07-11', 1250.00, 'Credit Card', 'Failed'),
(14, '2025-07-12', 980.00, 'Cash', 'Successful'),
(15, '2025-07-13', 1010.00, 'Online Transfer', 'Successful'),
(16, '2025-07-14', 750.25, 'Debit Card', 'Successful'),
(17, '2025-07-15', 640.75, 'Wallet', 'Failed'),
(18, '2025-07-16', 1290.99, 'Credit Card', 'Successful'),
(19, '2025-07-17', 1125.45, 'Online Transfer', 'Successful'),
(20, '2025-07-18', 790.60, 'Cash', 'Failed'),
(21, '2025-07-19', 850.00, 'Debit Card', 'Successful'),
(22, '2025-07-20', 1340.30, 'Credit Card', 'Successful');



--inserting into ticket
INSERT INTO Ticket (Ticket_ID, Passenger_ID, Flight_ID, Booking_Date, Seat_Number, Ticket_Price, Ticket_Status) VALUES
(1, 1, 'FL001', '2025-06-10', 'A1', 1200.00, 'Confirmed'),
(2, 2, 'FL002', '2025-06-11', 'A2', 950.00, 'Pending'),
(3, 3, 'FL003', '2025-06-12', 'B1', 1150.00, 'Canceled'),
(4, 4, 'FL004', '2025-06-13', 'B2', 1300.00, 'Confirmed'),
(5, 5, 'FL005', '2025-06-14', 'C1', 1000.00, 'Confirmed'),
(6, 6, 'FL006', '2025-06-15', 'C2', 1100.00, 'Pending'),
(7, 7, 'FL007', '2025-06-16', 'C3', 870.00, 'Canceled'),
(8, 8, 'FL008', '2025-06-17', 'D1', 980.00, 'Confirmed'),
(9, 9, 'FL009', '2025-06-18', 'D2', 1025.50, 'Confirmed'),
(10, 10, 'FL010', '2025-06-19', 'D3', 850.00, 'Pending'),
(11, 11, 'FL011', '2025-06-20', 'E1', 935.00, 'Confirmed'),
(12, 12, 'FL012', '2025-06-21', 'E2', 1080.00, 'Canceled'),
(13, 13, 'FL013', '2025-06-22', 'E3', 950.00, 'Confirmed'),
(14, 14, 'FL014', '2025-06-23', 'F1', 1195.00, 'Confirmed'),
(15, 15, 'FL015', '2025-06-24', 'F2', 870.00, 'Pending'),
(16, 16, 'FL016', '2025-06-25', 'F3', 1120.00, 'Confirmed'),
(17, 17, 'FL017', '2025-06-26', 'G1', 950.00, 'Canceled'),
(18, 18, 'FL018', '2025-06-27', 'G2', 990.00, 'Confirmed'),
(19, 19, 'FL019', '2025-06-28', 'G3', 860.00, 'Confirmed'),
(20, 20, 'FL020', '2025-06-29', 'H1', 875.00, 'Pending');


--inserting into luggage table 
INSERT INTO Luggage (Luggage_ID, Passenger_ID, Flight_ID, Weight, Status) VALUES
(1, 1, 'FL001', 20.5, 'Checked-In'),
(2, 2, 'FL002', 18.2, 'Delivered'),
(3, 3, 'FL003', 22.0, 'Lost'),
(4, 4, 'FL004', 25.5, 'Checked-In'),
(5, 5, 'FL005', 15.7, 'Delivered'),
(6, 6, 'FL006', 19.3, 'Lost'),
(7, 7, 'FL007', 23.0, 'Checked-In'),
(8, 8, 'FL008', 17.4, 'Delivered'),
(9, 9, 'FL009', 16.0, 'Checked-In'),
(10, 10, 'FL010', 24.5, 'Lost'),
(11, 11, 'FL011', 20.0, 'Delivered'),
(12, 12, 'FL012', 21.8, 'Checked-In'),
(13, 13, 'FL013', 19.9, 'Lost'),
(14, 14, 'FL014', 18.7, 'Delivered'),
(15, 15, 'FL015', 23.4, 'Checked-In'),
(16, 16, 'FL016', 22.2, 'Lost'),
(17, 17, 'FL017', 20.1, 'Delivered'),
(18, 18, 'FL018', 19.5, 'Checked-In'),
(19, 19, 'FL019', 21.0, 'Lost'),
(20, 20, 'FL020', 17.6, 'Delivered');

INSERT INTO Airport (Airport_ID, Name, City, Country, IATA_Code)
VALUES
(1, 'Allama Iqbal International Airport', 'Lahore', 'Pakistan', 'LHE'),
(2, 'Jinnah International Airport', 'Karachi', 'Pakistan', 'KHI'),
(3, 'Islamabad International Airport', 'Islamabad', 'Pakistan', 'ISB'),
(4, 'Sialkot International Airport', 'Sialkot', 'Pakistan', 'SKT'),
(5, 'Heathrow Airport', 'London', 'United Kingdom', 'LHR'),
(6, 'John F. Kennedy International Airport', 'New York', 'USA', 'JFK'),
(7, 'Dubai International Airport', 'Dubai', 'UAE', 'DXB'),
(8, 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'India', 'BOM');

EXEC AddFlight  
    'FL034',        -- @Flight_id  
    'Lahore',       -- @Destination  
    'Karachi',      -- @Origin  
    180,            -- @Total_no_of_Seat  
    '08:00',        -- @Departure_time  
    '10:30',        -- @Arrival_time  
    1,            -- @Pilot_id  
    3;              -- @Aircraft_id


