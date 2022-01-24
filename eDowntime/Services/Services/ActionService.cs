using Newtonsoft.Json;
using Services.Interfaces;
using SharedObjects.ValueObjects;
using SharedObjects.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace Services.Services
{
    public class ActionService : BaseService, IActionService
    {
        public async Task<List<VAction>> Action_get(ActionViewModel model)
        {
            List<VAction> list = new List<VAction>();
            StringContent content = new StringContent(JsonConvert.SerializeObject(model), Encoding.UTF8, "application/json");
            using (var response = await httpClient.PostAsync("api/action/Action_get/", content))
            {
                var apiResponse = await response.Content.ReadAsStringAsync();
                list = JsonConvert.DeserializeObject<List<VAction>>(apiResponse);
            }
            return list;
        }
    }
}
