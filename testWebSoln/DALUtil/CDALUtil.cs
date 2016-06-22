using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace DALUtil
{
    public class CDALUtil
    {
        private SqlConnection CreateConnection()
        {
            try
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = System.Configuration.ConfigurationSettings.AppSettings["connstring"];
                return conn;
            }
            catch(Exception)
            {
                return null;
            }
        }

        public int ExecuteNonQuery(List<SqlCommand> ListSqlCmd)
        {
            SqlConnection conn = CreateConnection();
            int affectedrows = 0;

            try
            {
                if (conn != null)
                {
                    conn.Open();

                    SqlTransaction stran = conn.BeginTransaction();

                    try
                    {
                        for (int i = 0; i < ListSqlCmd.Count; i++)
                        {
                            ListSqlCmd[i].Transaction = stran;
                            ListSqlCmd[i].Connection = conn;
                        }

                        for (int i = 0; i < ListSqlCmd.Count; i++)
                        {
                            affectedrows += ListSqlCmd[i].ExecuteNonQuery();
                        }

                        stran.Commit();
                    }
                    catch (Exception)
                    {
                        stran.Rollback();
                    }
                    finally
                    {
                        stran.Dispose();
                    }
                }
            }
            catch (Exception)
            {
                return -1;
            }
            finally
            {
                conn.Close();
                conn.Dispose();
            }

            return affectedrows;
        }
    }
}
