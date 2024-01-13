using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projekt
{
    public class Reservation
    {
        public string ReservationId { get; set; }
        public string PassengerName { get; set; }
        public string SeatId { get; set; }
        public string FlightNumberRef { get; set; }

        public Reservation(string reservationId, string passengerName, string flightNumberRef, string seatId)
        {
            this.ReservationId = reservationId;
            this.PassengerName = passengerName;
            this.FlightNumberRef = flightNumberRef;
            this.SeatId = seatId;
        }

        public static void MakeReservation(DatabaseManager dbManager)
        {
            string query = "SELECT f.FlightNumber, a1.City AS DepartureCity, a2.City AS ArrivalCity, f.DepartureTime, f.ArrivalTime FROM Flights f JOIN Airports a1 ON f.DepartureAirport = a1.IATA_Code JOIN Airports a2 ON f.ArrivalAirport = a2.IATA_Code;";
            using (var aircaft = dbManager.ExecuteQuery(query))

            {
                while (aircaft.Read())
                {
                    Console.WriteLine($"Nr. Lotu: {aircaft["FlightNumber"]}, Odlot: {aircaft["DepartureCity"]}, Przylot: {aircaft["ArrivalCity"]}, Czas odlotu: {aircaft["DepartureTime"]}, Czas przylotu: {aircaft["ArrivalTime"]}");
                }
            }
            Console.WriteLine("");

            // Wybór samolotu
            Console.WriteLine("Podaj Nr. Lotu do dokonania rezerwacji:");
            string FlightNumberRef = Console.ReadLine();

            // Sprawdzenie, czy numer lotu istnieje
            string checkFlightQuery = $"SELECT COUNT(*) FROM Flights WHERE FlightNumber = '{FlightNumberRef}'";
            using (var flightCheck = dbManager.ExecuteQuery(checkFlightQuery))
            {
                flightCheck.Read();
                if (int.Parse(flightCheck[0].ToString()) == 0)
                {
                    Console.WriteLine("Numer lotu nie istnieje. Spróbuj ponownie.");
                    Console.WriteLine("");
                    return;
                }
            }

            // Wyświetl dostępne miejsca
            Console.WriteLine("");
            string QuerySeats = $"SELECT s.SeatNumber,s.ClassType FROM Seats s WHERE s.FlightNumberRef = '{FlightNumberRef}' AND s.IsReserved != 1";
            using (var seats = dbManager.ExecuteQuery(QuerySeats))
            {
                while (seats.Read())
                {
                    Console.WriteLine($"Numer Siedzienia: {seats["SeatNumber"]}, Klasa: {seats["CLassType"]}");
                }
            }
            Console.WriteLine("");

            // Wybór miejsca przez użytkownika
            Console.WriteLine("Wybierz numer siedzenia:");
            string selectedSeatNumber = Console.ReadLine();

            // Sprawdzenie, czy wybrane miejsce jest dostępne
            string checkSeatQuery = $"SELECT IsReserved FROM Seats WHERE SeatNumber = '{selectedSeatNumber}' AND FlightNumberRef = '{FlightNumberRef}'";
            using (var seatCheck = dbManager.ExecuteQuery(checkSeatQuery))
            {
                if (!seatCheck.Read() || bool.Parse(seatCheck["IsReserved"].ToString()))
                {
                    Console.WriteLine("Miejsce jest już zarezerwowane lub nie istnieje. Spróbuj ponownie.");
                    Console.WriteLine("");
                    return;
                }
            }

            // Wprowadzenie imienia i nazwiska
            Console.WriteLine("Podaj swoje imię i nazwisko:");
            string passengerName = Console.ReadLine();

            // Pobranie SeatId na podstawie wybranego numeru siedzenia i FlightNumber
            string getSeatIdQuery = $"SELECT SeatId FROM Seats WHERE SeatNumber = '{selectedSeatNumber}' AND FlightNumberRef = '{FlightNumberRef}'";
            int seatId = -1;
            using (var seatResult = dbManager.ExecuteQuery(getSeatIdQuery))
            {
                if (seatResult.Read())
                {
                    seatId = int.Parse(seatResult["SeatId"].ToString());
                }
            }

            if (seatId != -1)
            {
                // Tworzenie rezerwacji
                string insertReservationQuery = $"INSERT INTO Reservations (PassengerName, FlightNumber, SeatId) VALUES ('{passengerName}', '{FlightNumberRef}', {seatId});";
                dbManager.ExecuteNonQuery(insertReservationQuery);

                // Aktualizacja statusu miejsca
                string updateSeatQuery = $"UPDATE Seats SET IsReserved = 1 WHERE SeatId = {seatId}";
                dbManager.ExecuteNonQuery(updateSeatQuery);
                Console.WriteLine("");
                Console.WriteLine("Rezerwacja została dokonana.");
            }
            else
            {
                Console.WriteLine("Nie znaleziono wybranego miejsca.");
            }
        }
    }
}
