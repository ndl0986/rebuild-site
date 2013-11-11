using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace SonyAlphaLibs.Services
{
    public class BaseService
    {
        internal static int getCurrentMaxId(string tableName, string connString)
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
                        cmd.CommandText = "sony_sp_get_current_max_id";
                        cmd.Parameters.AddWithValue("@tableName", tableName);
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
    }
}
