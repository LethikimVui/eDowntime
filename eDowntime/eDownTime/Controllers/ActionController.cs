using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Services.Interfaces;
using SharedObjects.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using SharedObjects.Extensions;
using Microsoft.Extensions.Configuration;
using System.IO;
using Microsoft.AspNetCore.Http;

namespace eDownTime.Controllers
{
    [Authorize()]
    public class ActionController : Controller
    {
        private readonly IActionService actionService;
        private readonly ICommonService commonService;
        private readonly IConfiguration configuration;

        public ActionController(IActionService actionService, ICommonService commonService, IConfiguration configuration)
        {
            this.actionService = actionService;
            this.commonService = commonService;
            this.configuration = configuration;
        }
        public async Task<IActionResult> Get()
        {
            var NtLogin = User.GetSpecificClaim("Ntlogin");
            var customers = await commonService.Customer_Get(NtLogin);
            //var Category = await commonService.Category_get(customers);
            //var yyww = await commonService.WorkWeek_get(customers);

            ViewData["customers"] = customers;
            //ViewData["yyww"] = yyww;
            //ViewData["Category"] = Category;
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Get_partial([FromBody] ActionViewModel model)
        {
            var results = await actionService.Action_get(model);
            return PartialView(results);
        }
        [HttpPost]
        public async Task<IActionResult> Action_export([FromBody] ActionViewModel model)
        {
            var results = await actionService.Action_get(model);
            return Json(new { result = results });
        }
        [HttpPost]
        public async Task<IActionResult> Get_By_ActionId([FromBody] ActionViewModel model)
        {
            var results = await actionService.Action_get(model);
            return Json( new { results = results.FirstOrDefault()});
        }
        [HttpPost]
        public async Task<IActionResult> Action_update([FromBody] ActionViewModel model)
        {
            //if (model.ActionCode == 2)
            //{
            //    SentEmail(model.ActionId, model.CustName, model.Pn, model.Wwyy);
            //}
            var result = await actionService.Action_update(model);
            return Json(new { results = result });
        }



        [HttpPost]
        public async Task<IActionResult> UploadFile(List<IFormFile> files, string date)
        {
            //var uploadFolder = $"{webHostEnvironment.WebRootPath}/media/attachment";
            string uploadFolder =  @"\\"  + configuration["Server"] + @"\eDowntime\Attachment";
            foreach (var file in files)
            {
                string fileName = Path.GetFileName(file.FileName);//get filename
                var newfileName = fileName.Split('.')[0] + "_" + date + "." + fileName.Split('.')[1];

                var fullFilePath = Path.Combine(uploadFolder, newfileName);
                try
                {
                    using (var stream = new FileStream(fullFilePath, FileMode.Create))
                    {
                        await file.CopyToAsync(stream);
                    }
                }
                catch (Exception ex)
                {
                    Console.Write(ex);
                }
                
            }
            return Ok(0);
        }
        public async Task<IActionResult> DownloadFile(string fileName)
        {
            //var path = $"{webHostEnvironment.WebRootPath}/media/attachment/" + fileName;
            string path = @"\\" + configuration["Server"] + @"\eDowntime\Attachment\" + fileName;

            var memory = new MemoryStream();
            using (var stream = new FileStream(path, FileMode.Open))
            {
                await stream.CopyToAsync(memory);
            }
            memory.Position = 0;
            return File(memory, GetContentType(path), Path.GetFileName(path));
        }
        private string GetContentType(string path)
        {
            var types = GetMimeTypes();
            var ext = Path.GetExtension(path).ToLowerInvariant();
            return types[ext];
        }
        private Dictionary<string, string> GetMimeTypes()
        {
            return new Dictionary<string, string>
            {
                {".txt", "text/plain"},
                {".pdf", "application/pdf"},
                {".doc", "application/vnd.ms-word"},
                {".docx", "application/vnd.ms-word"},
                {".xls", "application/vnd.ms-excel"},
                {".xlsx", "application/vnd.openxmlformatsofficedocument.spreadsheetml.sheet"},
                {".png", "image/png"},
                {".jpg", "image/jpeg"},
                {".jpeg", "image/jpeg"},
                {".gif", "image/gif"},
                {".csv", "text/csv"}
            };
        }
    }
}
