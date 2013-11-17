using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class Setting : BaseModel, IBaseFunction<Setting>
    {
        #region fields
        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        private string svalue;

        public string Value
        {
            get { return svalue; }
            set { svalue = value; }
        }

        #endregion

        #region base method
        public bool add(String connString)
        {
            return SettingServices.addSetting(this, connString);
        }

        public bool update(String connString)
        {
            return SettingServices.updateSetting(this, connString);
        }

        public bool removeById(String connString)
        {
            return SettingServices.removeById(base.Id, connString);
        }

        public List<Setting> getListAll(String connString)
        {
            return SettingServices.getListAll(connString);
        }

        public Setting getById(String connString)
        {
            return SettingServices.getById(base.Id, connString);
        }
        #endregion

        #region ext method
        public Setting getByName(String connString)
        {
            return SettingServices.getByName(this.Name, connString);
        }
        #endregion

        #region constructor
        public Setting() { }

        public Setting(String connString)
        {
            base.ConnString = connString;
        }
        #endregion
    }
}
