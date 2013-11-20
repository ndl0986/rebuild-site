using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace SonyAlphaLibs.Services
{
    public class UserServices : BaseService
    {
        public static bool addUser(User user, String connString)
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
                        cmd.CommandText = "sony_sp_add_user";
                        cmd.Parameters.AddWithValue("@username", user.UserName);
                        cmd.Parameters.AddWithValue("@password", user.PassWord);
                        cmd.Parameters.AddWithValue("@fullname", user.FullName);
                        cmd.Parameters.AddWithValue("@status", user.Status ? 1 : 0);
                        cmd.Parameters.AddWithValue("@registered", user.Registered);
                        cmd.Parameters.AddWithValue("@updated", user.Updated);
                        SqlParameter returnVal = new SqlParameter("@indentity", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@indentity"].Value != 0);
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

        public static User getById(int id, String connString)
        {
            return new User();
        }

        public static List<User> getListAll(String connString)
        {
            #region code
            List<User> lists = new List<User>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_user";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                User user = new User();
                                user.Id = (int)reader["id"];
                                user.UserName = reader["username"].ToString();
                                user.FullName = reader["fullname"].ToString();
                                user.Status = reader["status"].ToString().Equals("1") || reader["status"].ToString().Equals("True") ? true : false;
                                user.GroupId = (int)reader["groupId"];
                                user.Registered = (DateTime)reader["registered"];
                                user.Updated = (DateTime)reader["updated"];
                                user.GroupName = reader["groupname"].ToString();
                                lists.Add(user);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new List<User>();
                }
            }
            return lists; 
            #endregion
        }

        public static bool login(User user, String connString)
        {
            return login(user.UserName, user.PassWord, connString);
        }

        public static bool login(String userName, String passWord, String connString)
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
                        cmd.CommandText = "sony_sp_get_user_by_username";
                        cmd.Parameters.AddWithValue("@username", userName);

                        String getPass = "";
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                getPass = reader.GetString(2);
                                break;
                            }
                        }
                        rs = (!String.IsNullOrEmpty(getPass) && getPass == passWord);
                    }
                }
                catch (Exception ex)
                {
                    return rs;
                }
            }
            return rs;
        }

        public static bool update(User user, string connString)
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
                        cmd.CommandText = "sony_sp_update_user";
                        cmd.Parameters.AddWithValue("@username", user.UserName);
                        cmd.Parameters.AddWithValue("@password", user.PassWord);
                        cmd.Parameters.AddWithValue("@fullname", user.FullName);
                        cmd.Parameters.AddWithValue("@status", user.Status ? 1 : 0);
                        cmd.Parameters.AddWithValue("@updated", user.Updated);
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

        public static User getByUserName(string userName, string connString)
        {
            User rs = new User();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_user_by_username";
                        cmd.Parameters.AddWithValue("@username", userName);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                rs.Id = (int)reader["id"];
                                rs.UserName = userName;
                                rs.Status = reader["status"].ToString().Equals("1") || reader["status"].ToString().Equals("True") ? true : false;
                                rs.Created = (DateTime)reader["registered"];
                                rs.Updated = (DateTime)reader["updated"];
                                rs.FullName = reader["fullname"].ToString();
                                rs.GroupId = (int)reader["groupId"];
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
