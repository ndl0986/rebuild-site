using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SonyAlphaLibs
{
    public class UserSearch : BaseModel
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string FullName { get; set; }
    }
}
