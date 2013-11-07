using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace SonyAlphaLibs.Services
{
    public static class UserServices
    {
        public static bool addUser(User user, String connString)
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
        }

        public static User getById(int id, String connString)
        {
            return new User();
        }

        public static List<User> getListAll(String connString)
        {
            return new List<User>();
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
    }
}
