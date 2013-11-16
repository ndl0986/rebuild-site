using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace SonyAlphaLibs.Services
{
    public class BannerServices : BaseService
    {

        internal static bool addBanner(Banner banner, string connString)
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
                        cmd.CommandText = "sony_sp_add_banner";
                        cmd.Parameters.AddWithValue("@name", banner.Name);
                        cmd.Parameters.AddWithValue("@visible", banner.Visible);
                        cmd.Parameters.AddWithValue("@bannerType", banner.BannerType);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Add Banner Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        internal static bool updateBanner(Banner banner, string connString)
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
                        cmd.CommandText = "sony_sp_update_banner";
                        cmd.Parameters.AddWithValue("@id", banner.Id);
                        cmd.Parameters.AddWithValue("@name", banner.Name);
                        cmd.Parameters.AddWithValue("@visible", banner.Visible);
                        cmd.Parameters.AddWithValue("@bannerType", banner.BannerType);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Update Banner Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        internal static bool removeById(int p, string connString)
        {
            throw new NotImplementedException();
        }

        internal static List<Banner> getListAll(string connString)
        {
            #region code
            List<Banner> lists = new List<Banner>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_banner";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Banner banner = new Banner();
                                banner.Id = (int)reader["id"];
                                banner.Name = reader["name"].ToString();
                                banner.Visible = reader["visible"].ToString().Equals("1") || reader["visible"].ToString().Equals("True") ? true : false;
                                banner.BannerType = (int)reader["bannerType"];
                                banner.Created = (DateTime)reader["created"];
                                banner.Updated = (DateTime)reader["updated"];
                                lists.Add(banner);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get All Banner Error: " + ex.Message, connString);
                    return new List<Banner>();
                }
            }
            return lists;
            #endregion
        }

        internal static Banner getById(int id, string connString)
        {
            #region code
            Banner banner = new Banner();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_banner_by_id";
                        cmd.Parameters.AddWithValue("@id", id);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                banner.Id = (int)reader["id"];
                                banner.Name = reader["name"].ToString();
                                banner.Visible = reader["visible"].ToString().Equals("1") || reader["visible"].ToString().Equals("True") ? true : false;
                                banner.BannerType = (int)reader["bannerType"];
                                banner.Created = (DateTime)reader["created"];
                                banner.Updated = (DateTime)reader["updated"];
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get Banner By Id Error: " + ex.Message, connString);
                    return new Banner();
                }
            }
            return banner;
            #endregion
        }

        internal static bool setPhoto2Banner(int photoId, string connString)
        {
            throw new NotImplementedException();
        }

        internal static bool setPhoto2Banner(int bannerId, List<BannerPhoto> listPhotos, string connString)
        {
            #region code
            bool rs = false;
            if (listPhotos.Count > 0)
            {
                using (SqlConnection conn = new SqlConnection(connString))
                {                    
                    try
                    {
                        conn.Open();
                        SqlTransaction myTrans = conn.BeginTransaction();
                        using (SqlCommand cmd = conn.CreateCommand())
                        {
                            cmd.Transaction = myTrans;
                            try
                            {
                                String sql = String.Empty;
                                sql = @"
                                EXEC sony_sp_add_banner_photo @bannerId{0}, @imageUrl{0}, @link2{0}, @returnVal{0};
                            ";
                                for (int i = 0; i < listPhotos.Count; i++)
                                {
                                    BannerPhoto bannerPhoto = listPhotos[i];
                                    cmd.CommandText = String.Format(sql, i);
                                    cmd.Parameters.AddWithValue("@bannerId" + i.ToString(), bannerId);
                                    cmd.Parameters.AddWithValue("@imageUrl" + i.ToString(), bannerPhoto.ImageUrl);
                                    cmd.Parameters.AddWithValue("@link2" + i.ToString(), bannerPhoto.Link2);
                                    SqlParameter returnVal = new SqlParameter("@returnVal" + i.ToString(), SqlDbType.Int);
                                    returnVal.Direction = ParameterDirection.Output;
                                    cmd.Parameters.Add(returnVal);
                                    cmd.ExecuteNonQuery();
                                }
                            }
                            catch (Exception)
                            {
                                myTrans.Rollback();
                            }
                        }
                        myTrans.Commit();
                        rs = true;
                    }
                    catch (Exception ex)
                    {
                        writeLog("", "Set Photo Banner Error: " + ex.Message, connString);
                        rs = false;
                        //throw;
                    }
                }
            }
            return rs;
            #endregion
        }

        internal static List<BannerPhoto> getPhotoOfBanner(int bannerId, string connString)
        {
            #region code
            List<BannerPhoto> lists = new List<BannerPhoto>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_banner_photo_by_banner_id";
                        cmd.Parameters.AddWithValue("@bannerId", bannerId);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                BannerPhoto bannerP = new BannerPhoto();
                                bannerP.Id = (int)reader["id"];
                                bannerP.ImageUrl = reader["imageUrl"].ToString();
                                bannerP.Link2 = reader["link2"].ToString();
                                bannerP.SortOrder = (int)reader["sortOrder"];
                                bannerP.Created = (DateTime)reader["created"];
                                bannerP.Updated = (DateTime)reader["updated"];
                                lists.Add(bannerP);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get Photo Of Banner Error: " + ex.Message, connString);
                    return new List<BannerPhoto>();
                }
            }
            return lists;
            #endregion
        }
    }
}
