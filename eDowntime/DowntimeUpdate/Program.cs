using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DowntimeUpdate
{
    class Program
    {
        static private string ICTDownTimeConnectionString = "Data Source=vnhcmm0src02;Database=ictdowntime;User Id=ictdowntime;Password=jabil12345@;MultipleActiveResultSets=true;";
        static private string eDownTimeConnectionString = "Data Source=VNHCMC0SQL81;Database=eDowntime;User Id=eDowntime_User;Password=zKhU$~R;MultipleActiveResultSets=true;";
        static void Main(string[] args)
        {
            List<ICTDataViewModel> list = new List<ICTDataViewModel>();
            using (SqlConnection ICTconn = new SqlConnection(ICTDownTimeConnectionString))
            {
                ICTconn.Open();
                SqlCommand command = new SqlCommand("usp_ictDT_get", ICTconn);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    list.Add(new ICTDataViewModel
                    {
                        Yyww = reader["yyww"].ToString(),
                        CustName = reader["WorkCell"].ToString(),
                        Category = reader["DowntimeCategory"].ToString(),
                        Details = reader["DowntimeDetails"].ToString(),
                        TotalDT = decimal.Parse(reader["TotalDT"].ToString())
                    });
                }
                ICTconn.Close();
            }
            using (SqlConnection eDTconn = new SqlConnection(eDownTimeConnectionString))
            {
                foreach (var item in list)
                {
                    eDTconn.Open();
                    SqlCommand command = new SqlCommand("usp_Action_insert", eDTconn);

                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@in_yyww", item.Yyww);
                    command.Parameters.AddWithValue("@in_custName", item.CustName);
                    command.Parameters.AddWithValue("@in_category", item.Category);
                    command.Parameters.AddWithValue("@in_details", item.Details);
                    command.Parameters.AddWithValue("@in_totalDT", item.TotalDT);
                    command.ExecuteNonQuery();

                    eDTconn.Close();
                }
            }
        }
    }
}
