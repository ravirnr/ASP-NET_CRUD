using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplicationC2
{
    public class EmployeeModel
    {
        GlobalConnection gc = new GlobalConnection();
        public void AddEmployee(string Name, string Address, string Phone, 
            string Email)
        {
            SqlCommand cmd = new SqlCommand("Insert into tbl_employee" +
                 "(name,address,phone,email)values " +
                 "(@name,@address,@phone,@email)", gc.cn);
            cmd.Parameters.AddWithValue("@name", Name);
            cmd.Parameters.AddWithValue("@address", Address);
            cmd.Parameters.AddWithValue("@phone", Phone);
            cmd.Parameters.AddWithValue("@email", Email);
            cmd.ExecuteNonQuery();
            gc.cn.Close();
        }
        public void UpdateEmployee(int Id, string Name, string Address, string Phone, string Email)
        {
            SqlCommand cmd = new SqlCommand("Update tbl_employee set name=@name,address=@address,phone=@phone," +
                "email=@email where id=@id", gc.cn);
            cmd.Parameters.AddWithValue("@name", Name);
            cmd.Parameters.AddWithValue("@address", Address);
            cmd.Parameters.AddWithValue("@phone", Phone);
            cmd.Parameters.AddWithValue("@email", Email);
            cmd.Parameters.AddWithValue("@id", Id);
            cmd.ExecuteNonQuery();
            gc.cn.Close();
        }
        public DataTable SelectRecords()
        {
            string sql = "SELECT * FROM tbl_employee";
            SqlDataAdapter sda = new SqlDataAdapter(sql, gc.cn);
            DataSet ds = new DataSet();
            sda.Fill(ds, "tbl_employee");
            return ds.Tables[0];
        }
    }
}