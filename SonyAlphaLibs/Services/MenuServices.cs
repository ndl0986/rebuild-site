using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace SonyAlphaLibs.Services
{
    public static class MenuServices
    {
        internal static bool addMenu(Menu menu, string connString)
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

        internal static bool updateMenu(Menu menu, string connString)
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

        internal static bool removeById(int p, string connString)
        {
            throw new NotImplementedException();
        }

        internal static List<Menu> getListAll(string connString)
        {
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
        }

        internal static Menu getById(int id, string connString)
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
    }
}
