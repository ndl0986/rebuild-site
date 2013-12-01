using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs;
using System.Data;
using System.Data.SqlClient;

namespace SonyAlphaLibs.Services
{
    public class PermissionServices : BaseService
    {

        public static bool addPermission(Permission permission, string connString)
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
            #endregion
        }

        public static bool updatePermission(Permission permission, string connString)
        {
            throw new NotImplementedException();
        }

        public static bool deletePermission(Permission permission, string connString)
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
            #endregion
        }

        public static List<Permission> getListAll(string connString)
        {
            #region code
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
            #endregion
        }

        public static Permission getById(int id, string connString)
        {
            #region code
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
            #endregion
        }

        public static Permission getByName(string name, string connString)
        {
            #region code
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
            #endregion
        }

        public static bool removeById(int id, string connString)
        {
            throw new NotImplementedException();
        }

        public static bool setPermission2Group(int permissionId, int groupId, string connString)
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
                        cmd.CommandText = "sony_sp_add_permission_group";
                        cmd.Parameters.AddWithValue("@groupId", groupId);
                        cmd.Parameters.AddWithValue("@permissionId", permissionId);
                        cmd.Parameters.AddWithValue("@created", DateTime.Now);
                        cmd.Parameters.AddWithValue("@updated", DateTime.Now);
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

        public static bool setPermission2MenuPage(int permissionGroupId, int menuPageId,
            bool isPage, String connString)
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
                        cmd.CommandText = "sony_sp_add_page_menu_permission";
                        cmd.Parameters.AddWithValue("@permissionGroup", permissionGroupId);
                        cmd.Parameters.AddWithValue("@menuPageId", menuPageId);
                        cmd.Parameters.AddWithValue("@isPage", isPage ? 1 : 0);
                        cmd.Parameters.AddWithValue("@created", DateTime.Now);
                        cmd.Parameters.AddWithValue("@updated", DateTime.Now);
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

        public static Permission getPermissionOfGroup(int groupId, String connString)
        {
            #region code
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_permission_of_group";
                        cmd.Parameters.AddWithValue("@groupId", groupId);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            Permission permisison = new Permission();
                            permisison.Id = (int)reader["id"];
                            permisison.Name = reader["name"].ToString();
                            permisison.AllowInsert = reader["allowinsert"].ToString().Equals("1") || reader["allowinsert"].ToString().Equals("True") ? true : false;
                            permisison.AllowUpdate = reader["allowupdate"].ToString().Equals("1") || reader["allowupdate"].ToString().Equals("True") ? true : false;
                            permisison.AllowDelete = reader["allowdelete"].ToString().Equals("1") || reader["allowdelete"].ToString().Equals("True") ? true : false;
                            permisison.Created = (DateTime)reader["created"];
                            permisison.Updated = (DateTime)reader["updated"];
                            return permisison;
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new Permission();
                }
            }
            return new Permission(); 
            #endregion
        }
        /// <summary>
        /// check if groupid belong to admin group or not
        /// </summary>
        /// <param name="groupId"></param>
        /// <param name="connString"></param>
        /// <returns></returns>
        public static bool checkIfAdminGroup(int groupId, string connString)
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
                        cmd.CommandText = "sony_sp_get_user_group_by_id";
                        cmd.Parameters.AddWithValue("@id", groupId);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                rs = reader["issuper"].ToString().Equals("1") 
                                    || reader["issuper"].ToString().Equals("True");
                                break;
                            }
                        }
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
    }
}
