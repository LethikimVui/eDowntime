using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace API.Models
{
    public partial class EDtAction
    {
        public int ActionId { get; set; }
        public string Yyww { get; set; }
        public byte? CustId { get; set; }
        public string Category { get; set; }
        public string Details { get; set; }
        public string ProblemDescription { get; set; }
        public string RootCause { get; set; }
        public string ContainmentAction { get; set; }
        public string Capa { get; set; }
        public string OverallImpact { get; set; }
        public string Ecnpcn { get; set; }
        public string Fia { get; set; }
        public string Responsible { get; set; }
        public string CommitDate { get; set; }
        public byte? Status { get; set; }
        public byte? IsActive { get; set; }
        public DateTime? CreationDate { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? UpdateDate { get; set; }
        public string UpdatedBy { get; set; }
    }
}
