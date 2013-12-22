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

        private int albumType;

        public int AlbumType
        {
            get { return albumType; }
            set { albumType = value; }
        }

        private string albumCover;

        public string AlbumCover
        {
            get { return albumCover; }
            set { albumCover = value; }
        }
        
        
        private List<Photo> listPhotos;

        public List<Photo> ListPhotos
        {
            get { return listPhotos; }
            set { listPhotos = value; }
        }

        public int TotalPhoto { get; set; }
        #endregion

        #region base method
        public bool add(String connString)
        {
            return AlbumServices.AddAlbum(this, connString);
        }

        public bool add()
        {
            return AlbumServices.AddAlbum(this, base.ConnString);
        }

        public bool update(String connString)
        {
            return AlbumServices.UpdateAlbum(this, connString);
        }

        public bool removeById(String connString)
        {
            return AlbumServices.RemoveById(base.Id, connString);
        }

        public List<Album> getListAll(String connString)
        {
            return AlbumServices.GetListAll(connString);
        }

        public List<Album> getListNormal(String connString) {
            return AlbumServices.GetListAllNormalAlbum(connString);
        }

        public List<Album> getListTypeCenter(String connString) {
            return AlbumServices.GetListAllAlbumForCenter(connString);
        }

        public List<Album> getListTypeProduct(String connString)
        {
            return AlbumServices.GetListAllAlbumForProductCategory(connString);
        }

        public Album getById(String connString)
        {
            Album album = AlbumServices.GetById(base.Id, connString);
            album.ListPhotos = AlbumServices.GetPhotoOfAlbum(album.AlbumImage, connString);
            return album;
        }
        #endregion

        #region ext method
        public List<Photo> getPhotoOfAlbum(String connString)
        {
            return AlbumServices.GetPhotoOfAlbum(this.albumImage, connString);
        }

        public bool setPhoto2Album(Photo photo, String connString)
        {
            return setPhoto2Album(base.Id, photo.Id, connString);
        }

        public bool setPhoto2Album(List<Photo> listPhotos, String connString)
        {
            return AlbumServices.SetPhoto2Album(base.Id, listPhotos, connString);
        }

        private bool setPhoto2Album(int albumId, int photoId, String connString)
        {
            return AlbumServices.SetPhoto2Album(albumId, photoId, connString);
        }

        public bool setComment2AlbumPhoto(AlbumComment albumComment, String connString)
        {
            return AlbumServices.SetComment2Album(albumComment, connString);
        }

        public List<AlbumComment> getCommentOfAlbumPhoto(int photoId, String connString)
        {
            return AlbumServices.GetListCommentOfAlbum(base.Id, photoId, connString);
        }

        public int getViewCount(String connString)
        {
            return AlbumServices.GetViewCount(base.Id, connString);
        }

        public int increaseView(String connString)
        {
            return AlbumServices.IncreaseView(base.Id, connString);
        }

        public int getCurrentMaxId(String connString)
        {
            return AlbumServices.GetCurrentMaxId("sony_album", connString);
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
