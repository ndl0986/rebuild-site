using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SonyAlphaLibs
{
    public class BannerPhoto : BaseModel
    {
        #region fields
        private int bannerId;

        public int BannerId
        {
            get { return bannerId; }
            set { bannerId = value; }
        }

        private string imageUrl;

        public string ImageUrl
        {
            get { return imageUrl; }
            set { imageUrl = value; }
        }

        private string link2;

        public string Link2
        {
            get { return link2; }
            set { link2 = value; }
        }

        private int sortOrder;

        public int SortOrder
        {
            get { return sortOrder; }
            set { sortOrder = value; }
        }
        
        #endregion        
    }
}
