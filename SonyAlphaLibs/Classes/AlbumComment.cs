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

        private int albumId;

        public int AlbumId
        {
            get { return albumId; }
            set { albumId = value; }
        }

        private int photoId;

        public int PhotoId
        {
            get { return photoId; }
            set { photoId = value; }
        }

        private bool status;

        public bool Status
        {
            get { return status; }
            set { status = value; }
        }

        private string comment;

        public string Comment
        {
            get { return comment; }
            set { comment = value; }
        }
        
        #endregion

        #region constructor
        public AlbumComment() { }

        public AlbumComment(String connString)
        {
            base.ConnString = connString;
        }
        #endregion
    }
}
