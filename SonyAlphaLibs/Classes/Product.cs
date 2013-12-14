using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class Product : BaseModel, IBaseFunction<Product>
    {
        #region fields
        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        private int productType;

        public int ProductType
        {
            get { return productType; }
            set { productType = value; }
        }

        private int categoryId;

        public int CategoryId
        {
            get { return categoryId; }
            set { categoryId = value; }
        }

        private string imageUrl;

        public string ImageUrl
        {
            get { return imageUrl; }
            set { imageUrl = value; }
        }

        private string shortDesc;

        public string ShortDesc
        {
            get { return shortDesc; }
            set { shortDesc = value; }
        }

        private string description;

        public string Description
        {
            get { return description; }
            set { description = value; }
        }

        private bool status;

        public bool Status
        {
            get { return status; }
            set { status = value; }
        }

        private string fStop;

        public string FStop
        {
            get { return fStop; }
            set { fStop = value; }
        }

        private string fMax;

        public string FMax
        {
            get { return fMax; }
            set { fMax = value; }
        }

        private string fMin;

        public string FMin
        {
            get { return fMin; }
            set { fMin = value; }
        }

        private string lensDetails;

        public string LensDetails
        {
            get { return lensDetails; }
            set { lensDetails = value; }
        }

        /// <summary>
        /// so la khau
        /// </summary>
        private string numOfPiece;

        public string NumOfPiece
        {
            get { return numOfPiece; }
            set { numOfPiece = value; }
        }

        private string minDistance;

        public string MinDistance
        {
            get { return minDistance; }
            set { minDistance = value; }
        }

        private string maxDistance;

        public string MaxDistance
        {
            get { return maxDistance; }
            set { maxDistance = value; }
        }

        /// <summary>
        /// Duong kinh ong kinh
        /// </summary>
        private string lensDiameter;

        public string LensDiameter
        {
            get { return lensDiameter; }
            set { lensDiameter = value; }
        }

        private List<String> listPhotoUrls;

        public List<String> ListPhotoUrls
        {
            get { return listPhotoUrls; }
            set { listPhotoUrls = value; }
        }

        private string price;

        public string Price
        {
            get { return price; }
            set { price = value; }
        }

        private int albumId;

        public int AlbumId
        {
            get { return albumId; }
            set { albumId = value; }
        }

        public string ProductCover { get; set; }
        
        #endregion

        #region base method
        public bool add(String connString)
        {
            return ProductServices.addProduct(this, connString);
        }

        public bool update(String connString)
        {
            return ProductServices.updateProduct(this, connString);
        }

        public bool removeById(String connString)
        {
            return ProductServices.removeById(base.Id, connString);
        }

        public List<Product> getListAll(String connString)
        {
            return ProductServices.getListAll(connString);
        }

        public List<Product> getListByCategory(int categoryId, String connString)
        {
            return ProductServices.getListProductByCategoryId(categoryId,connString);
        }

        public Product getById(String connString)
        {
            return ProductServices.getById(base.Id, connString);
        }
        #endregion

        #region ext method
        public bool setPhoto2Product(String connString)
        {
            return PhotoServices.setPhoto2Product(base.Id, this.listPhotoUrls, connString);
        }

        public List<String> getPhotoOfProduct(String connString)
        {
            return PhotoServices.getPhotoOfProduct(base.Id, connString);
        }
        #endregion

        #region constructor
        public Product() { }

        public Product(String connString)
        {
            base.ConnString = connString;
        }
        #endregion
    }
}
