using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 毕业设计.jiemian.money_h
{
    public partial class XSLXQR_3 : System.Web.UI.Page
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