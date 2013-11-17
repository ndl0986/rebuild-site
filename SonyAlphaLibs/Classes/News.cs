using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class News : BaseModel, IBaseFunction<News>
    {
        #region fields
        private string title;

        public string Title
        {
            get { return title; }
            set { title = value; }
        }

        private string seoUrl;

        public string SeoUrl
        {
            get { return seoUrl; }
            set { seoUrl = value; }
        }

        private string detail;

        public string Detail
        {
            get { return detail; }
            set { detail = value; }
        }

        private int categoryId;

        public int CategoryId
        {
            get { return categoryId; }
            set { categoryId = value; }
        }

        private bool published;

        public bool Published
        {
            get { return published; }
            set { published = value; }
        }

        private string metaTag;

        public string MetaTag
        {
            get { return metaTag; }
            set { metaTag = value; }
        }

        private string metaTitle;

        public string MetaTitle
        {
            get { return metaTitle; }
            set { metaTitle = value; }
        }

        private string metaKeyword;

        public string MetaKeyWord
        {
            get { return metaKeyword; }
            set { metaKeyword = value; }
        }

        private int viewCount;

        public int ViewCount
        {
            get { return viewCount; }
            set { viewCount = value; }
        }

        private int likeCount;

        public int LikeCount
        {
            get { return likeCount; }
            set { likeCount = value; }
        }

        private string newsImage;

        public string NewsImage
        {
            get { return newsImage; }
            set { newsImage = value; }
        }

        private string relatedNewsIds;

        public string RelatedNewsIds
        {
            get { return relatedNewsIds; }
            set { relatedNewsIds = value; }
        }

        #endregion

        #region base method
        public bool add(String connString)
        {
            return NewsServices.addNews(this, connString);
        }

        public bool update(String connString)
        {
            return NewsServices.updateNews(this, connString);
        }

        public bool removeById(String connString)
        {
            return NewsServices.removeById(base.Id, connString);
        }

        public List<News> getListAll(String connString)
        {
            return NewsServices.getListAll(connString);
        }

        public News getById(String connString)
        {
            return NewsServices.getById(base.Id, connString);
        }
        #endregion

        #region ext method
        public NewsCategory getCategoryInfo(String connString)
        {
            return NewsServices.getNewsCategoryById(this.CategoryId, connString);
        }
        #endregion

        #region constructor
        public News() { }

        public News(String connString)
        {
            base.ConnString = connString;
        }
        #endregion
    }
}
