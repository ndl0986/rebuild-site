using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace SonyAlphaLibs.Services
{
    public class NewsServices : BaseService
    {

        public static bool addNews(News news, string connString)
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
                        cmd.CommandText = "sony_sp_add_news";
                        cmd.Parameters.AddWithValue("@title", news.Title);
                        cmd.Parameters.AddWithValue("@seoUrl", news.SeoUrl);
                        cmd.Parameters.AddWithValue("@detail", news.Detail);
                        cmd.Parameters.AddWithValue("@description", news.Description);
                        cmd.Parameters.AddWithValue("@categoryId", news.CategoryId);
                        cmd.Parameters.AddWithValue("@published", news.Published);
                        cmd.Parameters.AddWithValue("@metaTag", news.MetaTag);
                        cmd.Parameters.AddWithValue("@metaTitle", news.MetaTitle);
                        cmd.Parameters.AddWithValue("@metaKeyword", news.MetaKeyWord);
                        cmd.Parameters.AddWithValue("@viewCount", news.ViewCount);
                        cmd.Parameters.AddWithValue("@likeCount", news.LikeCount);
                        cmd.Parameters.AddWithValue("@newsImage", news.NewsImage);
                        cmd.Parameters.AddWithValue("@relatedNewsIds", news.RelatedNewsIds);
                        
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static bool updateNews(News news, string connString)
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
                        cmd.CommandText = "sony_sp_update_news";
                        cmd.Parameters.AddWithValue("@id", news.Id);
                        cmd.Parameters.AddWithValue("@title", news.Title);
                        cmd.Parameters.AddWithValue("@seoUrl", news.SeoUrl);
                        cmd.Parameters.AddWithValue("@detail", news.Detail);
                        cmd.Parameters.AddWithValue("@description", news.Description);
                        cmd.Parameters.AddWithValue("@categoryId", news.CategoryId);
                        cmd.Parameters.AddWithValue("@published", news.Published);
                        cmd.Parameters.AddWithValue("@metaTag", news.MetaTag);
                        cmd.Parameters.AddWithValue("@metaTitle", news.MetaTitle);
                        cmd.Parameters.AddWithValue("@metaKeyword", news.MetaKeyWord);
                        cmd.Parameters.AddWithValue("@viewCount", news.ViewCount);
                        cmd.Parameters.AddWithValue("@likeCount", news.LikeCount);
                        cmd.Parameters.AddWithValue("@newsImage", news.NewsImage);
                        cmd.Parameters.AddWithValue("@relatedNewsIds", news.RelatedNewsIds);

                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
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
                        cmd.CommandText = "sony_sp_delete_news_by_id";
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
                    writeLog("", "Delete News Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static List<News> getListAll(string connString)
        {
            #region code
            List<News> lists = new List<News>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_news";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                News news = new News();
                                news.Id = (int)reader["id"];
                                news.Title = reader["title"].ToString();
                                news.SeoUrl = reader["seoUrl"].ToString();
                                news.Detail = reader["detail"].ToString();
                                news.Description = reader["description"].ToString();
                                news.CategoryId = (int)reader["categoryId"];
                                news.Published = reader["published"].ToString().Equals("1") || reader["published"].ToString().Equals("True");
                                news.MetaTag = reader["metaTag"].ToString();
                                news.MetaTitle = reader["metaTitle"].ToString();
                                news.MetaKeyWord = reader["metaKeyword"].ToString();
                                news.ViewCount = (int)reader["viewCount"];
                                news.LikeCount = (int)reader["likeCount"];
                                news.NewsImage = reader["newsImage"].ToString();
                                news.RelatedNewsIds = reader["relatedNewsIds"].ToString();                                
                                news.Created = (DateTime)reader["created"];
                                news.Updated = (DateTime)reader["updated"];
                                lists.Add(news);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new List<News>();
                }
            }
            return lists;
            #endregion
        }

        public static News getById(int id, string connString)
        {
            #region code
            News news = new News();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_news_by_id";
                        cmd.Parameters.AddWithValue("@id", id);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                news.Id = (int)reader["id"];
                                news.Title = reader["title"].ToString();
                                news.SeoUrl = reader["seoUrl"].ToString();
                                news.Detail = reader["detail"].ToString();
                                news.Description = reader["description"].ToString();
                                news.CategoryId = (int)reader["categoryId"];
                                news.Published = reader["published"].ToString().Equals("1") || reader["published"].ToString().Equals("True");
                                news.MetaTag = reader["metaTag"].ToString();
                                news.MetaTitle = reader["metaTitle"].ToString();
                                news.MetaKeyWord = reader["metaKeyword"].ToString();
                                news.ViewCount = (int)reader["viewCount"];
                                news.LikeCount = (int)reader["likeCount"];
                                news.NewsImage = reader["newsImage"].ToString();
                                news.RelatedNewsIds = reader["relatedNewsIds"].ToString();
                                news.Created = (DateTime)reader["created"];
                                news.Updated = (DateTime)reader["updated"];
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new News();
                }
            }
            return news;
            #endregion
        }

        public static NewsCategory getNewsCategoryById(int categoryId, string connString)
        {
            #region code
            NewsCategory newsCategory = new NewsCategory();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_news_category_by_id";
                        cmd.Parameters.AddWithValue("@id", categoryId);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                newsCategory.Id = (int)reader["id"];
                                newsCategory.Name = reader["name"].ToString();
                                newsCategory.SeoUrl = reader["seoUrl"].ToString();
                                newsCategory.ImageUrl = reader["imageUrl"].ToString();
                                newsCategory.Created = (DateTime)reader["created"];
                                newsCategory.Updated = (DateTime)reader["updated"];
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new NewsCategory();
                }
            }
            return newsCategory;
            #endregion
        }

        public static bool addNewsCategory(NewsCategory newsCategory, string connString)
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
                        cmd.CommandText = "sony_sp_add_news_category";
                        cmd.Parameters.AddWithValue("@name", newsCategory.Name);
                        cmd.Parameters.AddWithValue("@seoUrl", newsCategory.SeoUrl);
                        cmd.Parameters.AddWithValue("@imageUrl", newsCategory.ImageUrl);
                        cmd.Parameters.AddWithValue("@parentId", newsCategory.ParentId);

                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static bool updateNewsCategory(NewsCategory newsCategory, string connString)
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
                        cmd.CommandText = "sony_sp_update_news_category";
                        cmd.Parameters.AddWithValue("@id", newsCategory.Id);
                        cmd.Parameters.AddWithValue("@name", newsCategory.Name);
                        cmd.Parameters.AddWithValue("@seoUrl", newsCategory.SeoUrl);
                        cmd.Parameters.AddWithValue("@imageUrl", newsCategory.ImageUrl);
                        cmd.Parameters.AddWithValue("@parentId", newsCategory.ParentId);

                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static bool removeNewsCategoryById(int id, string connString)
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
                        cmd.CommandText = "sony_sp_delete_news_category_by_id";
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
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static List<NewsCategory> getListAllNewsCategory(string connString)
        {
            #region code
            List<NewsCategory> lists = new List<NewsCategory>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_category";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                NewsCategory newsCategory = new NewsCategory();
                                newsCategory.Id = (int)reader["id"];
                                newsCategory.Name = reader["name"].ToString();
                                newsCategory.SeoUrl = reader["seoUrl"].ToString();
                                newsCategory.ImageUrl = reader["imageUrl"].ToString();
                                newsCategory.ParentId = (int)reader["parentId"];
                                newsCategory.Created = (DateTime)reader["created"];
                                newsCategory.Updated = (DateTime)reader["updated"];
                                lists.Add(newsCategory);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new List<NewsCategory>();
                }
            }
            return lists;
            #endregion
        }

        public static List<NewsCategory> getListNewSameParent(int p, string connString)
        {
            #region code
            List<NewsCategory> lists = new List<NewsCategory>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_category_same_parent";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                NewsCategory newsCategory = new NewsCategory();
                                newsCategory.Id = (int)reader["id"];
                                newsCategory.Name = reader["name"].ToString();
                                newsCategory.SeoUrl = reader["seoUrl"].ToString();
                                newsCategory.ImageUrl = reader["imageUrl"].ToString();
                                newsCategory.ParentId = (int)reader["parentId"];
                                newsCategory.Created = (DateTime)reader["created"];
                                newsCategory.Updated = (DateTime)reader["updated"];
                                lists.Add(newsCategory);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new List<NewsCategory>();
                }
            }
            return lists;
            #endregion
        }

        public static List<News> getListNewsByCategory(int categoryId, string connString)
        {
            #region code
            List<News> lists = new List<News>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_news_by_category_id";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                News news = new News();
                                news.Id = (int)reader["id"];
                                news.Title = reader["title"].ToString();
                                news.SeoUrl = reader["seoUrl"].ToString();
                                news.Detail = reader["detail"].ToString();
                                news.Description = reader["description"].ToString();
                                news.CategoryId = (int)reader["categoryId"];
                                news.Published = reader["published"].ToString().Equals("1") || reader["published"].ToString().Equals("True");
                                news.MetaTag = reader["metaTag"].ToString();
                                news.MetaTitle = reader["metaTitle"].ToString();
                                news.MetaKeyWord = reader["metaKeyword"].ToString();
                                news.ViewCount = (int)reader["viewCount"];
                                news.LikeCount = (int)reader["likeCount"];
                                news.NewsImage = reader["newsImage"].ToString();
                                news.RelatedNewsIds = reader["relatedNewsIds"].ToString();
                                news.Created = (DateTime)reader["created"];
                                news.Updated = (DateTime)reader["updated"];
                                lists.Add(news);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new List<News>();
                }
            }
            return lists;
            #endregion
        }
    }
}
