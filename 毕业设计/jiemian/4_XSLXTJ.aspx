<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site3.Master" AutoEventWireup="true" CodeBehind="4_XSLXTJ.aspx.cs" Inherits="毕业设计.jiemian._4_XSLXTJ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%--main content--%>
        <div class ="main" >
         <%-- left  navigation--%>
            <div class="comlun_1" style="width:220px;float:left;  border:none">
                 <div class="leftNavh">
                    <ul class="yahei1"> 
                    </ul>
                    <ul class="yahei2">
                        <li>
                            <i></i><a href="4_XSLXQR.aspx">学生离校确认</a>
                        <ul>
                            <li><a href="4_XSLXQR.aspx">学生离校确认</a></li>
                            <li><a href="4_XSLXTJ.aspx">学生离校统计</a></li>
                        </ul>
                        </li>
                        <li>
                            <i></i><a href="4_JYXXCX.aspx">图书借阅管理</a>
                        <ul>
                            <li><a href="4_JYXXTJ.aspx">图书借阅添加</a></li>
                            <li><a href="4_JYXXCX.aspx">图书借阅查询</a></li>                            
                        </ul>
                        </li>
                       
                     </ul>
                </div>
            </div>
              <%--right navigation--%>
            <div class="right_h" style="background-image: url('../images/bg_h.jpg');height:430px">
                 <div style="  padding-top: 6px; border:1px initial black; height: 26px; font-size:15px; background-color: #7095bf; font-family: Arial; font-weight: 700;">
                    <span style="padding-left:5px">学生离校统计</span>
                </div>
                <div>
                    <asp:GridView ID="GridView1" Font-Size="14px" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Sid" ItemStyle-Height="25px" HeaderText="学号" SortExpression="Sid" ItemStyle-HorizontalAlign="Center"  ItemStyle-Width="90px" />
                            <asp:BoundField DataField="Sname" HeaderText="姓名" SortExpression="Sname" ItemStyle-HorizontalAlign="Center"  ItemStyle-Width="80px" />
                            <asp:TemplateField HeaderText="性别" ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# ShowString((int )Eval("Ssex")) %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# ShowString((int)Eval("Ssex")) %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="SDepartment" HeaderText="院系" SortExpression="SDepartment" ItemStyle-HorizontalAlign="Center"  ItemStyle-Width="150px" />
                            <asp:BoundField DataField="Sclass" HeaderText="班级" SortExpression="Sclass" ItemStyle-HorizontalAlign="Center"  ItemStyle-Width="80px" />
                            <asp:BoundField DataField="STel" HeaderText="联系方式" SortExpression="STel" ItemStyle-HorizontalAlign="Center"  ItemStyle-Width="160px" />
                            <asp:BoundField DataField="Sstartdate" HeaderText="入学日期" SortExpression="Sstartdate" ItemStyle-HorizontalAlign="Center"  ItemStyle-Width="100px" />
                         

                        </Columns>
                       
                        <HeaderStyle  Width="750px" Font-Bold="True" Font-Size="14px" Height="28px"  ForeColor="black" HorizontalAlign="center"  />
                        
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mklConnectionString %>" SelectCommand="SELECT * FROM [BOOK_TJ]"></asp:SqlDataSource>
                </div>        
            </div>
</asp:Content>
