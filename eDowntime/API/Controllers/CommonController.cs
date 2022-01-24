using API.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SharedObjects.StoredProcedure;
using SharedObjects.ValueObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CommonController : ControllerBase
    {
        private readonly ApplicationDbContext context;

        public CommonController(ApplicationDbContext context)
        {
            this.context = context;
        }

        [HttpGet("Customer_Get")]
        [Obsolete]
        public async Task<List<VCustomer>> Master_Customer_Get()
        {
            var results = await context.Query<VCustomer>().AsNoTracking().FromSql(SPCommon.Customer_Get).ToListAsync();
            return results;
        }
        [HttpGet("Category_get")]
        [Obsolete]
        public async Task<List<VCategory>> Category_get()
        {
            var results = await context.Query<VCategory>().AsNoTracking().FromSql(SPCommon.Category_get).ToListAsync();
            return results;
        }
        [HttpGet("WorkWeek_get")]
        [Obsolete]
        public async Task<List<VWorkWeek>> WorkWeek_get()
        {
            var results = await context.Query<VWorkWeek>().AsNoTracking().FromSql(SPCommon.WorkWeek_get).ToListAsync();
            return results;
        }
    }
}
