using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class Menu : BaseModel, IBaseFunction<Menu>
    {
        #region fields
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

        private int parentId;

        public int ParentId
        {
            get { return parentId; }
            set { parentId = value; }
        } 
        #endregion


        #region base method
        public bool add(String connString)
        {
            return MenuServices.addMenu(this, connString);
        }

        public bool update(String connString)
        {
            return MenuServices.updateMenu(this, connString);
        }

        public bool removeById(String connString)
        {
            return MenuServices.removeById(this.Id, connString);
        }

        public List<Menu> getListAll(String connString)
        {
            return MenuServices.getListAll(connString);
        }

        public Menu getById(String connString)
        {
            return MenuServices.getById(this.Id, connString);
        }

        public int getBannerId(String connString)
        {
            return MenuServices.getBannerId(base.Id, connString);
        }

        public bool setBanner2Page(int bannerId, String connString)
        {
            return MenuServices.setBanner2Menu(base.Id, bannerId, connString);
        }

        public List<int> getListBannerId(String connString)
        {
            return MenuServices.getListBannerId(base.Id, connString);
        }

        #endregion

       #region constructor
        public Menu() { }

        public Menu(String connString)
        {
            base.ConnString = connString;
        }
        #endregion
    }
}
