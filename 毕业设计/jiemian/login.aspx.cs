using System;
using System.Collections.Generic;
using System.Linq;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Windows.Input;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Text;

namespace 毕业设计.jiemian
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string z = username.Text.Trim().Trim();
            
            string p = lpassword.Text.Trim();
            
            string ConnectionString = "Data Source=DESKTOP-PMNMHMC\\KELLY;Initial Catalog=mkl;Integrated Security=True";
            SqlConnection ctr = new SqlConnection(ConnectionString);
            ctr.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = ctr;
            cmd.CommandText = "select * from[login] where password='" + p + "'";
            cmd.CommandText = "select * from[login] where Scode='" + z + "'";

            //Session["Sid"] = this.TextBox.Text.Trim();


            object tem = cmd.ExecuteScalar();
            object cem = cmd.ExecuteScalar();
            if (tem == null || tem == DBNull.Value || cem == null || cem == DBNull.Value)
            {
                Response.Write("<script language=javascript>alert('账号或者密码不能为空！')</script>");
            }
            else
            {
                // Response.Write("<script language=javascript>alert('登陆成功')</script>");
                Response.Redirect("main.aspx", true);

            }
            ctr.Close();
        }
    }
}