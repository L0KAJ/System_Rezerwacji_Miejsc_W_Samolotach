using Projekt;
using System;
using System.Runtime.Remoting.Metadata.W3cXsd2001;

public class Aircrafts
{
    // Pola klasy
    public int AircraftId { get; set; }
    public string AircraftModel { get; set; }
    public int TotalSeats { get; set; }
    public string Dimensions { get; set; }


    // Konstruktor
    public Aircrafts(int aircraftId, string aircraftModel, int totalSeats, string dimensions)
    {
        this.AircraftId = aircraftId;
        this.AircraftModel = aircraftModel;
        this.TotalSeats = totalSeats;
        this.Dimensions = dimensions;
    }

    // Metoda do wyświetlania floty samolotów
    public static void DisplayAircrafts(DatabaseManager dbManager)
    {
        string queryAircrafts = "SELECT * FROM Aircrafts";
        using (var Aircrafts = dbManager.ExecuteQuery(queryAircrafts))
        {
            while (Aircrafts.Read())
            {
                Console.WriteLine($"Nr. {Aircrafts["AircraftId"]}, Model samolotu: {Aircrafts["AircraftModel"]}, Ilość siedzien: {Aircrafts["TotalSeats"]}, \n Wymiary dla ciekawych: {Aircrafts["dimensions"]} \n");
            }
        }
    }
}