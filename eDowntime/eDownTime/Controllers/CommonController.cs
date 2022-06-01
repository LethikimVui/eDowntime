using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Services.Interfaces;
using SharedObjects.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using SharedObjects.Extensions;

namespace eDownTime.Controllers
{
    [Authorize]
    public class CommonController : Controller
    {
        private readonly IActionService actionService;
        private readonly ICommonService commonService;

        public CommonController(IActionService actionService, ICommonService commonService)
        {
            this.actionService = actionService;
            this.commonService = commonService;
        }
        public async Task<IActionResult> StationName_get(string station)
        {
            var stationName = await commonService.StationName_get(station);
            return Json(new { result = stationName });
        }
        public async Task<IActionResult> WorkWeek_get(string custName)
        {
            var yyww = await commonService.WorkWeek_get(custName);
            return Json(new { result = yyww });
        }
        public async Task<IActionResult> Category_get(string custName)
        {
            var Category = await commonService.Category_get(custName);
            return Json(new { result = Category });
        }
    }
}
