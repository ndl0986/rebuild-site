using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class AlbumComment : BaseModel, IBaseFunction<AlbumComment>
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

        #region base method
        public bool add(string connString)
        {
            return AlbumServices.SetComment2Album(this, connString);
        }

        public bool update(string connString)
        {
            //return AlbumServices.updateComment(this, connString);
            return false;
        }

        public List<AlbumComment> getListAll(string connString)
        {
            return AlbumServices.GetListComment(connString);
        }

        public AlbumComment getById(string connString)
        { 
            //return AlbumServices.getAlbumComment(base.Id, connString);
            return new AlbumComment();
        }

        public bool removeById(string connString)
        {
            return AlbumServices.RemoveCommentById(base.Id, connString);
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
