﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace SonyAlphaLibs.Services
{
    public class PhotoServices : BaseService
    {
        internal static bool addPhoto(Photo photo, string connString)
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
                        cmd.CommandText = "sony_sp_add_photo";
                        cmd.Parameters.AddWithValue("@title", photo.Title);
                        cmd.Parameters.AddWithValue("@filename", photo.FileName);
                        cmd.Parameters.AddWithValue("@description", photo.Description);
                        cmd.Parameters.AddWithValue("@redirectUrl", photo.RedirectUrl);
                        cmd.Parameters.AddWithValue("@status", photo.Status ? 1 : 0);
                        cmd.Parameters.AddWithValue("@cameraName", photo.CameraName);
                        cmd.Parameters.AddWithValue("@cameraModel", photo.CameraModel);
                        cmd.Parameters.AddWithValue("@fStop", photo.FStop);
                        cmd.Parameters.AddWithValue("@exposureTime", photo.ExposureTime);
                        cmd.Parameters.AddWithValue("@iso", photo.ISO);
                        cmd.Parameters.AddWithValue("@exposureBlas", photo.ExposureBlas);
                        cmd.Parameters.AddWithValue("@focalLengh", photo.FocalLengh);
                        cmd.Parameters.AddWithValue("@maxAperture", photo.MaxAperture);
                        cmd.Parameters.AddWithValue("@materingMode", photo.MateringMode);
                        cmd.Parameters.AddWithValue("@subjectDistance", photo.SubjectDistance);
                        cmd.Parameters.AddWithValue("@flashMode", photo.FlashMode);
                        cmd.Parameters.AddWithValue("@flashEnergy", photo.FlashEnergy);
                        cmd.Parameters.AddWithValue("@viewCount", photo.ViewCount);
                        cmd.Parameters.AddWithValue("@voteCount", photo.VoteCount);
                        cmd.Parameters.AddWithValue("@likeCount", photo.LikeCount);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Add Photo Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        internal static bool updatePhoto(Photo photo, string connString)
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
                        cmd.CommandText = "sony_sp_update_photo";
                        cmd.Parameters.AddWithValue("@id", photo.Id);
                        cmd.Parameters.AddWithValue("@title", photo.Title);
                        cmd.Parameters.AddWithValue("@filename", photo.FileName);
                        cmd.Parameters.AddWithValue("@description", photo.Description);
                        cmd.Parameters.AddWithValue("@redirectUrl", photo.RedirectUrl);
                        cmd.Parameters.AddWithValue("@status", photo.Status ? 1 : 0);
                        cmd.Parameters.AddWithValue("@cameraName", photo.CameraName);
                        cmd.Parameters.AddWithValue("@cameraModel", photo.CameraModel);
                        cmd.Parameters.AddWithValue("@fStop", photo.FStop);
                        cmd.Parameters.AddWithValue("@exposureTime", photo.ExposureTime);
                        cmd.Parameters.AddWithValue("@iso", photo.ISO);
                        cmd.Parameters.AddWithValue("@exposureBlas", photo.ExposureBlas);
                        cmd.Parameters.AddWithValue("@focalLengh", photo.FocalLengh);
                        cmd.Parameters.AddWithValue("@maxAperture", photo.MaxAperture);
                        cmd.Parameters.AddWithValue("@materingMode", photo.MateringMode);
                        cmd.Parameters.AddWithValue("@subjectDistance", photo.SubjectDistance);
                        cmd.Parameters.AddWithValue("@flashMode", photo.FlashMode);
                        cmd.Parameters.AddWithValue("@flashEnergy", photo.FlashEnergy);
                        cmd.Parameters.AddWithValue("@viewCount", photo.ViewCount);
                        cmd.Parameters.AddWithValue("@voteCount", photo.VoteCount);
                        cmd.Parameters.AddWithValue("@likeCount", photo.LikeCount);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Update Photo Error: " + ex.Message, connString);
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

        internal static List<Photo> getListAll(string connString)
        {
            #region code
            List<Photo> lists = new List<Photo>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_photo";

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
                                photo.Status = reader["status"].ToString().Equals("1") || reader["status"].ToString().Equals("True");
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
                    writeLog("", "Get All Photo Error: " + ex.Message, connString);
                    return new List<Photo>();
                }
            }
            return lists;
            #endregion
        }

        internal static Photo getById(int id, string connString)
        {
            #region code
            Photo photo = new Photo();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_photo_by_id";
                        cmd.Parameters.AddWithValue("@id", id);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                photo.Id = (int)reader["id"];
                                photo.Title = reader["title"].ToString();
                                photo.FileName = reader["filename"].ToString();
                                photo.Description = reader["description"].ToString();
                                photo.RedirectUrl = reader["redirectUrl"].ToString();
                                photo.Status = reader["status"].ToString().Equals("1") || reader["status"].ToString().Equals("True");
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
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get Photo Error: " + ex.Message, connString);
                    return new Photo();
                }
            }
            return photo;
            #endregion
        }

        internal static int getViewCount(int photoId, string connString)
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
                        cmd.CommandText = "sony_sp_get_photo_view_count";
                        cmd.Parameters.AddWithValue("@id", photoId);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = (int)cmd.Parameters["@returnVal"].Value;
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get Photo Error: " + ex.Message, connString);
                    return rs;
                }
            }
            return rs;
            #endregion
        }

        internal static int getVoteCount(int photoId, string connString)
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
                        cmd.CommandText = "sony_sp_get_photo_vote_count";
                        cmd.Parameters.AddWithValue("@id", photoId);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = (int)cmd.Parameters["@returnVal"].Value;
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get Photo Error: " + ex.Message, connString);
                    return rs;
                }
            }
            return rs;
            #endregion
        }

        internal static int getLikeCount(int photoId, string connString)
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
                        cmd.CommandText = "sony_sp_get_photo_like_count";
                        cmd.Parameters.AddWithValue("@id", photoId);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = (int)cmd.Parameters["@returnVal"].Value;
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get Photo Error: " + ex.Message, connString);
                    return rs;
                }
            }
            return rs;
            #endregion
        }

        internal static int increaseViewCount(int photoId, string connString)
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
                        cmd.CommandText = "sony_sp_increase_photo_view_count";
                        cmd.Parameters.AddWithValue("@id", photoId);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = (int)cmd.Parameters["@returnVal"].Value;
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Update Photo Error: " + ex.Message, connString);
                    return rs;
                }
            }
            return rs;
            #endregion
        }

        internal static int increaseVoteCount(int photoId, string connString)
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
                        cmd.CommandText = "sony_sp_increase_photo_vote_count";
                        cmd.Parameters.AddWithValue("@id", photoId);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = (int)cmd.Parameters["@returnVal"].Value;
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Update Photo Error: " + ex.Message, connString);
                    return rs;
                }
            }
            return rs;
            #endregion
        }

        internal static int increaseLikeCount(int photoId, string connString)
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
                        cmd.CommandText = "sony_sp_increase_photo_like_count";
                        cmd.Parameters.AddWithValue("@id", photoId);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = (int)cmd.Parameters["@returnVal"].Value;
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Update Photo Error: " + ex.Message, connString);
                    return rs;
                }
            }
            return rs;
            #endregion
        }
    }
}