using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationC2
{
    public partial class Calc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            int num1 = Int32.Parse(TextBox1.Text);
            int num2 = Int32.Parse(TextBox2.Text);
            int sum= num1+ num2;
            TextBox3.Text= sum.ToString();
        }



        protected void BtnSub_Click(object sender, EventArgs e)
        {
            int num1 = Int32.Parse(TextBox1.Text);
            int num2 = Int32.Parse(TextBox2.Text);
            int sum = num1 - num2;
            TextBox3.Text = sum.ToString();

        }

        protected void BtnMul_Click(object sender, EventArgs e)
        {
            int num1 = Int32.Parse(TextBox1.Text);
            int num2 = Int32.Parse(TextBox2.Text);
            int sum = num1 * num2;
            TextBox3.Text = sum.ToString();
        }

        protected void BtnDiv_Click(object sender, EventArgs e)
        {
            int num1 = Int32.Parse(TextBox1.Text);
            int num2 = Int32.Parse(TextBox2.Text);
            int sum = num1 / num2;
            TextBox3.Text = sum.ToString();
        }
    }
}