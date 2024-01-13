INSERT INTO Aircrafts (AircraftModel,TotalSeats,dimensions) VALUES
	 ('Boeing 737',180,'Długość: 39.5m, Rozpiętość: 43.4m, Wysokość: 12.5m, Prędkość: 840km/h'),
	 ('Airbus A320',160,'Długość: 37.5m, Rozpiętość: 34.1m, Wysokość: 11m, Prędkość: 828km/h'),
	 ('Boeing 777',300,'Długość: 73.8m, Rozpiętość: 64.8m, Wysokość: 18.5m, Prędkość: 920km/h'),
	 ('Airbus A380',500,'Długość: 72.1m, Rozpiętość: 79m, Wysokość: 24m, Prędkość: 903km/h'),
	 ('Boeing 787 Dreamliner',240,'Długość: 56.7m, Rozpiętość: 60m, Wysokość: 16.9m, Prędkość: 903km/h'),
     ('Embraer E190', 100, 'Długość: 36.2m, Rozpiętość: 28.7m, Wysokość: 10.6m, Prędkość: 830km/h'),
     ('Boeing 747', 410, 'Długość: 70.6m, Rozpiętość: 64.4m, Wysokość: 19.4m, Prędkość: 920km/h'),
     ('Airbus A330', 290, 'Długość: 58.8m, Rozpiętość: 60.3m, Wysokość: 17.4m, Prędkość: 880km/h'),
     ('Bombardier CRJ900', 90, 'Długość: 36.4m, Rozpiętość: 24.9m, Wysokość: 7.5m, Prędkość: 830km/h'),
     ('Airbus A350', 325, 'Długość: 66.8m, Rozpiętość: 64.8m, Wysokość: 17.1m, Prędkość: 910km/h');

INSERT INTO Airports (IATA_Code,City,Airport_Name) VALUES
	 ('AMS','Amsterdam','Schiphol'),
	 ('CDG','Paryż','Charles de Gaulle / Roissy Airport'),
	 ('DXB','Dubaj','Dubai International Airport'),
	 ('HKG','Hongkong','Hong Kong International Airport'),
	 ('JFK','Nowy Jork','John F. Kennedy International Airport'),
	 ('LAX','Los Angeles','Los Angeles International Airport'),
	 ('LHR','Londyn','Heathrow'),
	 ('NRT','Tokio','Narita International Airport'),
	 ('SFO','San Francisco','San Francisco International Airport'),
	 ('WAW','Warszawa','Okęcie im. Fryderyka Chopina'),
     ('BER', 'Berlin', 'Berlin Brandenburg Airport'),
     ('IST', 'Istanbul', 'Istanbul Airport'),
     ('SIN', 'Singapore', 'Singapore Changi Airport'),
     ('SYD', 'Sydney', 'Sydney Kingsford Smith Airport'),
     ('YYZ', 'Toronto', 'Toronto Pearson International Airport');

INSERT INTO Flights (FlightNumber,DepartureAirport,ArrivalAirport,DepartureTime,ArrivalTime) VALUES
	 ('FR1234','WAW','JFK','2024-01-15 14:30:00.0','2024-01-15 20:00:00.0'),
	 ('FR5678','CDG','LAX','2024-01-16 10:00:00.0','2024-01-16 18:00:00.0'),
	 ('FR9101','LHR','DXB','2024-01-17 22:00:00.0','2024-01-18 06:00:00.0'),
	 ('FR1121','SFO','HKG','2024-01-18 11:00:00.0','2024-01-18 19:00:00.0'),
	 ('FR3141','AMS','NRT','2024-01-19 13:00:00.0','2024-01-19 21:00:00.0'),    
     ('FR2234', 'SIN', 'BER', '2024-01-20 15:00:00.0', '2024-01-21 07:00:00.0'),
     ('FR3334', 'SYD', 'LAX', '2024-01-21 16:00:00.0', '2024-01-21 22:00:00.0'),
     ('FR4434', 'YYZ', 'CDG', '2024-01-22 17:00:00.0', '2024-01-23 08:00:00.0'),
     ('FR5534', 'IST', 'LHR', '2024-01-23 14:00:00.0', '2024-01-23 16:30:00.0'),
     ('FR6634', 'BER', 'DXB', '2024-01-24 20:00:00.0', '2024-01-25 05:00:00.0');

INSERT INTO Seats (AircraftId,SeatNumber,ClassType,IsReserved,FlightNumberRef) VALUES
	 (1,'1A','Busiess',1,'FR1234'),
	 (1,'1B','Busiess',1,'FR1234'),
	 (1,'2A','Ecoomy',0,'FR1234'),
	 (1,'2B','Ecoomy',0,'FR1234'),
	 (1,'3A','Ecoomy',0,'FR1234'),
	 (1,'3B','Ecoomy',0,'FR1234'),
	 (1,'4A','Ecoomy',0,'FR1234'),
	 (1,'4B','Ecoomy',0,'FR1234'),
	 (1,'5A','Ecoomy',0,'FR1234'),
	 (1,'5B','Ecoomy',0,'FR1234');
INSERT INTO Seats (AircraftId,SeatNumber,ClassType,IsReserved,FlightNumberRef) VALUES
	 (2,'1A','Busiess',1,'FR5678'),
	 (2,'1B','Busiess',0,'FR5678'),
	 (2,'2A','Ecoomy',0,'FR5678'),
	 (2,'2B','Ecoomy',0,'FR5678'),
	 (2,'3A','Ecoomy',0,'FR5678'),
	 (2,'3B','Ecoomy',0,'FR5678'),
	 (2,'4A','Ecoomy',0,'FR5678'),
	 (2,'4B','Ecoomy',0,'FR5678'),
	 (2,'5A','Ecoomy',0,'FR5678'),
	 (2,'5B','Ecoomy',0,'FR5678');
INSERT INTO Seats (AircraftId,SeatNumber,ClassType,IsReserved,FlightNumberRef) VALUES
	 (3,'1A','Busiess',1,'FR9101'),
	 (3,'1B','Busiess',0,'FR9101'),
	 (3,'2A','Ecoomy',0,'FR9101'),
	 (3,'2B','Ecoomy',0,'FR9101'),
	 (3,'3A','Ecoomy',0,'FR9101'),
	 (3,'3B','Ecoomy',0,'FR9101'),
	 (3,'4A','Ecoomy',0,'FR9101'),
	 (3,'4B','Ecoomy',0,'FR9101'),
	 (3,'5A','Ecoomy',0,'FR9101'),
	 (3,'5B','Ecoomy',0,'FR9101');
INSERT INTO Seats (AircraftId,SeatNumber,ClassType,IsReserved,FlightNumberRef) VALUES
	 (4,'1A','Busiess',1,'FR1121'),
	 (4,'1B','Busiess',0,'FR1121'),
	 (4,'2A','Ecoomy',0,'FR1121'),
	 (4,'2B','Ecoomy',0,'FR1121'),
	 (4,'3A','Ecoomy',0,'FR1121'),
	 (4,'3B','Ecoomy',0,'FR1121'),
	 (4,'4A','Ecoomy',0,'FR1121'),
	 (4,'4B','Ecoomy',0,'FR1121'),
	 (4,'5A','Ecoomy',0,'FR1121'),
	 (4,'5B','Ecoomy',0,'FR1121');
INSERT INTO Seats (AircraftId,SeatNumber,ClassType,IsReserved,FlightNumberRef) VALUES
	 (5,'1A','Busiess',0,'FR3141'),
	 (5,'1B','Busiess',0,'FR3141'),
	 (5,'2A','Ecoomy',0,'FR3141'),
	 (5,'2B','Ecoomy',0,'FR3141'),
	 (5,'3A','Ecoomy',0,'FR3141'),
	 (5,'3B','Ecoomy',1,'FR3141'),
	 (5,'4A','Ecoomy',0,'FR3141'),
	 (5,'4B','Ecoomy',0,'FR3141'),
	 (5,'5A','Ecoomy',0,'FR3141'),
	 (5,'5B','Ecoomy',0,'FR3141');
INSERT INTO Seats (AircraftId,SeatNumber,ClassType,IsReserved,FlightNumberRef) VALUES
	 (6,'1A','Busiess',0,'FR6634'),
	 (6,'1B','Busiess',0,'FR6634'),
	 (6,'2A','Busiess',0,'FR6634'),
	 (6,'2B','Busiess',0,'FR6634'),
	 (6,'3A','Busiess',0,'FR6634'),
	 (6,'3B','Ecoomy',1,'FR6634'),
	 (6,'4A','Ecoomy',0,'FR6634'),
	 (6,'4B','Ecoomy',0,'FR6634'),
	 (6,'5A','Ecoomy',0,'FR6634'),
	 (6,'5B','Ecoomy',0,'FR6634');
INSERT INTO Seats (AircraftId,SeatNumber,ClassType,IsReserved,FlightNumberRef) VALUES
	 (10,'1A','Busiess',0,'FR5534'),
	 (10,'1B','Busiess',0,'FR5534'),
	 (10,'2A','Busiess',0,'FR5534'),
	 (10,'2B','Busiess',0,'FR5534'),
	 (10,'3A','Busiess',0,'FR5534'),
	 (10,'3B','Ecoomy',0,'FR5534'),
	 (10,'4A','Ecoomy',0,'FR5534'),
	 (10,'4B','Ecoomy',0,'FR5534'),
	 (10,'5A','Ecoomy',1,'FR5534'),
	 (10,'5B','Ecoomy',0,'FR5534');
INSERT INTO Seats (AircraftId,SeatNumber,ClassType,IsReserved,FlightNumberRef) VALUES
	 (9,'1A','Busiess',0,'FR4434'),
	 (9,'1B','Busiess',0,'FR4434'),
	 (9,'2A','Busiess',0,'FR4434'),
	 (9,'2B','Busiess',0,'FR4434'),
	 (9,'3A','Busiess',0,'FR4434'),
	 (9,'3B','Ecoomy',0,'FR4434'),
	 (9,'4A','Ecoomy',0,'FR4434'),
	 (9,'4B','Ecoomy',1,'FR4434'),
	 (9,'5A','Ecoomy',0,'FR4434'),
	 (9,'5B','Ecoomy',0,'FR4434');
INSERT INTO Seats (AircraftId,SeatNumber,ClassType,IsReserved,FlightNumberRef) VALUES
	 (8,'1A','Ecoomy',0,'FR3334'),
	 (8,'1B','Ecoomy',0,'FR3334'),
	 (8,'2A','Ecoomy',0,'FR3334'),
	 (8,'2B','Ecoomy',0,'FR3334'),
	 (8,'3A','Ecoomy',0,'FR3334'),
	 (8,'3B','Ecoomy',0,'FR3334'),
	 (8,'4A','Ecoomy',0,'FR3334'),
	 (8,'4B','Ecoomy',0,'FR3334'),
	 (8,'5A','Ecoomy',0,'FR3334'),
	 (8,'5B','Ecoomy',0,'FR3334');
INSERT INTO Seats (AircraftId,SeatNumber,ClassType,IsReserved,FlightNumberRef) VALUES
	 (7,'1A','Busiess',0,'FR2234'),
	 (7,'1B','Busiess',0,'FR2234'),
	 (7,'2A','Busiess',0,'FR2234'),
	 (7,'2B','Busiess',0,'FR2234'),
	 (7,'3A','Busiess',1,'FR2234'),
	 (7,'3B','Ecoomy',0,'FR2234'),
	 (7,'4A','Ecoomy',0,'FR2234'),
	 (7,'4B','Ecoomy',0,'FR2234'),
	 (7,'5A','Ecoomy',0,'FR2234'),
	 (7,'5B','Ecoomy',1,'FR2234');

INSERT INTO Reservations (PassengerName,FlightNumber,SeatId) VALUES
	 ('Jan Kowalski','FR1234',1),
	 ('Anna Nowak','FR3141',46),
	 ('Tomasz Baran','FR5678',11),
	 ('Ewa Mazur','FR9101',21),
	 ('Michał Wiśniewski','FR1121',31),
	 ('Jan Kowalski','FR1234',95),
	 ('Anna Nowak','FR3141',78),
	 ('Tomasz Baran','FR5678',69),
	 ('Ewa Mazur','FR9101',56),
	 ('Michał Wiśniewski','FR1121',100);

-- Aircrafts → Airports → Flights → Seats → Reservations
-- Prawidłowa Kolejnosć wprowadzania
-- Najlepiej kopiować pojedyńcze INSERT'y osobno 