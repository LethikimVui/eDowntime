using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SharedObjects.StoredProcedure
{
   public class SPAction
    {
        public static string Action_get = "usp_Action_get @p0,@p1,@p2,@p3";
        public static string Acton_update = "usp_Acton_update @p0,@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10";

    }
}
