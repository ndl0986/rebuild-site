using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace SonyAlphaLibs.Services
{
    public class SonyCenterServices : BaseService
    {

        public static bool addCenter(SonyCenter sonyCenter, string connString)
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
                        cmd.CommandText = "sony_sp_add_sony_center";
                        cmd.Parameters.AddWithValue("@name", sonyCenter.Name);
                        cmd.Parameters.AddWithValue("@address", sonyCenter.Address);
                        cmd.Parameters.AddWithValue("@phone", sonyCenter.Phone);
                        cmd.Parameters.AddWithValue("@fax", sonyCenter.Fax);
                        cmd.Parameters.AddWithValue("@province", sonyCenter.Province);
                        cmd.Parameters.AddWithValue("@description", sonyCenter.Description);
                        cmd.Parameters.AddWithValue("@retailLevel", sonyCenter.RetailLevel);
                        cmd.Parameters.AddWithValue("@centerImage", sonyCenter.CenterImage);
                        cmd.Parameters.AddWithValue("@opentime", sonyCenter.OpenTime);
                        cmd.Parameters.AddWithValue("@closetime", sonyCenter.CloseTime);
                        cmd.Parameters.AddWithValue("@longitude", sonyCenter.Longitude);
                        cmd.Parameters.AddWithValue("@latitude", sonyCenter.Latitude);
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

        public static bool updateCenter(SonyCenter sonyCenter, string connString)
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
                        cmd.CommandText = "sony_sp_update_sony_center";
                        cmd.Parameters.AddWithValue("@id", sonyCenter.Id);
                        cmd.Parameters.AddWithValue("@name", sonyCenter.Name);
                        cmd.Parameters.AddWithValue("@address", sonyCenter.Address);
                        cmd.Parameters.AddWithValue("@phone", sonyCenter.Phone);
                        cmd.Parameters.AddWithValue("@fax", sonyCenter.Fax);
                        cmd.Parameters.AddWithValue("@province", sonyCenter.Province);
                        cmd.Parameters.AddWithValue("@description", sonyCenter.Description);
                        cmd.Parameters.AddWithValue("@retailLevel", sonyCenter.RetailLevel);
                        cmd.Parameters.AddWithValue("@centerImage", sonyCenter.CenterImage);
                        cmd.Parameters.AddWithValue("@opentime", sonyCenter.OpenTime);
                        cmd.Parameters.AddWithValue("@closetime", sonyCenter.CloseTime);
                        cmd.Parameters.AddWithValue("@longitude", sonyCenter.Longitude);
                        cmd.Parameters.AddWithValue("@latitude", sonyCenter.Latitude);
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

        public static bool removeCenterById(int id, string connString)
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
                        cmd.CommandText = "sony_sp_delete_sony_center_by_id";
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
            #endregion
        }

        public static List<SonyCenter> getListAllCenter(string connString)
        {
            #region code
            List<SonyCenter> lists = new List<SonyCenter>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_sony_center";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                SonyCenter sonyCenter = new SonyCenter();
                                sonyCenter.Id = (int)reader["id"];
                                sonyCenter.Name = reader["name"].ToString(); 
                                sonyCenter.Address = reader["address"].ToString();
                                sonyCenter.Phone = reader["phone"].ToString();
                                sonyCenter.Fax = reader["fax"].ToString();
                                sonyCenter.Province = reader["province"].ToString();
                                sonyCenter.Description = reader["description"].ToString();
                                sonyCenter.RetailLevel = (int)reader["retailLevel"];
                                sonyCenter.CenterImage = reader["CenterImage"].ToString();
                                sonyCenter.OpenTime = reader["opentime"].ToString();
                                sonyCenter.CloseTime = reader["closetime"].ToString();
                                sonyCenter.Longitude = reader["longitude"].ToString();
                                sonyCenter.Latitude = reader["latitude"].ToString();
                                sonyCenter.Created = (DateTime)reader["created"];
                                sonyCenter.Updated = (DateTime)reader["updated"];
                                lists.Add(sonyCenter);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new List<SonyCenter>();
                }
            }
            return lists;
            #endregion
        }

        public static SonyCenter getCenterById(int id, string connString)
        {
            #region code
            SonyCenter sonyCenter = new SonyCenter();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_sony_center_by_id";
                        cmd.Parameters.AddWithValue("@id", id);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {                                
                                sonyCenter.Id = (int)reader["id"];
                                sonyCenter.Name = reader["name"].ToString();
                                sonyCenter.Address = reader["address"].ToString();
                                sonyCenter.Phone = reader["phone"].ToString();
                                sonyCenter.Fax = reader["fax"].ToString();
                                sonyCenter.Province = reader["province"].ToString();
                                sonyCenter.Description = reader["description"].ToString();
                                sonyCenter.RetailLevel = (int)reader["title"];
                                sonyCenter.CenterImage = reader["CenterImage"].ToString();
                                sonyCenter.OpenTime = reader["opentime"].ToString();
                                sonyCenter.CloseTime = reader["closetime"].ToString();
                                sonyCenter.Longitude = reader["longitude"].ToString();
                                sonyCenter.Latitude = reader["latitude"].ToString();
                                sonyCenter.Created = (DateTime)reader["created"];
                                sonyCenter.Updated = (DateTime)reader["updated"];
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    return new SonyCenter();
                }
            }
            return sonyCenter;
            #endregion
        }
    }
}
