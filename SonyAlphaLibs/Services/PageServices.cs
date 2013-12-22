using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs;
using System.Data.SqlClient;
using System.Data;

namespace SonyAlphaLibs.Services
{
    public class PageServices : BaseService
    {

        public static bool addPage(Page page, string connString)
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
                        cmd.CommandText = "sony_sp_add_page";
                        cmd.Parameters.AddWithValue("@title", page.Title);
                        cmd.Parameters.AddWithValue("@longtitle", page.LongTitle);
                        cmd.Parameters.AddWithValue("@pageContent", page.PageContent);
                        cmd.Parameters.AddWithValue("@isNews", page.IsNews ? 1 : 0);
                        cmd.Parameters.AddWithValue("@seoUrl", page.SeoUrl);
                        cmd.Parameters.AddWithValue("@status", page.Status ? 1 : 0);
                        cmd.Parameters.AddWithValue("@creator", String.IsNullOrEmpty(page.Creator) ? "admin" : page.Creator);
                        cmd.Parameters.AddWithValue("@updator", String.IsNullOrEmpty(page.Updator) ? "admin" : page.Updator);
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

        public static bool updatePage(Page page, string connString)
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
                        cmd.CommandText = "sony_sp_update_page_by_id";
                        cmd.Parameters.AddWithValue("@id", page.Id);
                        cmd.Parameters.AddWithValue("@title", page.Title);
                        cmd.Parameters.AddWithValue("@longtitle", page.LongTitle);
                        cmd.Parameters.AddWithValue("@pageContent", page.PageContent);
                        cmd.Parameters.AddWithValue("@isNews", page.IsNews ? 1 : 0);
                        cmd.Parameters.AddWithValue("@seoUrl", page.SeoUrl);
                        cmd.Parameters.AddWithValue("@status", page.Status ? 1 : 0);
                        cmd.Parameters.AddWithValue("@updator", String.IsNullOrEmpty(page.Updator) ? "admin" : page.Updator);
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

        public static List<Page> getListAll(string connString)
        {
            #region code
            List<Page> lists = new List<Page>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_page";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Page page = new Page();
                                page.Id = (int)reader["id"];
                                page.Title = reader["title"].ToString();
                                page.LongTitle = reader["longtitle"].ToString();
                                page.PageContent = reader["pageContent"].ToString();
                                page.IsNews = reader["isNews"].ToString().Equals("1") || reader["isNews"].ToString().Equals("True") ? true : false;
                                page.SeoUrl = reader["seoUrl"].ToString();
                                page.Status = reader["status"].ToString().Equals("1") || reader["status"].ToString().Equals("True") ? true : false;
                                page.Created = (DateTime)reader["created"];
                                page.Creator = reader["creator"].ToString();
                                page.Updated = (DateTime)reader["updated"];
                                page.Updator = reader["updator"].ToString();
                                lists.Add(page);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new List<Page>();
                }
            }
            return lists;
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
                        cmd.CommandText = "sony_sp_delete_page_by_id";
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
                    WriteLog("", "Delete Page Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static Page getById(int id, string connString)
        {
            #region code
            Page page = new Page();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_page_by_id";
                        cmd.Parameters.AddWithValue("@id", id);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                page.Id = (int)reader["id"];
                                page.Title = reader["title"].ToString();
                                page.LongTitle = reader["longtitle"].ToString();
                                page.PageContent = reader["pageContent"].ToString();
                                page.IsNews = reader["isNews"].ToString().Equals("1") || reader["isNews"].ToString().Equals("True") ? true : false;
                                page.SeoUrl = reader["seoUrl"].ToString();
                                page.Status = reader["status"].ToString().Equals("1") || reader["status"].ToString().Equals("True") ? true : false;
                                page.Created = (DateTime)reader["created"];
                                page.Creator = reader["creator"].ToString();
                                page.Updated = (DateTime)reader["updated"];
                                page.Updator = reader["updator"].ToString();
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new Page();
                }
            }
            return page;
            #endregion
        }

        public static Page getByName(string name, string connString)
        {
            #region code
            Page page = new Page();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_page_by_title";
                        cmd.Parameters.AddWithValue("@title", name);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                page.Id = (int)reader["id"];
                                page.Title = reader["title"].ToString();
                                page.LongTitle = reader["longtitle"].ToString();
                                page.PageContent = reader["pageContent"].ToString();
                                page.IsNews = reader["isNews"].ToString().Equals("1") || reader["isNews"].ToString().Equals("True") ? true : false;
                                page.SeoUrl = reader["seoUrl"].ToString();
                                page.Status = reader["status"].ToString().Equals("1") || reader["status"].ToString().Equals("True") ? true : false;
                                page.Created = (DateTime)reader["created"];
                                page.Creator = reader["creator"].ToString();
                                page.Updated = (DateTime)reader["updated"];
                                page.Updator = reader["updator"].ToString();
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new Page();
                }
            }
            return page;
            #endregion
        }

        public static List<Page> getListPage(int pageNum, int order, string connString)
        {
            #region code
            List<Page> lists = new List<Page>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_page_by_num_order";
                        cmd.Parameters.AddWithValue("@pageNum", pageNum);
                        cmd.Parameters.AddWithValue("@order", order);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Page page = new Page();
                                page.Id = (int)reader["id"];
                                page.Title = reader["title"].ToString();
                                page.LongTitle = reader["longtitle"].ToString();
                                page.PageContent = reader["pageContent"].ToString();
                                page.IsNews = reader["isNews"].ToString().Equals("1") || reader["isNews"].ToString().Equals("True") ? true : false;
                                page.SeoUrl = reader["seoUrl"].ToString();
                                page.Status = reader["status"].ToString().Equals("1") || reader["status"].ToString().Equals("True") ? true : false;
                                page.Created = (DateTime)reader["created"];
                                page.Creator = reader["creator"].ToString();
                                page.Updated = (DateTime)reader["updated"];
                                page.Updator = reader["updator"].ToString();
                                lists.Add(page);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new List<Page>();
                }
            }
            return lists;
            #endregion
        }

        public static List<Page> getListPage(int pageNum, int order, int pageSize,
            string orderBy, string connString)
        {
            #region code
            List<Page> lists = new List<Page>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_page_by_num_order_size_col";
                        cmd.Parameters.AddWithValue("@pageNum", pageNum);
                        cmd.Parameters.AddWithValue("@order", order);
                        cmd.Parameters.AddWithValue("@size", pageSize);
                        cmd.Parameters.AddWithValue("@order", order);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Page page = new Page();
                                page.Id = (int)reader["id"];
                                page.Title = reader["title"].ToString();
                                page.LongTitle = reader["longtitle"].ToString();
                                page.PageContent = reader["pageContent"].ToString();
                                page.IsNews = reader["isNews"].ToString().Equals("1") || reader["isNews"].ToString().Equals("True") ? true : false;
                                page.SeoUrl = reader["seoUrl"].ToString();
                                page.Status = reader["status"].ToString().Equals("1") || reader["status"].ToString().Equals("True") ? true : false;
                                page.Created = (DateTime)reader["created"];
                                page.Creator = reader["creator"].ToString();
                                page.Updated = (DateTime)reader["updated"];
                                page.Updator = reader["updator"].ToString();
                                lists.Add(page);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new List<Page>();
                }
            }
            return lists;
            #endregion
        }
    }
}
