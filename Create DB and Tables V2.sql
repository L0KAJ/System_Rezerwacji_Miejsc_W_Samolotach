-- Tworzenie bazy danych
CREATE DATABASE RMwS;

-- U�ywanie bazy danych
USE RMwS;

CREATE TABLE Aircrafts (
	AircraftId int IDENTITY(1,1) NOT NULL,
	AircraftModel nvarchar(100) COLLATE Polish_CI_AS NULL,
	TotalSeats int NULL,
	dimensions varchar(255) COLLATE Polish_CI_AS NULL,
	PRIMARY KEY (AircraftId)
);

CREATE TABLE Airports (
	IATA_Code varchar(3) COLLATE Polish_CI_AS NOT NULL,
	City varchar(50) COLLATE Polish_CI_AS NULL,
	Airport_Name varchar(100) COLLATE Polish_CI_AS NULL,
	PRIMARY KEY (IATA_Code)
);

CREATE TABLE Flights (
	FlightId int IDENTITY(1,1) NOT NULL,
	FlightNumber varchar(100) COLLATE Polish_CI_AS NULL,
	DepartureAirport varchar(3) COLLATE Polish_CI_AS NULL,
	ArrivalAirport varchar(3) COLLATE Polish_CI_AS NULL,
	DepartureTime datetime NULL,
	ArrivalTime datetime NULL,
	PRIMARY KEY (FlightId),
	UNIQUE (FlightNumber),
	FOREIGN KEY (ArrivalAirport) REFERENCES Airports(IATA_Code),
	FOREIGN KEY (DepartureAirport) REFERENCES Airports(IATA_Code)
);

CREATE TABLE Seats (
	SeatId int IDENTITY(1,1) NOT NULL,
	AircraftId int NULL,
	SeatNumber nvarchar(50) COLLATE Polish_CI_AS NULL,
	ClassType nvarchar(50) COLLATE Polish_CI_AS NULL,
	IsReserved bit NULL,
	FlightNumberRef varchar(100) COLLATE Polish_CI_AS NULL,
	CONSTRAINT PK__Seats__311713F376CB600F PRIMARY KEY (SeatId),
	FOREIGN KEY (FlightNumberRef) REFERENCES Flights(FlightNumber),
	FOREIGN KEY (AircraftId) REFERENCES Aircrafts(AircraftId)
);

CREATE TABLE Reservations (
	ReservationId int IDENTITY(1,1) NOT NULL,
	PassengerName varchar(100) COLLATE Polish_CI_AS NULL,
	FlightNumber varchar(100) COLLATE Polish_CI_AS NULL,
	SeatId int NULL,
	PRIMARY KEY (ReservationId),
	FOREIGN KEY (FlightNumber) REFERENCES Flights(FlightNumber),
	FOREIGN KEY (SeatId) REFERENCES Seats(SeatId)
);