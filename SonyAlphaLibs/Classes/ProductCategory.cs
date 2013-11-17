using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class ProductCategory : BaseModel, IBaseFunction<ProductCategory>
    {
        #region fields
        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        private string imageUrl;

        public string ImageUrl
        {
            get { return imageUrl; }
            set { imageUrl = value; }
        }

        private int parentId;

        public int ParentId
        {
            get { return parentId; }
            set { parentId = value; }
        }

        private string description;

        public string Description
        {
            get { return description; }
            set { description = value; }
        }

        private string seoUrl;

        public string SeoUrl
        {
            get { return seoUrl; }
            set { seoUrl = value; }
        }

        #endregion

        #region base method
        public bool add(String connString)
        {
            return ProductServices.addProductCategory(this, connString);
        }

        public bool update(String connString)
        {
            return ProductServices.updateProductCategory(this, connString);
        }

        public bool removeById(String connString)
        {
            return ProductServices.removeProductCategoryById(base.Id, connString);
        }

        public List<ProductCategory> getListAll(String connString)
        {
            return ProductServices.getListAllProductCategory(connString);
        }

        public ProductCategory getById(String connString)
        {
            return ProductServices.getProductCategoryById(base.Id, connString);
        }
        #endregion
    }
}
