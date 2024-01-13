using Projekt;
using System;

public class Flight
{
    // Pola klasy
    public string FlightNumber { get; set; }
    public string DepartureAirport { get; set; }
    public string ArrivalAirport { get; set; }
    public DateTime DepartureTime { get; set; }
    public DateTime ArrivalTime { get; set; }

    // Konstruktor
    public Flight(string flightNumber, string departureAirport, string arrivalAirport, DateTime departureTime, DateTime arrivalTime)
    {
        FlightNumber = flightNumber;
        DepartureAirport = departureAirport;
        ArrivalAirport = arrivalAirport;
        DepartureTime = departureTime;
        ArrivalTime = arrivalTime;
    }

    // Metoda do wyświetlania informacji o locie
    public static void DisplayFlights(DatabaseManager dbManager)
    {
        string query = "SELECT * FROM Flights";
        int x = 1;
        using (var reader = dbManager.ExecuteQuery(query))
        {
            while (reader.Read())
            {
                Console.WriteLine($"Lot {x}: Nr. Lotu {reader["FlightNumber"]}, Cel {reader["ArrivalAirport"]}, Odlot {reader["DepartureTime"]}, Przybycie {reader["ArrivalTime"]}");
                x++;
            }
        }
    }
}