using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;

namespace SonyAlphaLibs
{
    interface IBaseFunction : IEnumerator
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="model"></param>
        virtual void getTotal(BaseModel model);
        /// <summary>
        /// 
        /// </summary>
        /// <param name="model"></param>
        void add(BaseModel model);
        /// <summary>
        /// 
        /// </summary>
        /// <param name="model"></param>
        virtual void removeById(int id);
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        List<BaseModel> getListAll();
        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        virtual BaseModel getById(int id);
    }
}
