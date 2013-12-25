using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace SonyAlphaLibs.Services
{
    public class AlbumServices : BaseService
    {
        public static bool addAlbum(Album album, string connString)
        {
            #region code
            bool rs;
            using (var conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_add_album";
                        cmd.Parameters.AddWithValue("@fullname", album.FullName);
                        cmd.Parameters.AddWithValue("@albumCreator",
                            String.IsNullOrEmpty(album.AlbumCreator) ? "admin" : album.AlbumCreator);
                        cmd.Parameters.AddWithValue("@albumImage",
                            String.IsNullOrEmpty(album.AlbumImage) ? "" : album.AlbumImage);
                        cmd.Parameters.AddWithValue("@viewCount", album.ViewCount);
                        cmd.Parameters.AddWithValue("@albumType", album.AlbumType);
                        cmd.Parameters.AddWithValue("@albumCover", album.AlbumCover);
                        var returnVal = new SqlParameter("@returnVal", SqlDbType.Int)
                        {
                            Direction = ParameterDirection.Output
                        };
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int) cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog ("", "Add Album Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;

            #endregion
        }

        public static bool updateAlbum(Album album, string connString)
        {
            #region code

            bool rs;
            using (var conn = new SqlConnection(connString))
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
                        cmd.Parameters.AddWithValue("@albumCreator",
                            String.IsNullOrEmpty(album.AlbumCreator) ? "admin" : album.AlbumCreator);
                        cmd.Parameters.AddWithValue("@albumImage",
                            String.IsNullOrEmpty(album.AlbumImage) ? "" : album.AlbumImage);
                        cmd.Parameters.AddWithValue("@viewCount", album.ViewCount);
                        cmd.Parameters.AddWithValue("@albumType", album.AlbumType);
                        cmd.Parameters.AddWithValue("@albumCover", album.AlbumCover);
                        var returnVal = new SqlParameter("@returnVal", SqlDbType.Int)
                        {
                            Direction = ParameterDirection.Output
                        };
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int) cmd.Parameters["@returnVal"].Value != 0);
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

        public static bool removeById(int id, string connString)
        {
            #region code

            bool rs;
            using (var conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_delete_album_by_id";
                        cmd.Parameters.AddWithValue("@id", id);
                        var returnVal = new SqlParameter("@returnVal", SqlDbType.Int)
                        {
                            Direction = ParameterDirection.Output
                        };
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int) cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Delete Album Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;

            #endregion
        }

        public static List<Album> getListAll(string connString)
        {
            #region code

            var lists = new List<Album>();
            using (var conn = new SqlConnection(connString))
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
                                var album = new Album
                                {
                                    Id = (int) reader["id"],
                                    FullName = reader["fullname"].ToString(),
                                    AlbumCreator = reader["albumCreator"].ToString(),
                                    AlbumImage = reader["albumImage"].ToString(),
                                    ViewCount = (int) reader["viewCount"],
                                    AlbumType =
                                        String.IsNullOrEmpty(reader["albumType"].ToString())
                                            ? 0
                                            : (int) reader["albumType"],
                                    AlbumCover = reader["albumCover"].ToString(),
                                    TotalPhoto = (int) reader["TotalPhoto"],
                                    Created = (DateTime) reader["created"],
                                    Updated = (DateTime) reader["updated"]
                                };
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

        public static Album getById(int id, string connString)
        {
            #region code

            var album = new Album();
            using (var conn = new SqlConnection(connString))
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
                                album.Id = (int) reader["id"];
                                album.FullName = reader["fullname"].ToString();
                                album.AlbumCreator = reader["albumCreator"].ToString();
                                album.AlbumImage = reader["albumImage"].ToString();
                                album.ViewCount = (int) reader["viewCount"];
                                album.AlbumType = String.IsNullOrEmpty(reader["albumType"].ToString())
                                    ? 0
                                    : (int) reader["albumType"];
                                album.AlbumCover = reader["albumCover"].ToString();
                                album.TotalPhoto = (int) reader["TotalPhoto"];
                                album.Created = (DateTime) reader["created"];
                                album.Updated = (DateTime) reader["updated"];
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

        public static List<Photo> getPhotoOfAlbum(string listImageIds, string connString)
        {
            #region code

            var lists = new List<Photo>();
            if (!String.IsNullOrEmpty(listImageIds))
            {
                using (var conn = new SqlConnection(connString))
                {
                    try
                    {
                        conn.Open();
                        using (SqlCommand cmd = conn.CreateCommand())
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.CommandText = "sony_sp_get_album_list_photo";
                            cmd.Parameters.AddWithValue("@listPhotoIds", listImageIds);

                            using (SqlDataReader reader = cmd.ExecuteReader())
                            {
                                while (reader.Read())
                                {
                                    var photo = new Photo
                                    {
                                        Id = (int) reader["id"],
                                        Title = reader["title"].ToString(),
                                        FileName = reader["filename"].ToString(),
                                        Description = reader["description"].ToString(),
                                        RedirectUrl = reader["redirectUrl"].ToString(),
                                        Status =
                                            reader["status"].ToString().Equals("1") ||
                                            reader["status"].ToString().Equals("True"),
                                        CameraName = reader["cameraName"].ToString(),
                                        CameraModel = reader["cameraModel"].ToString(),
                                        FStop = reader["fStop"].ToString(),
                                        ExposureTime = reader["exposureTime"].ToString(),
                                        ISO = reader["iso"].ToString(),
                                        ExposureBlas = reader["exposureBlas"].ToString(),
                                        FocalLengh = reader["focalLengh"].ToString(),
                                        MaxAperture = reader["maxAperture"].ToString(),
                                        MateringMode = reader["materingMode"].ToString(),
                                        SubjectDistance = reader["subjectDistance"].ToString(),
                                        FlashMode = reader["flashMode"].ToString(),
                                        FlashEnergy = reader["flashEnergy"].ToString(),
                                        ViewCount = (int) reader["viewCount"],
                                        VoteCount = (int) reader["voteCount"],
                                        LikeCount = (int) reader["likeCount"],
                                        Created = (DateTime) reader["created"],
                                        Updated = (DateTime) reader["updated"]
                                    };
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

        //public static bool SetPhoto2Album(Photo photo, string connString)
        //{
        //    throw new NotImplementedException();
        //}

        public static bool setPhoto2Album(int albumId, List<Photo> listPhotos, string connString)
        {
            #region code

            bool rs;
            string photoIds = "";
            if (listPhotos != null && listPhotos.Count > 0)
            {
                photoIds = listPhotos.Aggregate(photoIds, (current, photo) => current + (photo.Id + ","));
            }
            if (photoIds.EndsWith(","))
            {
                photoIds = photoIds.Substring(0, photoIds.Length - 1);
            }
            using (var conn = new SqlConnection(connString))
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
                        var returnVal = new SqlParameter("@returnVal", SqlDbType.Int)
                        {
                            Direction = ParameterDirection.Output
                        };
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int) cmd.Parameters["@returnVal"].Value != 0);
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

        public static bool setPhoto2Album(int albumId, int photoId, string connString)
        {
            #region code

            bool rs;
            using (var conn = new SqlConnection(connString))
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
                        var returnVal = new SqlParameter("@returnVal", SqlDbType.Int)
                        {
                            Direction = ParameterDirection.Output
                        };
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int) cmd.Parameters["@returnVal"].Value != 0);
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

        public static bool setPhoto2Album(int albumId, List<int> listPhotos, string connString)
        {
            #region code

            bool rs;
            string photoIds = "";
            if (listPhotos != null && listPhotos.Count > 0)
            {
                photoIds = listPhotos.Aggregate(photoIds, (current, photo) => current + (photo + ","));
            }
            if (photoIds.EndsWith(","))
            {
                photoIds = photoIds.Substring(0, photoIds.Length - 1);
            }
            using (var conn = new SqlConnection(connString))
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
                        var returnVal = new SqlParameter("@returnVal", SqlDbType.Int)
                        {
                            Direction = ParameterDirection.Output
                        };
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int) cmd.Parameters["@returnVal"].Value != 0);
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

        public static bool setComment2Album(AlbumComment albumComment, string connString)
        {
            #region code

            bool rs;
            using (var conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_add_album_comment";
                        cmd.Parameters.AddWithValue("@username",
                            String.IsNullOrEmpty(albumComment.UserName) ? "admin" : albumComment.UserName);
                        cmd.Parameters.AddWithValue("@albumId", albumComment.AlbumId);
                        cmd.Parameters.AddWithValue("@photoId", albumComment.PhotoId);
                        cmd.Parameters.AddWithValue("@status", albumComment.Status ? 1 : 0);
                        cmd.Parameters.AddWithValue("@comment", albumComment.Comment);
                        var returnVal = new SqlParameter("@returnVal", SqlDbType.Int)
                        {
                            Direction = ParameterDirection.Output
                        };
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int) cmd.Parameters["@returnVal"].Value != 0);
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

        public static List<AlbumComment> getListCommentOfAlbum(int albumId, int photoId, string connString)
        {
            #region code

            var lists = new List<AlbumComment>();
            using (var conn = new SqlConnection(connString))
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
                                var albumComment = new AlbumComment
                                {
                                    Id = (int) reader["id"],
                                    UserName = reader["username"].ToString(),
                                    AlbumId = (int) reader["albumId"],
                                    PhotoId = (int) reader["photoId"],
                                    Status =
                                        reader["status"].ToString().Equals("1") ||
                                        reader["status"].ToString().Equals("True"),
                                    Created = (DateTime) reader["created"],
                                    Comment = reader["comment"].ToString()
                                };
                                lists.Add(albumComment);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("",
                        String.Format("Get Album Comment Error: albumId={0}, photoId={1}, CauseBy:{2}", albumId, photoId,
                            ex.Message), connString);
                    return new List<AlbumComment>();
                }
            }
            return lists;

            #endregion
        }

        public static List<AlbumComment> getListCommentOfAlbum(int photoId, string connString)
        {
            #region code

            var lists = new List<AlbumComment>();
            using (var conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_album_photo_comment_by_photo_id";
                        cmd.Parameters.AddWithValue("@photoId", photoId);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var albumComment = new AlbumComment
                                {
                                    Id = (int) reader["id"],
                                    UserName = reader["username"].ToString(),
                                    AlbumId = (int) reader["albumId"],
                                    PhotoId = (int) reader["photoId"],
                                    Status =
                                        reader["status"].ToString().Equals("1") ||
                                        reader["status"].ToString().Equals("True"),
                                    Created = (DateTime) reader["created"],
                                    Comment = reader["comment"].ToString()
                                };
                                lists.Add(albumComment);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", String.Format("Get Album Comment Error: photoId={0}, CauseBy:{1}", photoId, ex.Message),
                        connString);
                    return new List<AlbumComment>();
                }
            }
            return lists;

            #endregion
        }
        public static List<AlbumComment> getListCommentByAlbum(int albumId, string connString)
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
                        cmd.CommandText = "sony_sp_get_all_album_photo_comment_by_album_id";
                        cmd.Parameters.AddWithValue("@albumId", albumId);

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
                                albumComment.Comment = reader["comment"].ToString();
                                lists.Add(albumComment);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", String.Format("Get Album Comment Error: photoId={1}, CauseBy:{2}", albumId, ex.Message), connString);
                    return new List<AlbumComment>();
                }
            }
            return lists;
            #endregion
        }
        public static int getViewCount(int albumId, string connString)
        {
            #region code

            int rs = 0;
            using (var conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_album_view_count";
                        cmd.Parameters.AddWithValue("@albumId", albumId);
                        var returnVal = new SqlParameter("@returnVal", SqlDbType.Int)
                        {
                            Direction = ParameterDirection.Output
                        };
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = (int) cmd.Parameters["@returnVal"].Value;
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
        /// </summary>
        /// <param name="albumId"></param>
        /// <param name="connString"></param>
        /// <returns>return new view count (view count after updating)</returns>
        public static int increaseView(int albumId, string connString)
        {
            #region code

            int rs = 0;
            using (var conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_increase_album_view_count";
                        cmd.Parameters.AddWithValue("@albumId", albumId);
                        var returnVal = new SqlParameter("@returnVal", SqlDbType.Int)
                        {
                            Direction = ParameterDirection.Output
                        };
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = (int) cmd.Parameters["@returnVal"].Value;
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

        public static List<Album> getListAllNormalAlbum(string connString)
        {
            #region code

            var lists = new List<Album>();
            using (var conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_album_normal";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var album = new Album
                                {
                                    Id = (int) reader["id"],
                                    FullName = reader["fullname"].ToString(),
                                    AlbumCreator = reader["albumCreator"].ToString(),
                                    AlbumImage = reader["albumImage"].ToString(),
                                    ViewCount = (int) reader["viewCount"],
                                    AlbumType = (int) reader["albumType"],
                                    AlbumCover = reader["albumCover"].ToString(),
                                    TotalPhoto = (int) reader["TotalPhoto"],
                                    Created = (DateTime) reader["created"],
                                    Updated = (DateTime) reader["updated"]
                                };
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

        public static List<Album> getListAllAlbumForCenter(string connString)
        {
            #region code

            var lists = new List<Album>();
            using (var conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_album_for_center";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var album = new Album
                                {
                                    Id = (int) reader["id"],
                                    FullName = reader["fullname"].ToString(),
                                    AlbumCreator = reader["albumCreator"].ToString(),
                                    AlbumImage = reader["albumImage"].ToString(),
                                    ViewCount = (int) reader["viewCount"],
                                    AlbumType = (int) reader["albumType"],
                                    AlbumCover = reader["albumCover"].ToString(),
                                    Created = (DateTime) reader["created"],
                                    Updated = (DateTime) reader["updated"]
                                };
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

        public static List<Album> getListAllAlbumForProductCategory(string connString)
        {
            #region code

            var lists = new List<Album>();
            using (var conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_album_for_product_category";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var album = new Album
                                {
                                    Id = (int) reader["id"],
                                    FullName = reader["fullname"].ToString(),
                                    AlbumCreator = reader["albumCreator"].ToString(),
                                    AlbumImage = reader["albumImage"].ToString(),
                                    ViewCount = (int) reader["viewCount"],
                                    AlbumType = (int) reader["albumType"],
                                    AlbumCover = reader["albumCover"].ToString(),
                                    Created = (DateTime) reader["created"],
                                    Updated = (DateTime) reader["updated"]
                                };
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

        public static bool removeCommentById(int id, string connString)
        {
            #region code

            bool rs;
            using (var conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_delete_album_comment_by_id";
                        cmd.Parameters.AddWithValue("@id", id);
                        var returnVal = new SqlParameter("@returnVal", SqlDbType.Int)
                        {
                            Direction = ParameterDirection.Output
                        };
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int) cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Delete Album Comment Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;

            #endregion
        }

        public static bool updateAlbumComment(int id, string comment, string connString)
        {
            #region code

            bool rs;
            using (var conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_update_album_comment";
                        cmd.Parameters.AddWithValue("@id", id);
                        cmd.Parameters.AddWithValue("@comment", comment);
                        var returnVal = new SqlParameter("@returnVal", SqlDbType.Int)
                        {
                            Direction = ParameterDirection.Output
                        };
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int) cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Update Album Comment Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;

            #endregion
        }

        public static int getTotalPhotoOfAlbum(int albumId, string connString)
        {
            #region code

            int rs = 0;
            using (var conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_album_photo";
                        cmd.Parameters.AddWithValue("@albumId", albumId);
                        var returnVal = new SqlParameter("@returnVal", SqlDbType.Int)
                        {
                            Direction = ParameterDirection.Output
                        };
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = (int) cmd.Parameters["@returnVal"].Value;
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get Album Error: " + ex.Message, connString);
                    return rs;
                }
            }
            return rs;

            #endregion
        }

        /// <summary>
        ///     Get list all album comment
        /// </summary>
        /// <param name="connString"></param>
        /// <returns></returns>
        public static List<AlbumComment> getListComment(string connString)
        {
            #region code

            var lists = new List<AlbumComment>();
            using (var conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_album_comment";

                        using (var reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                var albumComment = new AlbumComment
                                {
                                    Id = (int) reader["id"],
                                    AlbumId =
                                        String.IsNullOrEmpty(reader["albumId"].ToString()) ? 0 : (int) reader["albumId"],
                                    PhotoId =
                                        String.IsNullOrEmpty(reader["photoId"].ToString()) ? 0 : (int) reader["photoId"],
                                    Comment = reader["comment"].ToString(),
                                    Status =
                                        reader["status"].ToString().Equals("1") ||
                                        reader["status"].ToString().Equals("True"),
                                    UserName = reader["username"].ToString(),
                                    Created = (DateTime) reader["created"]
                                };
                                lists.Add(albumComment);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get All AlbumComment Error: " + ex.Message, connString);
                    return new List<AlbumComment>();
                }
            }
            return lists;

            #endregion
        }

        public static AlbumComment getCommentById(int commentId, string connString)
        {
            #region code

            var rs = new AlbumComment();
            using (var conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_album_comment_by_id";
                        cmd.Parameters.AddWithValue("@id", commentId);

                        using (var reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                rs.AlbumId = String.IsNullOrEmpty(reader["albumId"].ToString())
                                    ? 0
                                    : (int) reader["albumId"];
                                rs.PhotoId = String.IsNullOrEmpty(reader["photoId"].ToString())
                                    ? 0
                                    : (int) reader["photoId"];
                                rs.Comment = reader["comment"].ToString();
                                rs.Status = reader["status"].ToString().Equals("1") ||
                                            reader["status"].ToString().Equals("True");
                                rs.UserName = reader["username"].ToString();
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get Album Comment Error: " + ex.Message, connString);
                    return new AlbumComment();
                }
            }
            return rs;

            #endregion
        }
    }
}