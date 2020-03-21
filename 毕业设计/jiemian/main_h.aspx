<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site3.Master" AutoEventWireup="true" CodeBehind="main_h.aspx.cs" Inherits="毕业设计.jiemian.LXXSQR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class ="main" >
         <%-- left  navigation--%>
            <div class="comlun_1" style="width:220px;float:left;  border:none">
                 <div class="leftNavh">
                    <ul class="yahei1"> 
                    </ul>
                    <ul class="yahei2">
                        <li>
                             <i></i><a href="1_XSLXSQ.aspx">学生离校申请</a>
                            <ul>
                                <li><a href="1_XSLXSQ.aspx">学生离校申请</a></li>
                            </ul>
                        </li>
                        <li>
                            <i></i><a href="2_XSLXQR.aspx">档案室管理</a>
                        <ul>
                            <li><a href="2_XSLXQR.aspx">档案资料办理</a></li>                            
                        </ul>
                        </li>
                        <li>
                            <i></i><a href="3_XSLXQR.aspx">财务处管理</a>
                        <ul>
                            <li><a href="3_QFXXCX.aspx">欠费信息查询</a></li>
                        </ul>
                        </li>
                        <li>
                            <i></i><a href="4_XSLXQR.aspx">图书馆管理</a>
                        <ul>
                            <li><a href="4_JYXXCX.aspx">图书借阅查询</a></li>
                        </ul>
                        </li>
                     </ul>
                </div>
            </div>
              <%--right navigation--%>
            <div class="right_h" >
        
            </div>
            
        </div>


</asp:Content>
