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
        public async Task<List<VCategory>> Category_get(string custName)
        {
            var list = new List<VCategory>();
            using (var response = await httpClient.GetAsync("api/common/Category_get/" + custName))
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

        public async Task<List<VStationName>> StationName_get(string station)
        {
            var stationName = new List<VStationName>();
            using(var response = await httpClient.GetAsync("api/common/StationName_get/" + station))
            {
                var apiResponse = await response.Content.ReadAsStringAsync();
                stationName = JsonConvert.DeserializeObject<List<VStationName>>(apiResponse);
            }
            return stationName;
        }

        public async Task<List<VWorkWeek>> WorkWeek_get(string custName)
        {
            List<VWorkWeek> list = new List<VWorkWeek>();
            using (var response = await httpClient.GetAsync("api/common/WorkWeek_get/" + custName))
            {
                var apiResponse = await response.Content.ReadAsStringAsync();
                list = JsonConvert.DeserializeObject<List<VWorkWeek>>(apiResponse);
            }
            return list;
        }
    }
}
