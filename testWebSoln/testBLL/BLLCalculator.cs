using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using testDAL;

namespace testBLL
{
    public class BLLCalculator
    {
        /// <summary>
        /// This will add two numbers and return the summation
        /// </summary>
        /// <param name="a"></param>
        /// <param name="b"></param>
        /// <returns></returns>
        public int Sum(int a, int b)
        {
            int sum = a + b;
            DALCalculator objDALCalculator = new DALCalculator();
            bool bResult = objDALCalculator.SaveSum(sum);
            if (bResult)
            {
                return sum;
            }
            else
            {
                return -1;
            }
        }
    }
}
