using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class NewsCategory : BaseModel
    {
        #region fields
        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        private string seoUrl;

        public string SeoUrl
        {
            get { return seoUrl; }
            set { seoUrl = value; }
        }

        private string imageUrl;

        public string ImageUrl
        {
            get { return imageUrl; }
            set { imageUrl = value; }
        }
        
        #endregion

        #region base method
        public bool add(String connString)
        {
            return NewsServices.addNewsCategory(this, connString);
        }

        public bool update(String connString)
        {
            return NewsServices.updateNewsCategory(this, connString);
        }

        public bool removeById(String connString)
        {
            return NewsServices.removeNewsCategoryById(base.Id, connString);
        }

        public List<NewsCategory> getListAll(String connString)
        {
            return NewsServices.getListAllNewsCategory(connString);
        }

        public NewsCategory getById(String connString)
        {
            return NewsServices.getNewsCategoryById(base.Id, connString);
        }
        #endregion
    }
}
