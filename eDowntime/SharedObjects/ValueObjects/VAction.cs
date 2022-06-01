using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SharedObjects.ValueObjects
{
    public class VAction
    {
        public int ActionId { get; set; }
        public string Yyww { get; set; }
        public byte? CustId { get; set; }
        public string CustName { get; set; }
        public string Category { get; set; }
        public string Details { get; set; }
        public double? TotalDT { get; set; }
        public string ProblemDescription { get; set; }
        public string RootCause { get; set; }
        public string ContainmentAction { get; set; }
        public string Capa { get; set; }
        public string OverallImpact { get; set; }
        public string Ecnpcn { get; set; }
        public string Fia { get; set; }
        public string Responsible { get; set; }
        public string CommitDate { get; set; }
        public string Remark { get; set; }
        public byte StatusId { get; set; }
        public string Status { get; set; }
        public string ColorCode { get; set; }
        public string Station { get; set; }
        public string StationName { get; set; }
        public string FileName { get; set; }
    }
}
