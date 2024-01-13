using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projekt
{
    internal class Program
    {
        static void Main(string[] args)
        {
            bool runApp = true;
            while (runApp)
            {
                var datasource = @"localhost"; // Server 
                var database = "RMwS"; //Nazwa bazy danych

                //your connection string 
                string connString = @"Data Source=" + datasource + ";Initial Catalog=" + database + ";Integrated Security=True";
                SqlConnection conn = new SqlConnection(connString);
                DatabaseManager dbManager = new DatabaseManager(connString);

                Console.WriteLine("1. Wyświetl loty");
                Console.WriteLine("2. Dokonaj rezerwacji");
                Console.WriteLine("3. Nasza flota");
                Console.WriteLine("4. Wyjście");
                Console.Write("Wybierz opcję: ");

                switch (Console.ReadLine())
                {
                    case "1":
                        try
                        {
                            Flight.DisplayFlights(dbManager);
                        }
                        catch (Exception e)
                        {
                            Console.WriteLine("error" + e.Message);
                        }
                        Console.WriteLine("");
                        break;
                    case "2":
                        try
                        {
                            Reservation.MakeReservation(dbManager);
                        }
                        catch (Exception e)
                        {
                            Console.WriteLine("error" + e.Message);
                        }
                        Console.WriteLine("");
                        break;
                    case "3":
                        try
                        {
                            Aircrafts.DisplayAircrafts(dbManager);
                        }
                        catch (Exception e)
                        {
                            Console.WriteLine("error" + e.Message);
                        }
                        Console.WriteLine("");
                        break;
                    case "4":
                        return;
                    default:
                        Console.WriteLine("Nieznana opcja. \n");
                        break;
                }
            }
        }
    }
}
