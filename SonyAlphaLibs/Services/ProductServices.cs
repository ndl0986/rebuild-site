using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace SonyAlphaLibs.Services
{
    public class ProductServices : BaseService
    {
        public static bool addProduct(Product product, string connString)
        {
            #region code
            bool rs = false;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_add_product";
                        cmd.Parameters.AddWithValue("@name", product.Name);
                        cmd.Parameters.AddWithValue("@productType", product.ProductType);
                        cmd.Parameters.AddWithValue("@categoryId", product.CategoryId);
                        cmd.Parameters.AddWithValue("@imageUrl", product.ImageUrl);
                        cmd.Parameters.AddWithValue("@shortDesc", product.ShortDesc);
                        cmd.Parameters.AddWithValue("@description", product.Description);
                        cmd.Parameters.AddWithValue("@status", product.Status ? 1 : 0);
                        cmd.Parameters.AddWithValue("@fStop", product.FStop);
                        cmd.Parameters.AddWithValue("@fMax", product.FMax);
                        cmd.Parameters.AddWithValue("@fMin", product.FMin);
                        cmd.Parameters.AddWithValue("@lensDetails", product.LensDetails);
                        cmd.Parameters.AddWithValue("@numOfPiece", product.NumOfPiece);
                        cmd.Parameters.AddWithValue("@minDistance", product.MinDistance);
                        cmd.Parameters.AddWithValue("@maxDistance", product.MaxDistance);
                        cmd.Parameters.AddWithValue("@lensDiameter", product.LensDiameter);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Add Product Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static bool updateProduct(Product product, string connString)
        {
            #region code
            bool rs = false;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_update_product";
                        cmd.Parameters.AddWithValue("@id", product.Id);
                        cmd.Parameters.AddWithValue("@name", product.Name);
                        cmd.Parameters.AddWithValue("@productType", product.ProductType);
                        cmd.Parameters.AddWithValue("@categoryId", product.CategoryId);
                        cmd.Parameters.AddWithValue("@imageUrl", product.ImageUrl);
                        cmd.Parameters.AddWithValue("@shortDesc", product.ShortDesc);
                        cmd.Parameters.AddWithValue("@description", product.Description);
                        cmd.Parameters.AddWithValue("@status", product.Status ? 1 : 0);
                        cmd.Parameters.AddWithValue("@fStop", product.FStop);
                        cmd.Parameters.AddWithValue("@fMax", product.FMax);
                        cmd.Parameters.AddWithValue("@fMin", product.FMin);
                        cmd.Parameters.AddWithValue("@lensDetails", product.LensDetails);
                        cmd.Parameters.AddWithValue("@numOfPiece", product.NumOfPiece);
                        cmd.Parameters.AddWithValue("@minDistance", product.MinDistance);
                        cmd.Parameters.AddWithValue("@maxDistance", product.MaxDistance);
                        cmd.Parameters.AddWithValue("@lensDiameter", product.LensDiameter);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Add Product Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static bool removeById(int id, string connString)
        {
            #region code
            bool rs = false;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_delete_product_by_id";
                        cmd.Parameters.AddWithValue("@id", id);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Delete Product Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static List<Product> getListAll(string connString)
        {
            #region code
            List<Product> lists = new List<Product>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_product";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Product product = new Product();
                                product.Id = (int)reader["id"];
                                product.Name = reader["name"].ToString();
                                product.ProductType = (int)reader["productType"];
                                product.CategoryId = (int)reader["categoryId"];
                                product.ImageUrl = reader["imageUrl"].ToString();
                                product.ShortDesc = reader["shortDesc"].ToString();
                                product.Description = reader["description"].ToString();
                                product.Status = reader["status"].ToString().Equals("1") || reader["status"].ToString().Equals("True");
                                product.FStop = reader["fStop"].ToString();
                                product.FMax = reader["fMax"].ToString();
                                product.FMin = reader["fMin"].ToString();
                                product.LensDetails = reader["lensDetails"].ToString();
                                product.NumOfPiece = reader["numOfPiece"].ToString();
                                product.MinDistance = reader["minDistance"].ToString();
                                product.MaxDistance = reader["maxDistance"].ToString();
                                product.LensDiameter = reader["lensDiameter"].ToString();
                                product.Created = (DateTime)reader["Created"];
                                product.Updated = (DateTime)reader["Updated"];
                                lists.Add(product);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get All Product Error: " + ex.Message, connString);
                    return new List<Product>();
                }
            }
            return lists;
            #endregion
        }

        public static Product getById(int id, string connString)
        {
            #region code
            Product product = new Product();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_product_by_id";
                        cmd.Parameters.AddWithValue("@productId", id);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                product.Id = (int)reader["id"];
                                product.Name = reader["name"].ToString();
                                product.ProductType = (int)reader["productType"];
                                product.CategoryId = (int)reader["categoryId"];
                                product.ImageUrl = reader["imageUrl"].ToString();
                                product.ShortDesc = reader["shortDesc"].ToString();
                                product.Description = reader["description"].ToString();
                                product.Status = reader["status"].ToString().Equals("1") || reader["status"].ToString().Equals("True");
                                product.FStop = reader["fStop"].ToString();
                                product.FMax = reader["fMax"].ToString();
                                product.FMin = reader["fMin"].ToString();
                                product.LensDetails = reader["lensDetails"].ToString();
                                product.NumOfPiece = reader["numOfPiece"].ToString();
                                product.MinDistance = reader["minDistance"].ToString();
                                product.MaxDistance = reader["maxDistance"].ToString();
                                product.LensDiameter = reader["lensDiameter"].ToString();
                                product.Created = (DateTime)reader["Created"];
                                product.Updated = (DateTime)reader["Updated"];
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get Product Error: " + ex.Message, connString);
                    return new Product();
                }
            }
            return product;
            #endregion
        }

        public static bool addProductCategory(ProductCategory productCategory, string connString)
        {
            #region code
            bool rs = false;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_add_product_category";
                        cmd.Parameters.AddWithValue("@name", productCategory.Name);
                        cmd.Parameters.AddWithValue("@albumId", productCategory.AlbumId);
                        cmd.Parameters.AddWithValue("@parentId", productCategory.ParentId);
                        cmd.Parameters.AddWithValue("@description", productCategory.Description);
                        cmd.Parameters.AddWithValue("@seoUrl", productCategory.SeoUrl);
                        cmd.Parameters.AddWithValue("@coverphoto", productCategory.CoverPhoto);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Add Product Category Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static bool updateProductCategory(ProductCategory productCategory, string connString)
        {
            #region code
            bool rs = false;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_update_product_category";
                        cmd.Parameters.AddWithValue("@id", productCategory.Id);
                        cmd.Parameters.AddWithValue("@name", productCategory.Name);
                        cmd.Parameters.AddWithValue("@albumId", productCategory.AlbumId);
                        cmd.Parameters.AddWithValue("@parentId", productCategory.ParentId);
                        cmd.Parameters.AddWithValue("@description", productCategory.Description);
                        cmd.Parameters.AddWithValue("@seoUrl", productCategory.SeoUrl);
                        cmd.Parameters.AddWithValue("@coverphoto", productCategory.CoverPhoto);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Update Product Category Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static bool removeProductCategoryById(int id, string connString)
        {
            #region code
            bool rs = false;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_delete_product_category_by_id";
                        cmd.Parameters.AddWithValue("@id", id);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Delete Product Category Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static List<ProductCategory> getListAllProductCategory(string connString)
        {
            #region code
            List<ProductCategory> lists = new List<ProductCategory>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_product_category";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                ProductCategory productCategory = new ProductCategory();
                                productCategory.Id = (int)reader["id"];
                                productCategory.Name = reader["name"].ToString();
                                productCategory.AlbumId = String.IsNullOrEmpty(reader["albumId"].ToString()) ? 0 : (int)reader["albumId"];
                                productCategory.ParentId = (int)reader["parentId"];
                                productCategory.Description = reader["description"].ToString();
                                productCategory.SeoUrl = reader["seoUrl"].ToString();
                                productCategory.CoverPhoto = reader["coverphoto"].ToString();
                                productCategory.Created = (DateTime)reader["Created"];
                                productCategory.Updated = (DateTime)reader["Updated"];
                                lists.Add(productCategory);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get All Product Category Error: " + ex.Message, connString);
                    return new List<ProductCategory>();
                }
            }
            return lists;
            #endregion
        }

        public static ProductCategory getProductCategoryById(int p, string connString)
        {            
            #region code
            ProductCategory productCategory = new ProductCategory();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_product_category_by_id";
                        cmd.Parameters.AddWithValue("@id", p);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {                                
                                productCategory.Id = (int)reader["id"];
                                productCategory.Name = reader["name"].ToString();
                                productCategory.AlbumId = String.IsNullOrEmpty(reader["albumId"].ToString()) ? 0 : (int)reader["albumId"];
                                productCategory.ParentId = (int)reader["parentId"];
                                productCategory.Description = reader["description"].ToString();
                                productCategory.SeoUrl = reader["seoUrl"].ToString();
                                productCategory.CoverPhoto = reader["coverphoto"].ToString();
                                productCategory.Created = (DateTime)reader["Created"];
                                productCategory.Updated = (DateTime)reader["Updated"];
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get Product Category Error: " + ex.Message, connString);
                    return new ProductCategory();
                }
            }
            return productCategory;
            #endregion
        }

        public static List<Product> getListProductByCategoryId(int categoryId, string connString)
        {
            #region code
            List<Product> lists = new List<Product>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_product_by_category";
                        cmd.Parameters.AddWithValue("@categoryId", categoryId);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Product product = new Product();
                                product.Id = (int)reader["id"];
                                product.Name = reader["name"].ToString();
                                product.ProductType = (int)reader["productType"];
                                product.CategoryId = (int)reader["categoryId"];
                                product.ImageUrl = reader["imageUrl"].ToString();
                                product.ShortDesc = reader["shortDesc"].ToString();
                                product.Description = reader["description"].ToString();
                                product.Status = reader["status"].ToString().Equals("1") || reader["status"].ToString().Equals("True");
                                product.FStop = reader["fStop"].ToString();
                                product.FMax = reader["fMax"].ToString();
                                product.FMin = reader["fMin"].ToString();
                                product.LensDetails = reader["lensDetails"].ToString();
                                product.NumOfPiece = reader["numOfPiece"].ToString();
                                product.MinDistance = reader["minDistance"].ToString();
                                product.MaxDistance = reader["maxDistance"].ToString();
                                product.LensDiameter = reader["lensDiameter"].ToString();
                                product.Created = (DateTime)reader["Created"];
                                product.Updated = (DateTime)reader["Updated"];
                                lists.Add(product);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get All Product Error: " + ex.Message, connString);
                    return new List<Product>();
                }
            }
            return lists;
            #endregion
        }

        public static List<ProductCategory> getListAllProductCategoryChild(int parentCategoryid, string connString)
        {
            #region code
            List<ProductCategory> lists = new List<ProductCategory>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_product_category_child";
                        cmd.Parameters.AddWithValue("@productCategoryId", parentCategoryid);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                ProductCategory productCategory = new ProductCategory();
                                productCategory.Id = (int)reader["id"];
                                productCategory.Name = reader["name"].ToString();
                                productCategory.AlbumId = String.IsNullOrEmpty(reader["albumId"].ToString()) ? 0 : (int)reader["albumId"];
                                productCategory.ParentId = (int)reader["parentId"];
                                productCategory.Description = reader["description"].ToString();
                                productCategory.SeoUrl = reader["seoUrl"].ToString();
                                productCategory.CoverPhoto = reader["coverphoto"].ToString();
                                productCategory.Created = (DateTime)reader["Created"];
                                productCategory.Updated = (DateTime)reader["Updated"];
                                lists.Add(productCategory);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get All Product Category Error: " + ex.Message, connString);
                    return new List<ProductCategory>();
                }
            }
            return lists;
            #endregion
        }
    }
}
