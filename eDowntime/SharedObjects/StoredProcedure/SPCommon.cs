using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SharedObjects.StoredProcedure
{
    public class SPCommon
    {
        public static string Customer_Get = "usp_Customer_Get @p0";
        public static string Category_get = "usp_Category_get";
        public static string WorkWeek_get = "usp_WorkWeek_get";
    }
}
