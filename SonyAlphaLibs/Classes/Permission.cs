using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class Permission : BaseModel, IBaseFunction<Permission>
    {
        #region fields
        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        private bool allowInsert;

        public bool AllowInsert
        {
            get { return allowInsert; }
            set { allowInsert = value; }
        }

        private bool allowUpdate;

        public bool AllowUpdate
        {
            get { return allowUpdate; }
            set { allowUpdate = value; }
        }

        private bool allowDelete;

        public bool AllowDelete
        {
            get { return allowDelete; }
            set { allowDelete = value; }
        } 
        #endregion

        #region base method
        public bool add(String connString)
        {
            return PermissionServices.addPermission(this, connString);
        }

        public bool update(String connString)
        {
            return PermissionServices.updatePermission(this, connString);
        }

        public bool delete(String connString)
        {
            return PermissionServices.deletePermission(this, connString);
        }

        public List<Permission> getListAll(String connString)
        {
            return PermissionServices.getListAll(connString);
        }

        public Permission getById(String connString)
        {
            return PermissionServices.getById(base.Id, connString);
        } 
        #endregion

        #region ext method
        public Permission getByName(String connString)
        {
            return PermissionServices.getByName(this.Name, connString);
        }

        public bool removeById(String connString)
        {
            return PermissionServices.removeById(base.Id, connString);
        } 
        #endregion

        #region constructor
        public Permission() { }

        public Permission(String connString)
        {
            base.ConnString = connString;
        }
        #endregion
    }
}
