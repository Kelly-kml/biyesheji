<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site3.Master" AutoEventWireup="true" CodeBehind="4_JYXXCX.aspx.cs" Inherits="毕业设计.jiemian._4_JYXXCX" %>
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
            <div class="right_h" >
               
                <div style="  padding-top: 3px; border:1px initial black; height: 24px; font-size:16px; background-color: #7095bf; font-family: Arial; font-weight: 700;">
                    <span style="padding-left:5px">图书借阅查询</span>
                </div>
                <div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="30px" DataKeyNames="Bid" DataSourceID="SqlDataSource1" Font-Size="14px" AllowPaging="True">
                        <Columns>

                            <asp:BoundField DataField="Sid" HeaderText="学号" ItemStyle-Width="40px" ItemStyle-HorizontalAlign="Center" SortExpression="Sid" />
                            <asp:BoundField DataField="Sname" HeaderText="姓名" ItemStyle-Width="40px" ItemStyle-HorizontalAlign="Center" SortExpression="Sname" />
                            <asp:TemplateField HeaderText="性别" ItemStyle-Width="30px" ItemStyle-HorizontalAlign="Center">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# ShowString((int )Eval("Ssex")) %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# ShowString((int)Eval("Ssex")) %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="SDepartment" HeaderText="院系" SortExpression="SDepartment" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="Sclass" HeaderText="班级" SortExpression="Sclass" ItemStyle-Width="60px" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="Bid" HeaderText="图书编号" ReadOnly="True" SortExpression="Bid" ItemStyle-Width="60px" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="Bname" HeaderText="图书名称" SortExpression="Bname" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="Boverdata" HeaderText="逾期时长" SortExpression="Boverdata" ItemStyle-Width="60px" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="STel" HeaderText="联系方式" SortExpression="STel" ItemStyle-Width="65px" ItemStyle-HorizontalAlign="Center" />
                            <asp:TemplateField HeaderText="归还状态" ItemStyle-Width="60px" ItemStyle-HorizontalAlign="Center">
                                <EditItemTemplate>             
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# GetExchangeStateString(Eval("Bstate").ToString())%>'></asp:TextBox>
                                </EditItemTemplate>
                                 <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#GetExchangeStateString(Eval("Bstate").ToString()) %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>
                        <HeaderStyle  Width="750px" Font-Bold="True" Font-Size="14px" Height="26px"  ForeColor="black" HorizontalAlign="center"  />
                        <EditRowStyle  Height="35px"/>
                    </asp:GridView>
                     

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mklConnectionString %>" SelectCommand="SELECT * FROM [BOOK]"></asp:SqlDataSource>


                </div>
            </div>
</asp:Content>
