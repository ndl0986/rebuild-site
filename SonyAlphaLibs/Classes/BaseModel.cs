using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SonyAlphaLibs
{
    public abstract class BaseModel
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        private DateTime created;

        public DateTime Created
        {
            get { return created; }
            set { created = value; }
        }

        private DateTime updated;

        public DateTime Updated
        {
            get { return updated; }
            set { updated = value; }
        }
        
        
    }
}
