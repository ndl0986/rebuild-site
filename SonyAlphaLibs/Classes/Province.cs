using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class Province : BaseModel, IBaseFunction<Province>
    {
        #region fields
        private string province;

        public string SProvince
        {
            get { return province; }
            set { province = value; }
        }
        
        private int provinceOrder;

        public int ProvinceOrder
        {
            get { return provinceOrder; }
            set { provinceOrder = value; }
        }
        #endregion
        
        #region base method
        public bool add(String connString)
        {
            return ProvinceServices.addProvince(this, connString);
        }

        public bool update(String connString)
        {
            return ProvinceServices.updateProvince(this, connString);
        }

        public bool removeById(String connString)
        {
            return ProvinceServices.removeProvinceById(base.Id, connString);
        }

        public List<Province> getListAll(String connString)
        {
            return ProvinceServices.getListAllProvince(connString);
        }

        public Province getById(String connString)
        {
            return ProvinceServices.getProvinceById(base.Id, connString);
        }
        #endregion

        #region ext method
        public List<Province> getProvinceByName(String connString)
        {
            return ProvinceServices.getProvinceByName(this.SProvince, connString);
        }
        #endregion
    }
}
