﻿using API.Models;
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
    public class AdminController : ControllerBase
    {
        private readonly ApplicationDbContext context;

        public AdminController(ApplicationDbContext context)
        {
            this.context = context;
        }
        [HttpGet("Access_Role_get")]
        [Obsolete]
        public async Task<List<VRole>> Access_Role_get()
        {
            var results = await context.Query<VRole>().AsNoTracking().FromSql(SPAdmin.Access_Role_get).ToListAsync();
            return results;
        }
        [HttpGet("Access_UserRole_get")]
        [Obsolete]
        public async Task<List<VUserRole>> Access_UserRole_get()
        {
            var results = await context.Query<VUserRole>().AsNoTracking().FromSql(SPAdmin.Access_UserRole_get).ToListAsync();
            return results;
        }
        [HttpGet("Access_UserRole_Get_By_Id/{id}")]
        [Obsolete]
        public async Task<List<VUserRole>> Access_UserRole_Get_By_Id(int id)
        {
            var results = await context.Query<VUserRole>().AsNoTracking().FromSql(SPAdmin.Access_UserRole_Get_By_Id, id).ToListAsync();
            return results;
        }

        [HttpPost("Access_UserRole_insert")]
        [Obsolete]
        public async Task<IActionResult> Access_UserRole_insert(UserRoleViewModel model)
        {
            try
            {
                if (!context.AccessUserRole.Where(x => (x.Ntlogin == model.Ntlogin) && (x.CustName == model.CustName) && (x.IsActive == 1)).ToList().Any())
                {
                    await context.Database.ExecuteSqlCommandAsync(SPAdmin.Access_UserRole_insert, model.Ntlogin, model.RoleId, model.PlantId, model.CustName, model.CreatedBy);
                    return Ok(new ResponseResult(200, "User Added Successfully"));
                }
                else
                {
                    return Conflict(new ResponseResult(400, "User already existing"));
                }
            }
            catch (Exception ex)
            {
                return BadRequest(new ResponseResult(400, ex.Message));
            }
        }

        [HttpPost("Access_UserRole_delete")]
        [Obsolete]
        public async Task<IActionResult> Access_UserRole_delete(UserRoleViewModel model)
        {
            try
            {
                await context.Database.ExecuteSqlCommandAsync(SPAdmin.Access_UserRole_delete, model.UserRoleId, model.UpdatedBy);
                return Ok(new ResponseResult(200));
            }
            catch (Exception ex)
            {
                return BadRequest(new ResponseResult(400, ex.Message));
            }
        }
        [HttpPost("Access_UserRole_update")]
        [Obsolete]
        public async Task<IActionResult> Access_UserRole_update(UserRoleViewModel model)
        {
            try
            {
                await context.Database.ExecuteSqlCommandAsync(SPAdmin.Access_UserRole_update, model.UserRoleId, model.PlantId, model.CustName, model.RoleId, model.UpdatedBy);
                return Ok(new ResponseResult(200, "User Updated Successfully"));
            }
            catch (Exception ex)
            {
                return BadRequest(new ResponseResult(400, ex.Message));
            }
        }
    }
}
