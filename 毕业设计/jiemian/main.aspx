<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="毕业设计.jiemian.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/StyleSheet1.css" rel="stylesheet" /> 
     
</head>
<body class="body1">
    <form id="form1" runat="server">

        <%--title--%>
        <header>       
            <section class="topWrap">
                <a href="/"><img src="../images/title.jpg" /></a>        
            </section>               
            <div  class="nav" >
                    <ul >                      
                        <li><a class="menu0_1_" href="../main.htm"><span class="s10_1_">首页</span></a>&nbsp;|&nbsp;</li>
                        <li><a class="menu0_1_" href="../index.htm"><span class="s10_1_">学校概况</span></a>&nbsp;|&nbsp;</li>
                        <li><a class="menu0_1_" href="../index.htm"><span class="s10_1_">学校风光</span></a>&nbsp;|&nbsp;</li>
                        <li><a class="menu0_1_" href="../index.htm"><span class="s10_1_">教育教学</span></a>&nbsp;|&nbsp;</li>
                        <li><a class="menu0_1_" href="../index.htm"><span class="s10_1_">招生就业</span></a>&nbsp;|&nbsp;</li>
                        <li><a class="menu0_1_" href="../index.htm"><span class="s10_1_">信息门户</span></a>&nbsp;|&nbsp;</li>
                        <li><a class="menu0_1_" href="../index.htm"><span class="s10_1_">图书馆</span></a></li>
                    </ul>
                </div>              
        </header>

  <%--main content--%>
        <div class ="main" >
  <%-- left  navigation--%>
           

            
            <div class="comlun_1" style="width:220px;float:left;  border:none">
                 <div class="leftNav">
                    <ul class="yahei1">

                    </ul>
                    <ul class="yahei">
                        <li class="current">
                             <i class="current thuicon-minus"></i><a href="../main.aspx">基本信息</a>
                            <ul>
                                <li><a href="base.aspx">个人信息</a></li>
                            </ul>
                        </li>
                        <li>
                            <i class="thuicon-plus"></i><a href="record.aspx">档案信息</a>
                        <ul>
                            <li><a href="hj.aspx">户籍档案</a></li>
                            <li><a href="tj.aspx">团籍档案</a></li>
                            <li><a href="dj.aspx">党籍档案</a></li>
                        </ul>
                        </li>
                        <li>
                            <i class="thuicon-plus"></i><a href="money.aspx">缴费中心</a>
                        <ul>
                            <li><a href="elefee.aspx">电费缴纳</a></li>
                            <li><a href="wfee.aspx">水费缴纳</a></li>
                            <li><a href="xfee.aspx">学费缴纳</a></li>
                            <li><a href="afee.aspx">奖学金</a></li>
                        </ul>
                        </li>
                        <li>
                            <i class="current thuicon-minus4"></i><a href="#">图书归还</a>
                        <ul>
                            <li><a href="book.aspx">借还情况</a></li>
                        </ul>
                        </li>
                     </ul>
                </div>
            </div>
  <%--right main content--%>
            <div class="comlun_2" >

                <div class="face">
                    <img src="https://i.51job.com/resume/ajax/image.php?type=avatar&amp;userid=375513277&amp;1580958566" alt="头像" height="104" width="85">
                </div>
                <div class="name ">马锴丽</div>
                <div class="tab">
                    <span class="email icons at" title="1532527410@qq.com">1532527410@qq.com</span>
                    <span class="tel icons">15817945713</span>
                </div>

                <%--<img style="padding-left:0px;" src="../images/微信图片_20200206175802.jpg" />--%>
            </div>

        </div>

    <%--copyright--%>
        <%--<div class="footer">
            <span> 中国广东省肇庆市端州区肇庆大道 电话：0758-2716233 传真：0758-2716586 邮编：526061</span>
        </div>--%>

    </form>
</body>
</html>
