using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class Album : BaseModel, IBaseFunction<Album>
    {
        #region fields
        private string fullName;

        public string FullName
        {
            get { return fullName; }
            set { fullName = value; }
        }

        private string albumCreator;

        public string AlbumCreator
        {
            get { return albumCreator; }
            set { albumCreator = value; }
        }

        private string albumImage;

        public string AlbumImage
        {
            get { return albumImage; }
            set { albumImage = value; }
        }

        private int viewCound;

        public int ViewCount
        {
            get { return viewCound; }
            set { viewCound = value; }
        }

        private bool isForCenter;

        public bool IsForCenter
        {
            get { return isForCenter; }
            set { isForCenter = value; }
        }
        
        private List<Photo> listPhotos;

        public List<Photo> ListPhotos
        {
            get { return listPhotos; }
            set { listPhotos = value; }
        }
        
        #endregion

        #region base method
        public bool add(String connString)
        {
            return AlbumServices.addAlbum(this, connString);
        }

        public bool add()
        {
            return AlbumServices.addAlbum(this, base.ConnString);
        }

        public bool update(String connString)
        {
            return AlbumServices.updateAlbum(this, connString);
        }

        public bool removeById(String connString)
        {
            return AlbumServices.removeById(base.Id, connString);
        }

        public List<Album> getListAll(String connString)
        {
            return AlbumServices.getListAll(connString);
        }

        public Album getById(String connString)
        {
            Album album = AlbumServices.getById(base.Id, connString);
            album.ListPhotos = AlbumServices.getPhotoOfAlbum(album.AlbumImage, connString);
            return album;
        }
        #endregion

        #region ext method
        public List<Photo> getPhotoOfAlbum(String connString)
        {
            return AlbumServices.getPhotoOfAlbum(this.albumImage, connString);
        }

        public bool setPhoto2Album(Photo photo, String connString)
        {
            return setPhoto2Album(base.Id, photo.Id, connString);
        }

        public bool setPhoto2Album(List<Photo> listPhotos, String connString)
        {
            return AlbumServices.setPhoto2Album(base.Id, listPhotos, connString);
        }

        private bool setPhoto2Album(int albumId, int photoId, String connString)
        {
            return AlbumServices.setPhoto2Album(albumId, photoId, connString);
        }

        public bool setComment2AlbumPhoto(AlbumComment albumComment, String connString)
        {
            return AlbumServices.setComment2Album(albumComment, connString);
        }

        public List<AlbumComment> getCommentOfAlbumPhoto(int photoId, String connString)
        {
            return AlbumServices.getListCommentOfAlbum(base.Id, photoId, connString);
        }

        public int getViewCount(String connString)
        {
            return AlbumServices.getViewCount(base.Id, connString);
        }

        public int increaseView(String connString)
        {
            return AlbumServices.increaseView(base.Id, connString);
        }

        public int getCurrentMaxId(String connString)
        {
            return AlbumServices.getCurrentMaxId("sony_album", connString);
        }
        #endregion

        #region constructor
        public Album() { }

        public Album(String connString)
        {
            base.ConnString = connString;
        }
        #endregion
    }
}
