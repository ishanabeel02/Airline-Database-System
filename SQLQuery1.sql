--Creating Database named Airline Database 
create database AirLine_Database_Management;
use AirLine_Database_Management;
-- --------------------------------------------------------
--
--                     Creating Tables
--
-- --------------------------------------------------------

--Creating Pilot Table 
CREATE TABLE Pilot 
(
    Pilot_id INT PRIMARY KEY,
    Pilot_Name VARCHAR(50) NOT NULL,
    Age INT NOT NULL CHECK (Age >= 21),
    License_no VARCHAR(50) UNIQUE NOT NULL,
    Rank VARCHAR(20) CHECK (Rank IN ('Captain', 'First Officer')) NOT NULL,
    Experience_years INT DEFAULT 0,
    Is_available BIT DEFAULT 1
);

-- Create the Aircraft table
CREATE TABLE Aircraft (
    Aircraft_id INT PRIMARY KEY,
    Model VARCHAR(50) NOT NULL,
    Manufacturer VARCHAR(50),
    Capacity INT CHECK (Capacity > 0),
    Status VARCHAR(30) CHECK (Status IN ('Active', 'Under Maintenance', 'Retired')) DEFAULT 'Active',
    Manufacture_date DATE,
    Last_maintenance DATE
);

-- Create the Flight table
CREATE TABLE Flight 
(
    Flight_id VARCHAR(7) PRIMARY KEY,
    Destination VARCHAR(60) NOT NULL,
    Origin VARCHAR(60) NOT NULL,
    Status VARCHAR(20) CHECK (Status IN ('On Time', 'Delayed', 'Cancelled')) NOT NULL DEFAULT 'On Time',
    Total_no_of_Seat INT NOT NULL,
    Is_Full BIT NOT NULL DEFAULT 0,
    Departure_time TIME NOT NULL,
    Arrival_time TIME NOT NULL,
    Pilot_id INT,
    Aircraft_id INT,
    FOREIGN KEY (Pilot_id) REFERENCES Pilot(Pilot_id),
    FOREIGN KEY (Aircraft_id) REFERENCES Aircraft(Aircraft_id)
);

-- Create the Pilot_Schedule table
CREATE TABLE Pilot_Schedule 
(
    Schedule_id INT PRIMARY KEY IDENTITY(1,1),
    Pilot_id INT NOT NULL,
    Flight_id VARCHAR(7),
    Schedule_date DATE NOT NULL,
    Departure_time TIME NOT NULL,
    Arrival_time TIME NOT NULL,
    FOREIGN KEY (Pilot_id) REFERENCES Pilot(Pilot_id),
    FOREIGN KEY (Flight_id) REFERENCES Flight(Flight_id)
);

-- Create the Passenger table
CREATE TABLE Passenger 
(
    Passenger_id INT PRIMARY KEY,
    Pass_Name VARCHAR(50) NOT NULL,
    Pass_Mail VARCHAR(100) NOT NULL UNIQUE,
    P_age INT CHECK (P_age >= 0),
    Gender VARCHAR(10) CHECK (Gender IN ('Male', 'Female', 'Other')),
    Phone_no VARCHAR(15),
    Nationality VARCHAR(50),
    Passport_no VARCHAR(20) UNIQUE,
    Balance FLOAT DEFAULT 0 CHECK (Balance >= 0),
    Registered_on DATETIME DEFAULT GETDATE(),
    Is_verified BIT DEFAULT 0
);

-- Create the Booking table
CREATE TABLE Booking 
(
    Booking_id INT PRIMARY KEY IDENTITY(1,1),
    Passenger_id INT NOT NULL,
    Flight_id VARCHAR(7) NOT NULL,
    Schedule_date DATE NOT NULL,
    Seat_no VARCHAR(5),
    Booking_status VARCHAR(20) CHECK (Booking_status IN ('Confirmed', 'Cancelled', 'Pending')) DEFAULT 'Pending',
    Booking_time DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (Passenger_id) REFERENCES Passenger(Passenger_id),
    FOREIGN KEY (Flight_id) REFERENCES Flight(Flight_id)
);

-- Create the Admin table
CREATE TABLE Admin 
(
    Admin_id INT PRIMARY KEY,
    Admin_name VARCHAR(50) NOT NULL,
    Admin_email VARCHAR(100) NOT NULL UNIQUE,
    Admin_password VARCHAR(255) NOT NULL,
    Role VARCHAR(20) CHECK (Role IN ('SuperAdmin', 'Manager', 'Staff')) DEFAULT 'Staff'
);

-- Create the Payment table
CREATE TABLE Payment 
(
    Payment_id INT PRIMARY KEY IDENTITY(1,1),
    Booking_id INT NOT NULL,
    Payment_date DATE NOT NULL,
    Amount FLOAT CHECK (Amount >= 0),
    Payment_method VARCHAR(30) CHECK (Payment_method IN ('Credit Card', 'Debit Card', 'Cash', 'Online Transfer', 'Wallet')) NOT NULL,
    Payment_status VARCHAR(20) CHECK (Payment_status IN ('Successful', 'Failed')) DEFAULT 'Successful',
    FOREIGN KEY (Booking_id) REFERENCES Booking(Booking_id)
);

-- Create the Ticket table
CREATE TABLE Ticket 
(
    Ticket_ID INT PRIMARY KEY,
    Passenger_ID INT,
    Flight_ID VARCHAR(7),
    Booking_Date DATE,
    Seat_Number VARCHAR(10),
    Ticket_Price DECIMAL(10, 2),
    Ticket_Status VARCHAR(20) CHECK (Ticket_Status IN ('Confirmed', 'Canceled', 'Pending')),
    FOREIGN KEY (Passenger_ID) REFERENCES Passenger(Passenger_ID),
    FOREIGN KEY (Flight_ID) REFERENCES Flight(Flight_ID)
);

-- Create the Luggage table
CREATE TABLE Luggage 
(
    Luggage_ID INT PRIMARY KEY,
    Passenger_ID INT,
    Flight_ID VARCHAR(7),
    Weight DECIMAL(5, 2),
    Status VARCHAR(20) CHECK (Status IN ('Checked-In', 'Lost', 'Delivered')),
    FOREIGN KEY (Passenger_ID) REFERENCES Passenger(Passenger_ID),
    FOREIGN KEY (Flight_ID) REFERENCES Flight(Flight_ID)
);

--creating crew table 
CREATE TABLE Crews 
(
    Crew_ID INT PRIMARY KEY,
    Crew_Name VARCHAR(50) NOT NULL,
    Age INT CHECK (Age >= 18),
    Gender VARCHAR(10) CHECK (Gender IN ('Male', 'Female', 'Other')),
    Role VARCHAR(30) CHECK (Role IN ('Cabin Crew', 'Ground Staff', 'Maintenance', 'Security')),
    Shift VARCHAR(20),
    Joining_Date DATE DEFAULT GETDATE(),
    Is_Active BIT DEFAULT 1
);

-- create airport table 
CREATE TABLE Airport 
(
Airport_ID INT PRIMARY KEY,
Name VARCHAR(100) NOT NULL,
City VARCHAR(50),
Country VARCHAR(50),
IATA_Code CHAR(3) UNIQUE
);