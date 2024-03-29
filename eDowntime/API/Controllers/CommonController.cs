﻿using API.Models;
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

        [HttpGet("Customer_Get/{NtLogin}")]
        [Obsolete]
        public async Task<List<VCustomer>> Customer_Get(string NtLogin)
        {
            var results = await context.Query<VCustomer>().AsNoTracking().FromSql(SPCommon.Customer_Get, NtLogin).ToListAsync();
            return results;
        }
        [HttpGet("Category_get/{custName}")]
        [Obsolete]
        public async Task<List<VCategory>> Category_get(string custName)
        {
            var results = await context.Query<VCategory>().AsNoTracking().FromSql(SPCommon.Category_get, custName).ToListAsync();
            return results;
        }
        [HttpGet("WorkWeek_get/{custName}")]
        [Obsolete]
        public async Task<List<VWorkWeek>> WorkWeek_get(string custName)
        {
            var results = await context.Query<VWorkWeek>().AsNoTracking().FromSql(SPCommon.WorkWeek_get, custName).ToListAsync();
            return results;
        }
        [HttpGet("StationName_get/{station}")]
        [Obsolete]
        public async Task<List<VStationName>> StationName_get(string station)
        {
            var results = await context.Query<VStationName>().AsNoTracking().FromSql(SPCommon.StationName_get, station).ToListAsync();
            return results;
        }
    }
}
