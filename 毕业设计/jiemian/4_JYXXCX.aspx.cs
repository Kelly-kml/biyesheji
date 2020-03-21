using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 毕业设计.jiemian
{
    public partial class _4_JYXXCX : System.Web.UI.Page
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
        protected string GetExchangeStateString(string p_StateNo)
        {
            string strFont = string.Empty;
            if (p_StateNo == "1")
            {
                return "已归还";
            }
            else
            {
                return "未归还";
            }
        }

        protected void gridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)//数据行
            {
                string Str = e.Row.Cells[7].Text; //第二列内容
                if (Str.Length > 6) //第二列内容大于20个
                {
                    e.Row.Cells[7].Text = Str.Substring(0, 7) + "..."; //截取20个显示，其他用“...”号代替
                    e.Row.Cells[7].ToolTip = Str;//鼠标放上去显示全部信息
                }
            }
        }
    }
}