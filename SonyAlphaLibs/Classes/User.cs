using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

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
        
        public bool add(String connString) 
        {            
            return UserServices.addUser(this, connString);
        }

        public bool update(String connString)
        {
            return UserServices.update(this, connString);
        }

        public bool removeById(int id)
        {
            return false;
        }

        public List<User> getListAll(String connString)
        {
            return new List<User>();
        }

        public User getById(int id, String connString)
        {
            return UserServices.getById(id, connString);
        }

        public bool login(String connString)
        {
            return UserServices.login(this.UserName, this.PassWord, connString);
        }
    }
}
