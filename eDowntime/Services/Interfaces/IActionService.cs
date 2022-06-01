﻿using SharedObjects.Common;
using SharedObjects.ValueObjects;
using SharedObjects.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services.Interfaces
{
   public interface IActionService
    {
        Task<List<VAction>> Action_get(ActionViewModel model);
        Task<ResponseResult> Action_update(ActionViewModel model);

    }
}
