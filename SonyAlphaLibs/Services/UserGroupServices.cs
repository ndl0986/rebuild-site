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
    }
}
