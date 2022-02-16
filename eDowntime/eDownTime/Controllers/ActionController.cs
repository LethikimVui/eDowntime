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
    public class ActionController : Controller
    {
        private readonly IActionService actionService;
        private readonly ICommonService commonService;

        public ActionController(IActionService actionService, ICommonService commonService)
        {
            this.actionService = actionService;
            this.commonService = commonService;
        }
        public async Task<IActionResult> Get()
        {
            var NtLogin = User.GetSpecificClaim("Ntlogin");
            var customers = await commonService.Customer_Get(NtLogin);
            var Category = await commonService.Category_get();
            var yyww = await commonService.WorkWeek_get();

            ViewData["customers"] = customers;
            ViewData["yyww"] = yyww;
            ViewData["Category"] = Category;
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Get_partial([FromBody] ActionViewModel model)
        {
            var results = await actionService.Action_get(model);
            return PartialView(results);
        }
        [HttpPost]
        public async Task<IActionResult> Get_By_ActionId([FromBody] ActionViewModel model)
        {
            var results = await actionService.Action_get(model);
            return Json( new { results = results.FirstOrDefault()});
        }
        [HttpPost]
        public async Task<IActionResult> Acton_update([FromBody] ActionViewModel model)
        {
            //if (model.ActionCode == 2)
            //{
            //    SentEmail(model.ActionId, model.CustName, model.Pn, model.Wwyy);
            //}
            var result = await actionService.Acton_update(model);
            return Json(new { results = result });
        }
    }
}
