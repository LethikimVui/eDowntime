using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
namespace DowntimeUpdate
{
    class Program
    {
        //static private string DownTimeConnectionString = "Data Source=vnhcmm0src02;Database=edowntime;User Id=edowntime;Password=jabil12345@;MultipleActiveResultSets=true;";
        //static private string eDownTimeConnectionString = "Data Source=VNHCMC0SQL81;Database=eDowntime;User Id=eDowntime_User;Password=zKhU$~R;MultipleActiveResultSets=true;";
        static private string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString ;
        static void Main(string[] args)
        {
            List<DataViewModel> list = new List<DataViewModel>();
            try
            {
                using (SqlConnection ICTconn = new SqlConnection(connectionString))
                {
                    ICTconn.Open();
                    SqlCommand command = new SqlCommand("usp_Downtime_update", ICTconn);
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        list.Add(new DataViewModel
                        {
                            Yyww = reader["yyww"].ToString(),
                            CustName = reader["WorkCell"].ToString(),
                            Station = reader["Station"].ToString(),
                            StationName = reader["StationName"].ToString(),
                            Category = reader["DowntimeCategory"].ToString(),
                            Details = reader["DowntimeDetails"].ToString(),
                            TotalDT = decimal.Parse(reader["TotalDT"].ToString()),
                            Impact = decimal.Parse(reader["impact"].ToString())
                        });
                    }
                    ICTconn.Close();
                }
                using (SqlConnection eDTconn = new SqlConnection(connectionString))
                {
                    foreach (var item in list)
                    {
                        eDTconn.Open();
                        SqlCommand command = new SqlCommand("usp_Action_insert", eDTconn);

                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@in_yyww", item.Yyww);
                        command.Parameters.AddWithValue("@in_custName", item.CustName);
                        command.Parameters.AddWithValue("@in_station", item.Station);
                        command.Parameters.AddWithValue("@in_stationName", item.StationName);
                        command.Parameters.AddWithValue("@in_category", item.Category);
                        command.Parameters.AddWithValue("@in_details", item.Details);
                        command.Parameters.AddWithValue("@in_totalDT", item.TotalDT);
                        command.Parameters.AddWithValue("@in_impact", item.Impact);
                        command.ExecuteNonQuery();

                        eDTconn.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                SentEmail(ex.Message);
            }           
        }

        static void SentEmail(string ex)
        {
            MailMessage message = new MailMessage();
            SmtpClient smtp = new SmtpClient("corimc04.corp.JABIL.ORG");
            message.From = new MailAddress("eDowntime@Jabil.com");
           
            string body = string.Empty;
            body += "<p>Hi,</p>";            
            body += ex;            
            message.Subject = "Error on downtime update";
            message.Body = body;
            //message.IsBodyHtml = true;
            smtp.Send(message);
        }
    }
}
