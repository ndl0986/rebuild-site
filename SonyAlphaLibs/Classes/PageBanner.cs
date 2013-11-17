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
        public Page Page { get; set; }
        public List<Banner> ListBanner { get; set; }
        #endregion

        #region constructor
        public PageBanner()
        {
            this.Page = new Page();
            this.ListBanner = new List<Banner>();
        }

        public PageBanner(int pageId, string connString)
        {
            Page.Id = pageId;
            base.ConnString = connString;
            Page = PageServices.getById(pageId, connString);
            ListBanner = PageServices.getListBanner(pageId, connString);
        }

        public PageBanner(string connString)
        {
            base.ConnString = connString;
        }
        #endregion
    }
}
