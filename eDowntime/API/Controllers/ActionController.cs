using API.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SharedObjects.Common;
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
            var results = await context.Query<VAction>().AsNoTracking().FromSql(SPAction.Action_get, model.ActionId, model.CustName, model.Yyww, model.Category, model.Station, model.StationName).ToListAsync();
            return results;
        }
        [HttpPost("Action_update")]
        [Obsolete]
        public async Task<IActionResult> Action_insert([FromBody] ActionViewModel model)
        {
            try
            {
                await context.Database.ExecuteSqlCommandAsync(SPAction.Action_update, model.ActionId, model.ProblemDescription, model.RootCause, model.ContainmentAction, model.Capa, model.Ecnpcn, model.Fia, model.Responsible, model.CommitDate, model.Remark, model.FileName, model.UpdatedBy);
                return Ok(new ResponseResult(200));
            }
            catch (Exception)
            {
                return BadRequest(new ResponseResult(400, "Save failed"));
            }

        }
    }
}
