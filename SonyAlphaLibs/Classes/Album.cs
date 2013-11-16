using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class Album : BaseModel
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
        
        #endregion

        #region base method
        public bool add(String connString)
        {
            return AlbumServices.addAlbum(this, connString);
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
            return AlbumServices.getById(base.Id, connString);
        }
        #endregion

        #region ext method
        public List<Photo> getPhotoOfAlbum(String connString)
        {
            return AlbumServices.getPhotoOfAlbum(base.Id, connString);
        }

        public bool setPhoto2Album(Photo photo, String connString)
        {
            return setPhoto2Album(photo.Id, connString);
        }

        public bool setPhoto2Album(List<Photo> listPhotos, String connString)
        {
            return AlbumServices.setPhoto2Album(listPhotos, connString);
        }

        public bool setPhoto2Album(int photoId, String connString)
        {
            return AlbumServices.setPhoto2Album(photoId, connString);
        }

        //public bool setComment2AlbumPhoto(
        #endregion
    }
}
