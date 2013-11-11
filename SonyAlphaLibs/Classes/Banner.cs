using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class Banner : BaseModel, IBaseFunction<Banner>
    {
        #region fields
        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        private bool visible;

        public bool Visible
        {
            get { return visible; }
            set { visible = value; }
        }

        private int bannerType;

        public int BannerType
        {
            get { return bannerType; }
            set { bannerType = value; }
        }

        #endregion

        #region base method
        public bool add(String connString)
        {
            return BannerServices.addBanner(this, connString);
        }

        public bool update(String connString)
        {
            return BannerServices.updateBanner(this, connString);
        }

        public bool removeById(String connString)
        {
            return BannerServices.removeById(base.Id, connString);
        }

        public List<Banner> getListAll(String connString)
        {
            return BannerServices.getListAll(connString);
        }

        public Banner getById(String connString)
        {
            return BannerServices.getById(base.Id, connString);
        }
        #endregion
    }
}
