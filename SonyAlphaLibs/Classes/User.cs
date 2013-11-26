using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class User : BaseModel, IBaseFunction<User>
    {
        #region fields
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

        private string phone;

        public string Phone
        {
            get { return phone; }
            set { phone = value; }
        }

        private string email;

        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        

        public string GroupName { get; set; }
        public string DefaultPass { get; set; }
        public string ProductUsed { get; set; } // user for register
        #endregion

        #region base method
        public bool add(String connString)
        {
            return UserServices.addUser(this, connString);
        }

        public bool update(String connString)
        {
            return UserServices.update(this, connString);
        }

        public bool removeById(String connString)
        {
            return UserServices.removeById(base.Id, connString);
        }

        public List<User> getListAll(String connString)
        {
            return UserServices.getListAll(connString);
        }

        public User getById(String connString)
        {
            return UserServices.getById(Id, connString);
        } 
        #endregion

        #region ext method
        public bool login(String connString)
        {
            return UserServices.login(this.UserName, this.PassWord, connString);
        }

        public bool loginEmail(String connString)
        {
            return UserServices.loginEmail(this.Email, this.PassWord, connString);
        }
        public User getByUserName(String connString)
        {
            return UserServices.getByUserName(this.UserName, connString);
        }

        public bool updateFullNameStatusGroup(String connString)
        {
            return UserServices.updateFullNameStatus(this, connString);
        }

        public bool resetPasswordToDefault(String connString)
        {
            return UserServices.resetPasswordToDefault(this.UserName, this.DefaultPass , connString);
        }
        #endregion

        #region constructor
        public User() { }

        public User(String connString)
        {
            base.ConnString = connString;
        }
        #endregion
    }
}
