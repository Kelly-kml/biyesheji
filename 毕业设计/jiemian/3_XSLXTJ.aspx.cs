using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 毕业设计.jiemian.money_h
{
    public partial class XSLXTJ_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected string GetExchangeStateString(string p_StateNo)        {            string strFont = string.Empty;            if (p_StateNo == "1")            {                return "审核通过";            }            else if (p_StateNo == "0")            {                return "未审核";            }            else            {                return "审核中";            }
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