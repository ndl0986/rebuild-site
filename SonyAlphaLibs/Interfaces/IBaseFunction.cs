﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections;

namespace SonyAlphaLibs
{
    interface IBaseFunction<T>
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="model"></param>
        bool add(T model, String connString);
        /// <summary>
        /// 
        /// </summary>
        /// <param name="model"></param>
        bool removeById(int id);
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        List<T> getListAll(String connString);
        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        T getById(int id, String connString);
    }
}
