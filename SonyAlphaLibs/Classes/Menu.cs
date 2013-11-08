using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SonyAlphaLibs
{
    public class Menu : BaseModel, IBaseFunction<Menu>
    {
        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        private bool isParent;

        public bool IsParent
        {
            get { return isParent; }
            set { isParent = value; }
        }

        private string seoUrl;

        public string SeoUrl
        {
            get { return seoUrl; }
            set { seoUrl = value; }
        }

        private bool isAdmin;

        public bool IsAdmin
        {
            get { return isAdmin; }
            set { isAdmin = value; }
        }

        private bool visible;

        public bool Visible
        {
            get { return visible; }
            set { visible = value; }
        }

        private int order;

        public int Order
        {
            get { return order; }
            set { order = value; }
        }

        public bool add(String connString)
        {
            return false;
        }

        public bool update(String connString)
        {
            return false;
        }

        public bool removeById(String connString)
        {
            return false;
        }

        public List<Menu> getListAll(String connString)
        {
            return new List<Menu>();
        }

        public Menu getById(String connString)
        {
            return new Menu();
        }

        public List<Menu> getListByGroupId(int groupId, String connString)
        {
            return new List<Menu>();
        }
    }
}
