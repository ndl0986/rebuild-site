using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace SonyAlphaLibs.Services
{
    public static class UserGroupServices
    {
        public static bool addUserGroup(UserGroup userGroup, String connString)
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
                        cmd.CommandText = "sony_sp_add_user_group";
                        cmd.Parameters.AddWithValue("@groupname", userGroup.GroupName);
                        cmd.Parameters.AddWithValue("@issuper", userGroup.IsSuper ? 1 : 0);
                        cmd.Parameters.AddWithValue("@created", userGroup.Created);
                        cmd.Parameters.AddWithValue("@updated", userGroup.Updated);
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

        public static UserGroup getById(int id, String connString)
        {
            UserGroup usergroup = new UserGroup();
            usergroup.Id = id;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_user_group_by_id";
                        cmd.Parameters.AddWithValue("@id", id);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {                                
                                usergroup.Id = (int)reader["id"];
                                usergroup.GroupName = reader["groupname"].ToString();
                                usergroup.IsSuper = reader["issuper"].ToString() == "1" ? true : false;
                                usergroup.Created = (DateTime)reader["created"];
                                usergroup.Updated = (DateTime)reader["updated"];
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new UserGroup();
                }
            }
            return usergroup;
        }

        public static bool update(UserGroup userGroup, string connString)
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
                        cmd.CommandText = "sony_sp_update_user_group";
                        cmd.Parameters.AddWithValue("@id", userGroup.Id);
                        cmd.Parameters.AddWithValue("@groupname", userGroup.GroupName);
                        cmd.Parameters.AddWithValue("@issuper", userGroup.IsSuper ? 1 : 0);
                        cmd.Parameters.AddWithValue("@updated", userGroup.Updated);
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
    }
}
