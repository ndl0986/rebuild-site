using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace SonyAlphaLibs.Services
{
    public class ProvinceServices : BaseService
    {
        public static bool addProvince(Province province, string connString)
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
                        cmd.CommandText = "sony_sp_add_province";
                        cmd.Parameters.AddWithValue("@province", province.SProvince);
                        cmd.Parameters.AddWithValue("@provinceOrder", province.ProvinceOrder);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Add Province Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static bool updateProvince(Province province, string connString)
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
                        cmd.CommandText = "sony_sp_update_province";
                        cmd.Parameters.AddWithValue("@id", province.Id);
                        cmd.Parameters.AddWithValue("@province", province.SProvince);
                        cmd.Parameters.AddWithValue("@provinceOrder", province.ProvinceOrder);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Update Province Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static bool removeProvinceById(int id, string connString)
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
                        cmd.CommandText = "sony_sp_delete_province_by_id";
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
                    writeLog("", "Delete Province Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static List<Province> getListAllProvince(string connString)
        {
            #region code
            List<Province> lists = new List<Province>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_province";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Province province = new Province();
                                province.Id = (int)reader["id"];
                                province.SProvince = reader["province"].ToString();
                                province.ProvinceOrder = (int)reader["provinceOrder"];
                                lists.Add(province);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get All Province Error: " + ex.Message, connString);
                    return new List<Province>();
                }
            }
            return lists;
            #endregion
        }

        public static Province getProvinceById(int p, string connString)
        {
            #region code
            Province province = new Province();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_province_by_id";
                        cmd.Parameters.AddWithValue("@id", p);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {   
                                province.Id = (int)reader["id"];
                                province.SProvince = reader["province"].ToString();
                                province.ProvinceOrder = (int)reader["provinceOrder"];
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get All Province Error: " + ex.Message, connString);
                    return new Province();
                }
            }
            return province;
            #endregion
        }

        public static List<Province> getProvinceByName(string p, string connString)
        {
            #region code
            List<Province> lists = new List<Province>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_province_by_name";
                        cmd.Parameters.AddWithValue("@province", p);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Province province = new Province();
                                province.Id = (int)reader["id"];
                                province.SProvince = reader["province"].ToString();
                                province.ProvinceOrder = (int)reader["provinceOrder"];
                                lists.Add(province);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get All Province By Name Error: " + ex.Message, connString);
                    return new List<Province>();
                }
            }
            return lists;
            #endregion
        }
    }
}
