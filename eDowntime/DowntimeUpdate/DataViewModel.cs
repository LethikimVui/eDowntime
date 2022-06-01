using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DowntimeUpdate
{
    class DataViewModel
    {
        public string Yyww { get; set; }
        public string CustName { get; set; }
        public string Station { get; set; }
        public string StationName { get; set; }
        public string Category { get; set; }
        public string Details { get; set; }
        public decimal TotalDT { get; set; }
        public decimal Impact { get; set; }
       
    }
}
