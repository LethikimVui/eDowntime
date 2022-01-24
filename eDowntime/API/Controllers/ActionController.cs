using API.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SharedObjects.StoredProcedure;
using SharedObjects.ValueObjects;
using SharedObjects.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ActionController : ControllerBase
    {
        private readonly ApplicationDbContext context;

        public ActionController(ApplicationDbContext context)
        {
            this.context = context;
        }

        [HttpPost("Action_get")]
        [Obsolete]
        public async Task<List<VAction>> Action_get(ActionViewModel model)
        {
            var results = await context.Query<VAction>().AsNoTracking().FromSql(SPAction.Action_get, model.ActionId, model.CustName, model.yyww, model.Category).ToListAsync();
            return results;
        }
    }
}
