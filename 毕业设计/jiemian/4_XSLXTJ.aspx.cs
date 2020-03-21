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
    public partial class _4_XSLXTJ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string ShowString(int str)
        {
            string strFont = string.Empty;
            if (str == 1)
            {
                strFont = "男";
                return strFont;
            }
            else if (str == 0)
            {
                strFont = "女";
                return strFont;
            }
            else
            {
                strFont = "不详";
                return strFont;
            }
        }
    }
}