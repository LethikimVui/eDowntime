using Newtonsoft.Json;
using Services.Interfaces;
using SharedObjects.ValueObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Services
{
    public class CommonService : BaseService, ICommonService
    {
        public async Task<List<VCategory>> Category_get()
        {
            var list = new List<VCategory>();
            using (var response = await httpClient.GetAsync("api/common/Category_get"))
            {
                var apiResponse = await response.Content.ReadAsStringAsync();
                list = JsonConvert.DeserializeObject<List<VCategory>>(apiResponse);
            }
            return list;
        }

        public async Task<List<VCustomer>> Customer_Get(string NtLogin)
        {
            List<VCustomer> list = new List<VCustomer>();
            using (var response = await httpClient.GetAsync("api/common/Customer_Get/"+ NtLogin))
            {
                var apiResponse = await response.Content.ReadAsStringAsync();
                list = JsonConvert.DeserializeObject<List<VCustomer>>(apiResponse);
            }
            return list;
        }

        public async Task<List<VWorkWeek>> WorkWeek_get()
        {
            List<VWorkWeek> list = new List<VWorkWeek>();
            using (var response = await httpClient.GetAsync("api/common/WorkWeek_get"))
            {
                var apiResponse = await response.Content.ReadAsStringAsync();
                list = JsonConvert.DeserializeObject<List<VWorkWeek>>(apiResponse);
            }
            return list;
        }
    }
}
