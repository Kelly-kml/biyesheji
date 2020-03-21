<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="毕业设计.jiemian.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../Scripts/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        

<table border="1" style="align-items:center" > 
<tr >
   <th>Session 信息</th>
   <th>值</th>
</tr> 
<tr>
   <td>id</td>
   <td><% out.print( session.getId()); %></td>
</tr> 
<tr>
   <td>创建时间</td>
   <td><% out.print(createTime); %></td>
</tr> 
<tr>
   <td>最后访问时间</td>
   <td><% out.print(lastAccessTime); %></td>
</tr> 
<tr>
   <td>用户 ID</td>
   <td><% out.print(userID); %></td>
</tr> 
<tr>
   <td>访问次数</td>
   <td><% out.print(visitCount); %></td>
</tr> 
</table> 
    </form>
</body>
</html>
