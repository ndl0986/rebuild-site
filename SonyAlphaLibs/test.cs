using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SonyAlphaLibs
{
    public class test
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

        /// <summary>
        /// Return string that content Id and Name of Object
        /// </summary>
        /// <returns></returns>
        public string getIdName() {
            return this.id + "_" + this.name;
        }
    }
}
