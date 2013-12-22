using System;
using System.Data.SqlClient;
using System.Data;

namespace SonyAlphaLibs.Services
{
    public class BaseService
    {
        public static int GetCurrentMaxId(string tableName, string connString)
        {
            #region code
            int rs;
            using (var conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_current_max_id";
                        cmd.Parameters.AddWithValue("@tableName", tableName);
                        var returnVal = new SqlParameter("@returnVal", SqlDbType.Int)
                        {
                            Direction = ParameterDirection.Output
                        };
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = (int)cmd.Parameters["@returnVal"].Value;
                    }
                }
                catch (Exception)
                {
                    return 0;
                }
            }
            return rs;
            #endregion
        }

        public static void WriteLog(String userName, String description, String connString)
        {
            #region code
            using (var conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_add_action_log";
                        cmd.Parameters.AddWithValue("@username", String.IsNullOrEmpty(userName) ? "admin" : userName);
                        cmd.Parameters.AddWithValue("@description", String.IsNullOrEmpty(description) ? "" : description);

                        cmd.ExecuteNonQuery();
                    }
                }
                catch 
                {
                    //return 0;
                }
            }
            #endregion
        }

        public static bool TestConnection(String connString)
        {
            using (var conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    return true;
                }
                catch (Exception)
                {
                    return false;
                }
            }
        }
    }
}
