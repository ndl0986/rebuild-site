using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class PageBanner : BaseModel
    {
        #region fields
        public Menu Page { get; set; }
        public List<Banner> ListBanner { get; set; }
        private int intPageId;

        public int PageId
        {
            get { return intPageId; }
            set { intPageId = value; }
        }

        private int intBannerId;

        public int BannerId
        {
            get { return intBannerId; }
            set { intBannerId = value; }
        }
        #endregion

        #region constructor
        public PageBanner()
        {
            this.Page = new Menu();
            this.ListBanner = new List<Banner>();
        }

        public PageBanner(int pageId, string connString)
        {
            Page.Id = pageId;
            base.ConnString = connString;
            Page = MenuServices.getById(pageId, connString);
            ListBanner = MenuServices.getListBanner(pageId, connString);
        }

        public PageBanner(string connString)
        {
            base.ConnString = connString;
        }

        public PageBanner getById(String connString)
        {
            return MenuServices.getPageBannerById(base.Id, connString);
        }

        public bool removeById(String connString)
        {
            return MenuServices.removePageBannerById(base.Id, connString);
        }

        public List<PageBanner> getAllMenuBanner(String connString)
        {
            return MenuServices.getAllListMenuBanner(connString);
        }
        #endregion
    }
}
