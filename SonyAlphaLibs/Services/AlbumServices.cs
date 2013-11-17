using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace SonyAlphaLibs.Services
{
    public class AlbumServices : BaseService
    {

        internal static bool addAlbum(Album album, string connString)
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
                        cmd.CommandText = "sony_sp_add_album";
                        cmd.Parameters.AddWithValue("@fullname", album.FullName);
                        cmd.Parameters.AddWithValue("@albumCreator", String.IsNullOrEmpty(album.AlbumCreator) ? "admin" : album.AlbumCreator);
                        cmd.Parameters.AddWithValue("@albumImage", String.IsNullOrEmpty(album.AlbumImage) ? "" : album.AlbumImage);
                        cmd.Parameters.AddWithValue("@viewCount", album.ViewCount);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Add Album Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        internal static bool updateAlbum(Album album, string connString)
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
                        cmd.CommandText = "sony_sp_update_album";
                        cmd.Parameters.AddWithValue("@id", album.Id);
                        cmd.Parameters.AddWithValue("@fullname", album.FullName);
                        cmd.Parameters.AddWithValue("@albumCreator", String.IsNullOrEmpty(album.AlbumCreator) ? "admin" : album.AlbumCreator);
                        cmd.Parameters.AddWithValue("@albumImage", String.IsNullOrEmpty(album.AlbumImage) ? "" : album.AlbumImage);
                        cmd.Parameters.AddWithValue("@viewCount", album.ViewCount);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Update Album Error: " + ex.Message, connString);
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

        internal static List<Album> getListAll(string connString)
        {
            #region code
            List<Album> lists = new List<Album>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_album";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Album album = new Album();
                                album.Id = (int)reader["id"];
                                album.FullName = reader["fullname"].ToString();
                                album.AlbumCreator = reader["albumCreator"].ToString();
                                album.AlbumImage = reader["albumImage"].ToString();
                                album.ViewCount = (int)reader["viewCount"];
                                album.Created = (DateTime)reader["created"];
                                album.Updated = (DateTime)reader["updated"];
                                lists.Add(album);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get All Album Error: " + ex.Message, connString);
                    return new List<Album>();
                }
            }
            return lists;
            #endregion
        }

        internal static Album getById(int id, string connString)
        {
            #region code
            Album album = new Album();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_album_by_id";
                        cmd.Parameters.AddWithValue("@id", id);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                album.Id = (int)reader["id"];
                                album.FullName = reader["fullname"].ToString();
                                album.AlbumCreator = reader["albumCreator"].ToString();
                                album.AlbumImage = reader["albumImage"].ToString();
                                album.ViewCount = (int)reader["viewCount"];
                                album.Created = (DateTime)reader["created"];
                                album.Updated = (DateTime)reader["updated"];
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get Album By Id Error: " + ex.Message, connString);
                    return new Album();
                }
            }
            return album;
            #endregion
        }

        internal static List<Photo> getPhotoOfAlbum(string listImageIds, string connString)
        {
            #region code
            List<Photo> lists = new List<Photo>();
            if (!String.IsNullOrEmpty(listImageIds))
            {
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    try
                    {
                        conn.Open();
                        using (SqlCommand cmd = conn.CreateCommand())
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.CommandText = "sony_sp_get_album_list_photo";
                            cmd.Parameters.AddWithValue("@listPhotos", listImageIds);

                            using (SqlDataReader reader = cmd.ExecuteReader())
                            {
                                while (reader.Read())
                                {
                                    Photo photo = new Photo();
                                    photo.Id = (int)reader["id"];
                                    photo.Title = reader["title"].ToString();
                                    photo.FileName = reader["filename"].ToString();
                                    photo.Description = reader["description"].ToString();
                                    photo.RedirectUrl = reader["redirectUrl"].ToString();
                                    photo.Status = reader["status"].ToString().Equals("1") || reader["status"].ToString().Equals("True") ? true : false;
                                    photo.CameraName = reader["cameraName"].ToString();
                                    photo.CameraModel = reader["cameraModel"].ToString();
                                    photo.FStop = reader["fStop"].ToString();
                                    photo.ExposureTime = reader["exposureTime"].ToString();
                                    photo.ISO = reader["iso"].ToString();
                                    photo.ExposureBlas = reader["exposureBlas"].ToString();
                                    photo.FocalLengh = reader["focalLengh"].ToString();
                                    photo.MaxAperture = reader["maxAperture"].ToString();
                                    photo.MateringMode = reader["materingMode"].ToString();
                                    photo.SubjectDistance = reader["subjectDistance"].ToString();
                                    photo.FlashMode = reader["flashMode"].ToString();
                                    photo.FlashEnergy = reader["flashEnergy"].ToString();
                                    photo.ViewCount = (int)reader["viewCount"];
                                    photo.VoteCount = (int)reader["voteCount"];
                                    photo.LikeCount = (int)reader["likeCount"];
                                    photo.Created = (DateTime)reader["created"];
                                    photo.Updated = (DateTime)reader["updated"];
                                    lists.Add(photo);
                                }
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        writeLog("", "Get Photo Of Album Error: " + ex.Message, connString);
                        return new List<Photo>();
                    }
                }
            }
            return lists; 
            #endregion
        }

        internal static bool setPhoto2Album(Photo photo, string connString)
        {
            throw new NotImplementedException();
        }

        internal static bool setPhoto2Album(int albumId, List<Photo> listPhotos, string connString)
        {
            #region code
            bool rs = false;
            string photoIds = "";
            if (listPhotos != null && listPhotos.Count > 0)
            {
                foreach (Photo photo in listPhotos)
                {
                    photoIds += photo.Id + ",";
                }
            }
            if (photoIds.EndsWith(","))
            {
                photoIds = photoIds.Substring(0, photoIds.Length - 1);
            }
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_update_album_add_album_image";
                        cmd.Parameters.AddWithValue("@albumId", albumId);
                        cmd.Parameters.AddWithValue("@albumImage", photoIds);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Update Set Photo to Album Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        internal static bool setPhoto2Album(int albumId, int photoId, string connString)
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
                        cmd.CommandText = "sony_sp_update_album_add_one_photo";
                        cmd.Parameters.AddWithValue("@albumId", albumId);
                        cmd.Parameters.AddWithValue("@photoId", photoId);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Update Set Photo to Album Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        internal static bool setComment2Album(AlbumComment albumComment, string connString)
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
                        cmd.CommandText = "sony_sp_add_album_comment";
                        cmd.Parameters.AddWithValue("@username", albumComment.UserName);
                        cmd.Parameters.AddWithValue("@albumId", albumComment.AlbumId);
                        cmd.Parameters.AddWithValue("@photoId", albumComment.PhotoId);
                        cmd.Parameters.AddWithValue("@status", albumComment.Status ? 1 : 0);
                        cmd.Parameters.AddWithValue("@comment", albumComment.Comment);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Add Album Comment Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        internal static List<AlbumComment> getListCommentOfAlbum(int albumId, int photoId, string connString)
        {
            #region code
            List<AlbumComment> lists = new List<AlbumComment>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_album_photo_comment_by_album_id_and_photo_id";
                        cmd.Parameters.AddWithValue("@albumId", albumId);
                        cmd.Parameters.AddWithValue("@photoId", photoId);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                AlbumComment albumComment = new AlbumComment();
                                albumComment.Id = (int)reader["id"];
                                albumComment.UserName = reader["username"].ToString();
                                albumComment.AlbumId = (int)reader["albumId"];
                                albumComment.PhotoId = (int)reader["photoId"];
                                albumComment.Status = reader["status"].ToString().Equals("1") || reader["status"].ToString().Equals("True");
                                albumComment.Created = (DateTime)reader["created"];
                                lists.Add(albumComment);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", String.Format("Get Album Comment Error: albumId={0}, photoId={1}, CauseBy:{2}", albumId, photoId, ex.Message), connString);
                    return new List<AlbumComment>();
                }
            }
            return lists;
            #endregion
        }

        internal static int getViewCount(int albumId, string connString)
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
                        cmd.CommandText = "sony_sp_get_album_view_count";
                        cmd.Parameters.AddWithValue("@albumId", albumId);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = (int)cmd.Parameters["@returnVal"].Value;
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Update Album Error: " + ex.Message, connString);
                    return rs;
                }
            }
            return rs;
            #endregion
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="albumId"></param>
        /// <param name="connString"></param>
        /// <returns>return new view count (view count after updating)</returns>
        internal static int increaseView(int albumId, string connString)
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
                        cmd.CommandText = "sony_sp_increase_album_view_count";
                        cmd.Parameters.AddWithValue("@albumId", albumId);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = (int)cmd.Parameters["@returnVal"].Value;
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Update Album Error: " + ex.Message, connString);
                    return rs;
                }
            }
            return rs;
            #endregion
        }
    }
}
