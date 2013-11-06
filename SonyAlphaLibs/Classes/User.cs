using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SonyAlphaLibs
{
    public class User : BaseModel, IBaseFunction<User>
    {
        private string userName;

        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }

        private string passWord;

        public string PassWord
        {
            get { return passWord; }
            set { passWord = value; }
        }

        private string fullName;

        public string FullName
        {
            get { return fullName; }
            set { fullName = value; }
        }
        
        private Boolean status;

        public Boolean Status
        {
            get { return status; }
            set { status = value; }
        }

        private int groupId;

        public int GroupId
        {
            get { return groupId; }
            set { groupId = value; }
        }

        public DateTime Registered
        {
            get { return base.Created; }
            set { base.Created = value; }
        }
        
        //void User(int _id, string _userName, string _passWord, string _fullName,
        //        bool _status, int _groupId, DateTime _registered, DateTime _updated) 
        //{
        //    base.Id = _id;
        //    UserName = _userName;
        //    PassWord = _passWord;
        //    FullName = _fullName;
        //    Status = _status;
        //    GroupId = _groupId;
        //    Registered = _registered;
        //    Updated = _updated;
        //}

        public bool add(User user) 
        {
            return false;    
        }

        public bool removeById(int id)
        {
            return false;
        }

        public List<User> getListAll()
        {
            return new List<User>();
        }

        public User getById(int id)
        {
            return new User();
        }
    }
}
