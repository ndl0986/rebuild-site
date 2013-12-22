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
        private int parentId;

        public int ParentId
        {
            get { return parentId; }
            set { parentId = value; }
        }
        
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

        public int getCurrentMaxId(String connString)
        {
            return NewsServices.GetCurrentMaxId("sony_news_category", connString);
        }

        public List<NewsCategory> getListNewsSameParent(String connString)
        {
            return NewsServices.getListNewSameParent(this.ParentId, connString);
        }

        public List<NewsCategory> getListChild(String connString)
        {
            return NewsServices.getListCategoryChild(base.Id, connString);
        }
    }
}
