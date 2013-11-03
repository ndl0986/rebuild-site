using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SonyAlphaLibs
{
    public abstract class BaseModel
    {
        private string connectionString;

        public string ConnnectionString
        {
            get { return connectionString; }
            set { connectionString = value; }
        }
        
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

        public BaseModel() {
            id = 0;
            created = DateTime.Now;
            updated = DateTime.Now;
            connectionString = "";
        }

        public BaseModel(string connString) {
            id = 0;
            created = DateTime.Now;
            updated = DateTime.Now;
            connectionString = connString;
        }
    }
}
