using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SonyAlphaLibs.Services;

namespace SonyAlphaLibs
{
    public class Photo : BaseModel, IBaseFunction<Photo>
    {
        #region fields
        private string title;

        public string Title
        {
            get { return title; }
            set { title = value; }
        }

        private string fileName;

        public string FileName
        {
            get { return fileName; }
            set { fileName = value; }
        }

        private string description;

        public string Description
        {
            get { return description; }
            set { description = value; }
        }

        private string redirectUrl;

        public string RedirectUrl
        {
            get { return redirectUrl; }
            set { redirectUrl = value; }
        }

        private bool status;

        public bool Status
        {
            get { return status; }
            set { status = value; }
        }

        private string cameraName;

        public string CameraName
        {
            get { return cameraName; }
            set { cameraName = value; }
        }

        private string cameraModel;

        public string CameraModel
        {
            get { return cameraModel; }
            set { cameraModel = value; }
        }

        private string fStop;

        public string FStop
        {
            get { return fStop; }
            set { fStop = value; }
        }

        private string exposureTime;

        public string ExposureTime
        {
            get { return exposureTime; }
            set { exposureTime = value; }
        }

        private string iso;

        public string ISO
        {
            get { return iso; }
            set { iso = value; }
        }

        private string exposureBlas;

        public string ExposureBlas
        {
            get { return exposureBlas; }
            set { exposureBlas = value; }
        }

        private string focalLengh;

        public string FocalLengh
        {
            get { return focalLengh; }
            set { focalLengh = value; }
        }

        private string maxAperture;

        public string MaxAperture
        {
            get { return maxAperture; }
            set { maxAperture = value; }
        }

        private string materingMode;

        public string MateringMode
        {
            get { return materingMode; }
            set { materingMode = value; }
        }

        private string subjectDistance;

        public string SubjectDistance
        {
            get { return subjectDistance; }
            set { subjectDistance = value; }
        }

        private string flashMode;

        public string FlashMode
        {
            get { return flashMode; }
            set { flashMode = value; }
        }

        private string flashEnergy;

        public string FlashEnergy
        {
            get { return flashEnergy; }
            set { flashEnergy = value; }
        }

        private int viewCount;

        public int ViewCount
        {
            get { return viewCount; }
            set { viewCount = value; }
        }

        private int voteCount;

        public int VoteCount
        {
            get { return voteCount; }
            set { voteCount = value; }
        }

        private int likeCount;

        public int LikeCount
        {
            get { return likeCount; }
            set { likeCount = value; }
        }

        private string userUpload;

        public string UserUpload
        {
            get { return userUpload; }
            set { userUpload = value; }
        }
        
        #endregion

        #region base method
        public bool add(String connString)
        {
            return PhotoServices.addPhoto(this, connString);
        }

        public bool update(String connString)
        {
            return PhotoServices.updatePhoto(this, connString);
        }

        public bool removeById(String connString)
        {
            return PhotoServices.removeById(base.Id, connString);
        }

        public List<Photo> getListAll(String connString)
        {
            return PhotoServices.getListAll(connString);
        }

        public Photo getById(String connString)
        {
            return PhotoServices.getById(base.Id, connString);
        }
        #endregion

        #region ext method
        public int getViewCount(String connString)
        {
            return PhotoServices.getViewCount(base.Id, connString);
        }

        public int getVoteCount(String connString)
        {
            return PhotoServices.getVoteCount(base.Id, connString);
        }

        public int getLikeCount(String connString)
        {
            return PhotoServices.getLikeCount(base.Id, connString);
        }

        public int increaseViewCount(String connString)
        {
            return PhotoServices.increaseViewCount(base.Id, connString);
        }

        public int increaseVoteCount(String connString)
        {
            return PhotoServices.increaseVoteCount(base.Id, connString);
        }

        public int increaseLikeCount(String connString)
        {
            return PhotoServices.increaseLikeCount(base.Id, connString);
        }
        #endregion

        #region constructor
        public Photo() { }

        public Photo(String connString)
        {
            base.ConnString = connString;
        }
        #endregion
    }
}
