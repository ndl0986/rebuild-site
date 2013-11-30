using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class QuestionAnswer : BaseModel, IBaseFunction<QuestionAnswer>
    {
        #region fields
        private string question;

        public string Question
        {
            get { return question; }
            set { question = value; }
        }

        private string answer;

        public string Answer
        {
            get { return answer; }
            set { answer = value; }
        }
        #endregion

        #region base method
        public bool add(string connString)
        {
            return QAServices.addQA(this, connString);
        }

        public bool update(string connString)
        {
            return QAServices.updateQA(this, connString);
        }

        public bool removeById(string connString)
        {
            return QAServices.removeById(base.Id, connString);
        }

        public List<QuestionAnswer> getListAll(string connString)
        {
            return QAServices.getListAll(connString);
        }

        public QuestionAnswer getById(string connString)
        {
            return QAServices.getById(base.Id, connString);
        }
        #endregion
    }
}
