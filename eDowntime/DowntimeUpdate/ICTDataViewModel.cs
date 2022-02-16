using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DowntimeUpdate
{
    class ICTDataViewModel
    {
        public string Yyww { get; set; }
        public string CustName { get; set; }
        public string Category { get; set; }
        public string Details { get; set; }
        public decimal TotalDT { get; set; }
        //public ICTDataViewModel(string yyww, string custName, string category, string details, float totalDT)
        //{
        //    Yyww = yyww;
        //    CustName = custName;
        //    Category = category;
        //    Details = details;
        //    TotalDT = totalDT;
        //}
    }
}
