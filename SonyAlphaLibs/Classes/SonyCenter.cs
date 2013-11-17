using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class SonyCenter : BaseModel, IBaseFunction<SonyCenter>
    {
        #region fields
        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        private string address;

        public string Address
        {
            get { return address; }
            set { address = value; }
        }

        private string phone;

        public string Phone
        {
            get { return phone; }
            set { phone = value; }
        }

        private string fax;

        public string Fax
        {
            get { return fax; }
            set { fax = value; }
        }

        private string province;

        public string Province
        {
            get { return province; }
            set { province = value; }
        }

        private string description;

        public string Description
        {
            get { return description; }
            set { description = value; }
        }

        private int retailLevel;

        public int RetailLevel
        {
            get { return retailLevel; }
            set { retailLevel = value; }
        }

        private string centerImage;

        public string CenterImage
        {
            get { return centerImage; }
            set { centerImage = value; }
        }

        private string openTime;

        public string OpenTime
        {
            get { return openTime; }
            set { openTime = value; }
        }

        private string closeTime;

        public string CloseTime
        {
            get { return closeTime; }
            set { closeTime = value; }
        }

        private string longitude;

        public string Longitude
        {
            get { return longitude; }
            set { longitude = value; }
        }

        private string latitude;

        public string Latitude
        {
            get { return latitude; }
            set { latitude = value; }
        }
        
        #endregion

        #region base method
        public bool add(String connString)
        {
            return SonyCenterServices.addCenter(this, connString);
        }

        public bool update(String connString)
        {
            return SonyCenterServices.updateCenter(this, connString);
        }

        public bool removeById(String connString)
        {
            return SonyCenterServices.removeCenterById(base.Id, connString);
        }

        public List<SonyCenter> getListAll(String connString)
        {
            return SonyCenterServices.getListAllCenter(connString);
        }

        public SonyCenter getById(String connString)
        {
            return SonyCenterServices.getCenterById(this.Id, connString);
        }

        public int getCurrentMaxId(String connString)
        {
            return SonyCenterServices.getCurrentMaxId("sony_center", connString);
        }
        #endregion
    }
}
