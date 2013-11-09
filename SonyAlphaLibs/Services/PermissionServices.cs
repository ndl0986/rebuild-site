using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs;
using System.Data;
using System.Data.SqlClient;

namespace SonyAlphaLibs.Services
{
    public static class PermissionServices
    {

        internal static bool addPermission(Permission permission, string connString)
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
                        cmd.CommandText = "sony_sp_add_permission";
                        cmd.Parameters.AddWithValue("@name", permission.Name);
                        cmd.Parameters.AddWithValue("@allowinsert", permission.AllowInsert ? 1 : 0);
                        cmd.Parameters.AddWithValue("@allowupdate", permission.AllowUpdate ? 1 : 0);
                        cmd.Parameters.AddWithValue("@allowdelete", permission.AllowDelete ? 1 : 0);
                        cmd.Parameters.AddWithValue("@created", permission.Created);
                        cmd.Parameters.AddWithValue("@updated", permission.Updated);
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

        internal static bool updatePermission(Permission permission, string connString)
        {
            throw new NotImplementedException();
        }

        internal static bool deletePermission(Permission permission, string connString)
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
                        cmd.CommandText = "sony_sp_delete_permission";
                        cmd.Parameters.AddWithValue("@name", permission.Name);
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

        internal static List<Permission> getListAll(string connString)
        {
            List<Permission> lists = new List<Permission>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_permission";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Permission permission = new Permission();
                                permission.Id = (int)reader["id"];
                                permission.Name = reader["name"].ToString();
                                permission.AllowInsert = reader["allowinsert"].ToString().Equals("1") || reader["allowinsert"].ToString().Equals("True") ? true : false;
                                permission.AllowUpdate = reader["allowupdate"].ToString().Equals("1") || reader["allowupdate"].ToString().Equals("True") ? true : false;
                                permission.AllowDelete = reader["allowdelete"].ToString().Equals("1") || reader["allowdelete"].ToString().Equals("True") ? true : false;
                                permission.Created = (DateTime)reader["created"];
                                permission.Updated = (DateTime)reader["updated"];
                                lists.Add(permission);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new List<Permission>();
                }
            }
            return lists;
        }

        internal static Permission getById(int id, string connString)
        {
            Permission permission = new Permission();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_permission_by_id";
                        cmd.Parameters.AddWithValue("@id", id);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                permission.Id = (int)reader["id"];
                                permission.Name = reader["name"].ToString();
                                permission.AllowInsert = reader["allowinsert"].ToString().Equals("1") || reader["allowinsert"].ToString().Equals("True") ? true : false;
                                permission.AllowUpdate = reader["allowupdate"].ToString().Equals("1") || reader["allowupdate"].ToString().Equals("True") ? true : false;
                                permission.AllowDelete = reader["allowdelete"].ToString().Equals("1") || reader["allowdelete"].ToString().Equals("True") ? true : false;
                                permission.Created = (DateTime)reader["created"];
                                permission.Updated = (DateTime)reader["updated"];
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return permission;
                }
            }
            return permission;
        }

        internal static Permission getByName(string name, string connString)
        {
            Permission permission = new Permission();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_permission_by_id";
                        cmd.Parameters.AddWithValue("@name", name);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                permission.Id = (int)reader["id"];
                                permission.Name = reader["name"].ToString();
                                permission.AllowInsert = reader["allowinsert"].ToString().Equals("1") || reader["allowinsert"].ToString().Equals("True") ? true : false;
                                permission.AllowUpdate = reader["allowupdate"].ToString().Equals("1") || reader["allowupdate"].ToString().Equals("True") ? true : false;
                                permission.AllowDelete = reader["allowdelete"].ToString().Equals("1") || reader["allowdelete"].ToString().Equals("True") ? true : false;
                                permission.Created = (DateTime)reader["created"];
                                permission.Updated = (DateTime)reader["updated"];
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return permission;
                }
            }
            return permission;
        }
    }
}
