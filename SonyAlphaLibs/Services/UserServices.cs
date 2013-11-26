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
                        //cmd.Parameters.AddWithValue("@registered", user.Registered);
                        //cmd.Parameters.AddWithValue("@updated", user.Updated);
                        cmd.Parameters.AddWithValue("@phone", user.Phone);
                        cmd.Parameters.AddWithValue("@email", user.Email);
                        cmd.Parameters.AddWithValue("@productused", String.IsNullOrEmpty(user.ProductUsed) ? " " : user.ProductUsed);
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

        public static bool update(User user, string connString)
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
                        cmd.CommandText = "sony_sp_update_user";
                        cmd.Parameters.AddWithValue("@username", user.UserName);
                        //cmd.Parameters.AddWithValue("@password", user.PassWord);
                        cmd.Parameters.AddWithValue("@fullname", user.FullName);
                        cmd.Parameters.AddWithValue("@status", user.Status ? 1 : 0);
                        //cmd.Parameters.AddWithValue("@updated", user.Updated);
                        cmd.Parameters.AddWithValue("@groupid", user.GroupId);
                        cmd.Parameters.AddWithValue("@phone", user.Phone);
                        cmd.Parameters.AddWithValue("@email", user.Email);
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

        public static User getById(int id, String connString)
        {
            User user = new User();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_user_by_id";
                        cmd.Parameters.AddWithValue("@id", id);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                user.Id = (int)reader["id"];
                                user.UserName = reader["username"].ToString();
                                user.FullName = reader["fullname"].ToString();
                                user.Created = (DateTime)reader["registered"];
                                user.Updated = (DateTime)reader["updated"];
                                user.GroupId = (int)reader["groupId"];
                                user.Status = reader["status"].ToString().Equals("1") ||
                                    reader["status"].ToString().Equals("True");
                                user.Phone = reader["phone"].ToString();
                                user.Email = reader["email"].ToString();
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new User();
                }
            }
            return user;
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
                                user.Phone = reader["phone"].ToString();
                                user.Email = reader["email"].ToString();
                                user.ProductUsed = reader["productused"].ToString();
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
                        cmd.CommandText = "sony_sp_get_user_by_username";
                        cmd.Parameters.AddWithValue("@username", userName);

                        String getPass = "";
                        bool status = false;
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                getPass = reader["password"].ToString();
                                status = reader["status"].ToString().Equals("1") || reader["status"].ToString().Equals("True");
                                break;
                            }
                        }
                        rs = (!String.IsNullOrEmpty(getPass) && getPass == passWord && status);
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
                                rs.Phone = reader["phone"].ToString();
                                rs.Email = reader["email"].ToString();
                                rs.ProductUsed = reader["productused"].ToString();
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

        public static bool updateFullNameStatus(User user, string connString)
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
                        cmd.CommandText = "sony_sp_update_user_fullname_status";
                        cmd.Parameters.AddWithValue("@username", user.UserName);
                        cmd.Parameters.AddWithValue("@fullname", user.FullName);
                        cmd.Parameters.AddWithValue("@status", user.Status ? 1 : 0);
                        cmd.Parameters.AddWithValue("@groupId", user.GroupId);
                        cmd.Parameters.AddWithValue("@phone", user.Phone);
                        cmd.Parameters.AddWithValue("@email", user.Email);
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

        public static bool resetPasswordToDefault(string userName, string defaultpass, string connString)
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
                        cmd.CommandText = "sony_sp_update_user_password_to_default";
                        cmd.Parameters.AddWithValue("@username", userName);
                        cmd.Parameters.AddWithValue("@defaultpass", defaultpass);
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
            bool rs = false;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_delete_user_by_id";
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
        }

        public static List<UserSearch> getListUserByUserName(string userName, string connString)
        {
            #region code
            List<UserSearch> lists = new List<UserSearch>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_user_by_username";
                        cmd.Parameters.AddWithValue("@username", userName);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                UserSearch user = new UserSearch();
                                user.Id = (int)reader["id"];
                                user.FullName = reader["fullname"].ToString();
                                user.UserName = reader["username"].ToString();
                                user.Created = (DateTime)reader["registered"];
                                user.Updated = (DateTime)reader["updated"];
                                lists.Add(user);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get User Error: " + ex.Message, connString);
                    return new List<UserSearch>();
                }
            }
            return lists;
            #endregion
        }

        public static bool changePassword(string userName, string pass, string connString)
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
                        cmd.CommandText = "sony_sp_update_user_pass";
                        cmd.Parameters.AddWithValue("@username", userName);
                        cmd.Parameters.AddWithValue("@password", pass);
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

        public static bool loginEmail(string email, string password, string connString)
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
                        cmd.CommandText = "sony_sp_get_user_by_email";
                        cmd.Parameters.AddWithValue("@email", email);

                        String getPass = "";
                        bool status = false;
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                getPass = reader["password"].ToString();
                                status = reader["status"].ToString().Equals("1") || reader["status"].ToString().Equals("True");
                                break;
                            }
                        }
                        rs = (!String.IsNullOrEmpty(getPass) && getPass == password && status);
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
    }
}
