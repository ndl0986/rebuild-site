using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class UserGroup : BaseModel, IBaseFunction<UserGroup>
    {
        private string groupName;

        public string GroupName
        {
            get { return groupName; }
            set { groupName = value; }
        }

        private bool isSuper;

        public bool IsSuper
        {
            get { return isSuper; }
            set { isSuper = value; }
        }

        public bool add(String connString) 
        {
            return UserGroupServices.addUserGroup(this, connString);    
        }

        public bool update(String connString)
        {
            return UserGroupServices.update(this, connString);
        }

        public bool removeById(String connString)
        {
            return false;
        }

        public List<UserGroup> getListAll(String connString)
        {
            return UserGroupServices.getListAll(connString);
        }

        public UserGroup getById(String connString)
        {
            return UserGroupServices.getById(Id, connString);
        }
    }
}
