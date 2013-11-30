using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace SonyAlphaLibs.Services
{
    public class QAServices : BaseService
    {
        public static bool addQA(QuestionAnswer questionAnswer, string connString)
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
                        cmd.CommandText = "sony_sp_add_faq";
                        cmd.Parameters.AddWithValue("@question", questionAnswer.Question);
                        cmd.Parameters.AddWithValue("@answer", questionAnswer.Answer);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Add Faq Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static bool updateQA(QuestionAnswer questionAnswer, string connString)
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
                        cmd.CommandText = "sony_sp_update_faq";
                        cmd.Parameters.AddWithValue("@id", questionAnswer.Id);
                        cmd.Parameters.AddWithValue("@question", questionAnswer.Question);
                        cmd.Parameters.AddWithValue("@answer", questionAnswer.Answer);
                        SqlParameter returnVal = new SqlParameter("@returnVal", SqlDbType.Int);
                        returnVal.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(returnVal);

                        cmd.ExecuteNonQuery();
                        rs = ((int)cmd.Parameters["@returnVal"].Value != 0);
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Update Faq Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static bool removeById(int id, string connString)
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
                        cmd.CommandText = "sony_sp_delete_faq_id";
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
                    writeLog("", "Delete Faq Error: " + ex.Message, connString);
                    return false;
                }
            }
            return rs;
            #endregion
        }

        public static List<QuestionAnswer> getListAll(string connString)
        {
            #region code
            List<QuestionAnswer> lists = new List<QuestionAnswer>();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_all_faq";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                QuestionAnswer qa = new QuestionAnswer();
                                qa.Id = (int)reader["id"];
                                qa.Question = reader["question"].ToString();
                                qa.Answer = reader["answer"].ToString();
                                lists.Add(qa);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get All QuestionAnswer Error: " + ex.Message, connString);
                    return new List<QuestionAnswer>();
                }
            }
            return lists;
            #endregion
        }

        public static QuestionAnswer getById(int id, string connString)
        {
            #region code
            QuestionAnswer qa = new QuestionAnswer();
            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "sony_sp_get_faq_by_id";
                        cmd.Parameters.AddWithValue("@id", id);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                qa.Id = (int)reader["id"];
                                qa.Question = reader["question"].ToString();
                                qa.Answer = reader["answer"].ToString();
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    writeLog("", "Get QuestionAnswer Error: " + ex.Message, connString);
                    return new QuestionAnswer();
                }
            }
            return qa;
            #endregion
        }
    }
}
