using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SonyAlphaLibs.Services
{
    public static class UserServices
    {
        public static bool addUser(User user, String connString)
        {
            
            return false;
        }

        public static User getById(int id, String connString)
        {
            return new User();
        }

        public static List<User> getListAll(String connString)
        {
            return new List<User>();
        }

        public static bool login(User user, String connString)
        {
            return true;
        }
    }
}
