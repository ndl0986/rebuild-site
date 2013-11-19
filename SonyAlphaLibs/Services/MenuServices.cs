using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace SonyAlphaLibs.Services
{
    public class MenuServices : BaseService
    {
        public static bool addMenu(Menu menu, string connString)
        {
            bool rs = false;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_add_menu";
                        cmd.Parameters.AddWithValue("@name", menu.Name);
                        cmd.Parameters.AddWithValue("@isparent", menu.IsParent ? 1 : 0);
                        cmd.Parameters.AddWithValue("@parentId", menu.ParentId);
                        cmd.Parameters.AddWithValue("@seoUrl", menu.SeoUrl);
                        cmd.Parameters.AddWithValue("@isadmin", menu.IsAdmin ? 1 : 0);
                        cmd.Parameters.AddWithValue("@visible", menu.Visible ? 1 : 0);
                        cmd.Parameters.AddWithValue("@order", menu.Order);
                        cmd.Parameters.AddWithValue("@created", menu.Created);
                        cmd.Parameters.AddWithValue("@updated", menu.Updated);
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
        }

        public static bool updateMenu(Menu menu, string connString)
        {
            bool rs = false;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_update_menu";
                        cmd.Parameters.AddWithValue("@name", menu.Name);
                        cmd.Parameters.AddWithValue("@isparent", menu.IsParent ? 1 : 0);
                        cmd.Parameters.AddWithValue("@parentId", menu.ParentId);
                        cmd.Parameters.AddWithValue("@seoUrl", menu.SeoUrl);
                        cmd.Parameters.AddWithValue("@isadmin", menu.IsAdmin ? 1 : 0);
                        cmd.Parameters.AddWithValue("@visible", menu.Visible ? 1 : 0);
                        cmd.Parameters.AddWithValue("@order", menu.Order);
                        cmd.Parameters.AddWithValue("@updated", menu.Updated);
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
                        cmd.CommandText = "sony_sp_delete_menu_by_id";
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
                    writeLog("", "Delete Menu Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static List<Menu> getListAll(string connString)
        {
            #region code
            List<Menu> lists = new List<Menu>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_menu";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Menu menu = new Menu();
                                menu.Id = (int)reader["id"];
                                menu.Name = reader["name"].ToString();
                                menu.IsParent = reader["isparent"].ToString().Equals("1") || reader["isparent"].ToString().Equals("True") ? true : false;
                                menu.ParentId = (int)reader["parentId"];
                                menu.SeoUrl = reader["seoUrl"].ToString();
                                menu.IsAdmin = reader["isadmin"].ToString().Equals("1") || reader["isadmin"].ToString().Equals("True") ? true : false;
                                menu.Visible = reader["visible"].ToString().Equals("1") || reader["visible"].ToString().Equals("True") ? true : false;
                                menu.Order = (int)reader["order"];
                                menu.Created = (DateTime)reader["created"];
                                menu.Updated = (DateTime)reader["updated"];
                                lists.Add(menu);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new List<Menu>();
                }
            }
            return lists; 
            #endregion
        }

        public static Menu getById(int id, string connString)
        {
            Menu rs = new Menu();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_menu_by_id";
                        cmd.Parameters.AddWithValue("@id", id);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                rs.Id = (int)reader["id"];
                                rs.Name = reader["name"].ToString();
                                rs.IsParent = reader["isparent"].ToString().Equals("1") ? true : false;
                                rs.ParentId = (int)reader["parentId"];
                                rs.SeoUrl = reader["seoUrl"].ToString();
                                rs.IsAdmin = reader["isadmin"].ToString().Equals("1") ? true : false;
                                rs.Visible = reader["visible"].ToString().Equals("1") ? true : false;
                                rs.Order = (int)reader["order"];
                                rs.Created = (DateTime)reader["created"];
                                rs.Updated = (DateTime)reader["updated"];
                                break;
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return rs;
                }
            }
            return rs;
        }

        public static bool setBanner2Menu(int menuId, int bannerId, string connString)
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
                        cmd.CommandText = "sony_sp_set_banner_to_page";
                        cmd.Parameters.AddWithValue("@pageId", menuId);
                        cmd.Parameters.AddWithValue("@bannerId", bannerId);
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

        public static int getBannerId(int menuId, string connString)
        {
            #region code
            int rs = 0;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_banner_id_by_page_id";
                        cmd.Parameters.AddWithValue("@pageId", menuId);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = (int)cmd.Parameters["@returnVal"].Value;
                    }
                }
                catch (Exception ex)
                {
                    return 0;
                }
            }
            return rs;
            #endregion
        }

        public static List<int> getListBannerId(int menuId, string connString)
        {
            #region code
            List<int> rs = new List<int>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_list_banner_id_by_page_id";
                        cmd.Parameters.AddWithValue("@pageId", menuId);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                rs.Add((int)reader["id"]);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return rs;
                }
            }
            return rs;
            #endregion
        }

        public static List<Banner> getListBanner(int menuId, string connString)
        {
            #region code
            List<Banner> lists = new List<Banner>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_list_banner_by_page_id";
                        cmd.Parameters.AddWithValue("@pageId", menuId);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Banner banner = new Banner();
                                banner.Id = (int)reader["id"];
                                banner.Name = reader["name"].ToString();
                                banner.Visible = reader["visible"].ToString().Equals("1") || reader["visible"].ToString().Equals("True");
                                banner.BannerType = (int)reader["bannerType"];
                                banner.Created = (DateTime)reader["created"];
                                banner.Updated = (DateTime)reader["updated"];
                                lists.Add(banner);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new List<Banner>();
                }
            }
            return lists;
            #endregion
        }

        public static List<PageBanner> getAllListMenuBanner(string connString)
        {
            #region code
            List<PageBanner> lists = new List<PageBanner>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_page_banner";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                PageBanner banner = new PageBanner();
                                banner.Id = (int)reader["id"];
                                banner.BannerId = (int)reader["bannerId"];
                                banner.PageId = (int)reader["pageId"];
                                banner.Created = (DateTime)reader["created"];
                                banner.Updated = (DateTime)reader["updated"];
                                lists.Add(banner);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new List<PageBanner>();
                }
            }
            return lists;
            #endregion
        }

        public static PageBanner getPageBannerById(int id, string connString)
        {
            PageBanner rs = new PageBanner();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_pagebanner_by_id";
                        cmd.Parameters.AddWithValue("@id", id);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                rs.Id = (int)reader["id"];
                                rs.PageId = (int)reader["parentId"];
                                rs.BannerId = (int)reader["bannerId"];
                                rs.Created = (DateTime)reader["created"];
                                rs.Updated = (DateTime)reader["updated"];
                                break;
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return rs;
                }
            }
            return rs;
        }

        public static bool removePageBannerById(int id, string connString)
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
                        cmd.CommandText = "sony_sp_delete_pagebanner_by_id";
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
                    writeLog("", "Delete Menu Banner Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }
    }
}
