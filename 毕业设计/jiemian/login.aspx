<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="毕业设计.jiemian.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/StyleSheet1.css" rel="stylesheet" />
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/reset.css" rel="stylesheet" />
   
    

</head>
<body>
    <form id="form1" runat="server" style="background-image:url(../images/bc_login.png);height:630px;">
        <div style="font-size:45px;color:white;padding-top:50px;padding-left:100px; font-family:Arial, Helvetica, sans-serif;">
            <span>【肇庆学院】</span>
        </div>
        <div >
            <div class="container font">
                <br /><br /><br />
                <div align="center" style="width:400px;margin-left:750px; opacity:0.5; background-color:white;" class="jumbotron">
                    <h3>登录</h3><br /><br />


                    <asp:TextBox ID="username" placeholder="用户名" Width="290px" Height="40px" Font-Size="15px" ForeColor="Gray" runat="server"></asp:TextBox>
                    <br />
                    <span  class="help-block"><span aria-hidden="true" class="glyphicon glyphicon-info-sign"></span> 在校师生使用证件号或用户名登录，新生使用已激活的用户名登录。</span>
 
                    <asp:TextBox ID="lpassword" placeholder="密码" type="password" Font-Size="15px"  Width="290px" Height="40px" ForeColor="Gray" runat="server"></asp:TextBox>
                    <br />
                    <a href="/f/recovery/password/reset"><span id="helpBlock" style="float:right" class="help-block forgot-password">忘记密码</span></a>
                   <br />
                    <asp:Button ID="Button1" runat="server" align="center" Text="登录" BackColor="#ffffcc"  Width="290px" Height="40px"  Font-Size="16px"  OnClick="Button1_Click" /><br />
                           
                    </div>

    </form>
        
</body>
</html>
