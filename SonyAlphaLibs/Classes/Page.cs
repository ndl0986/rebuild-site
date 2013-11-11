using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class Page : BaseModel, IBaseFunction<Page>
    {
        #region fields
        private string title;

        public string Title
        {
            get { return title; }
            set { title = value; }
        }

        private string longTitle;

        public string LongTitle
        {
            get { return longTitle; }
            set { longTitle = value; }
        }

        private string pageContent;

        public string PageContent
        {
            get { return pageContent; }
            set { pageContent = value; }
        }

        private bool isNews;

        public bool IsNews
        {
            get { return isNews; }
            set { isNews = value; }
        }

        private string seoUrl;

        public string SeoUrl
        {
            get { return seoUrl; }
            set { seoUrl = value; }
        }

        private bool status;

        public bool Status
        {
            get { return status; }
            set { status = value; }
        }

        private string creator;

        public string Creator
        {
            get { return creator; }
            set { creator = value; }
        }

        private string updator;

        public string Updator
        {
            get { return updator; }
            set { updator = value; }
        } 
        #endregion

        #region base method
        public bool add(String connString)
        {
            return PageServices.addPage(this, connString);
        }

        public bool update(String connString)
        {
            return PageServices.updatePage(this, connString);
        }

        public List<Page> getListAll(String connString)
        {
            return PageServices.getListAll(connString);
        }

        public bool removeById(String connString)
        {
            return PageServices.removeById(base.Id, connString);
        }

        public Page getById(String connString)
        {
            return PageServices.getById(base.Id, connString);
        }
        #endregion

        #region ex method
        public Page getByName(String connString)
        {
            return PageServices.getByName(this.Title, connString);
        }

        public List<Page> getListPage(int pageNum, int order, String connString)
        {
            return PageServices.getListPage(pageNum, order, connString);
        }

        public List<Page> getListPage(int pageNum, int order, int pageSize, String orderBy, String connString)
        {
            return PageServices.getListPage(pageNum, order, pageSize, orderBy, connString);
        }

        public int getCurrentMaxId(String connString)
        {
            return PageServices.getCurrentMaxId("sony_page", connString);
        }
        #endregion
    }
}
