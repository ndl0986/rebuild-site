using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SonyAlphaLibs
{
    public class AlbumComment : BaseModel
    {
        #region fields
        private string userName;

        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }


        #endregion
    }
}
