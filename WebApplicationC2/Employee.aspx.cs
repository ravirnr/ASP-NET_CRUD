using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationC2
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ListView();
        }
        protected void ListView()
        {
            try
            {
                EmployeeModel em = new EmployeeModel();
                GV.DataSource = em.SelectRecords();
                GV.DataBind();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void Btn_Add_Click(object sender, EventArgs e)
        {
            try
            {              
                EmployeeModel em = new EmployeeModel();
                em.AddEmployee(Txt_Name.Text, Txt_Address.Text, 
                    Txt_Phone.Text, Txt_Email.Text);

                //Label1.Text = "Data Inserted";
              // Txt_Name.Text = Txt_Address.Text = Txt_Phone.Text = 
                   // Txt_Email.Text = "";
                //ListView();
            }
            catch (Exception ex)
            {
                //Label1.Text = ex.Message;
            }
        }
        protected void GV_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GlobalConnection gc = new GlobalConnection();
            SqlCommand cmd = new SqlCommand();

            string index = Convert.ToString(e.CommandArgument);
            string strData = "Select * From tbl_employee Where id='" + index + "'";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_employee");
            DataTable dt = ds.Tables[0];

            Txt_Id.Text = dt.Rows[0]["id"].ToString();
            Txt_Name.Text = dt.Rows[0]["name"].ToString();
            Txt_Address.Text = dt.Rows[0]["address"].ToString();
            Txt_Phone.Text = dt.Rows[0]["phone"].ToString();
            Txt_Email.Text = dt.Rows[0]["email"].ToString();
        }
        protected void BtnReset_Click(object sender, EventArgs e)
        {
            Txt_Name.Text = Txt_Address.Text = Txt_Phone.Text = Txt_Email.Text = "";
        }

        protected void Btn_Update_Click(object sender, EventArgs e)
        {
            try
            {
                //string strname = FileUpload1.FileName.ToString();
                // FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/") + strname);
                EmployeeModel em = new EmployeeModel();
                em.UpdateEmployee(Convert.ToInt32(Txt_Id.Text),Txt_Name.Text, Txt_Address.Text, Txt_Phone.Text, Txt_Email.Text);

                Label1.Text = "Data Updated";
                Txt_Id.Text = Txt_Name.Text = Txt_Address.Text = Txt_Phone.Text = Txt_Email.Text = "";
                //ListView();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}