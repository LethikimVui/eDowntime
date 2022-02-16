using SharedObjects.ValueObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Interfaces
{
   public interface ICommonService
    {
        Task<List<VCustomer>> Customer_Get(string NtLogin);
        Task<List<VCategory>> Category_get();
        Task<List<VWorkWeek>> WorkWeek_get();
    }
}
