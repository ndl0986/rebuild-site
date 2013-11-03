using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SonyAlphaLibs
{
    public class example
    {
        private int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public string getIdName() {
            return id.ToString() + "_" + name;
        }
    }
}
