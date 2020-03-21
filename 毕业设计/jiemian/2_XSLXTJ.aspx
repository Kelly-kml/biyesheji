<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site3.Master" AutoEventWireup="true" CodeBehind="2_XSLXTJ.aspx.cs" Inherits="毕业设计.jiemian.XSLXTJ_2" %>
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
                            <i></i><a href="2_XSLXQR.aspx">档案离校确认</a>
                        <ul>
                            <li><a href="2_XSLXQR.aspx">档案离校确认</a></li>
                            <li><a href="2_XSLXTJ.aspx">学生离校统计</a></li>
                        </ul>
                        </li>
                        <li>
                            <i></i><a href="2_DAXXCX.aspx">档案信息管理</a>
                        <ul>
                            <li><a href="2_DAXXTJ.aspx">档案信息添加</a></li>
                            <li><a href="2_DAXXCX.aspx">档案信息查询</a></li>                            
                        </ul>
                        </li>
                       
                     </ul>
                </div>
            </div>
              <%--right navigation--%>
            <div class="right_h" >
                <div  style="padding-top: 3px; border:1px initial black; width:750px; height: 24px; font-size:15px; background-color: #7095bf; font-family: Arial; font-weight: 700;">
                   <span style="padding-left:6px">学生离校统计</span>
                </div>
                <div>
                    <asp:GridView ID="GridView1" Align="Center" runat="server" Font-Size="14px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Sid" HeaderText="学号" ItemStyle-Width="80px" ItemStyle-HorizontalAlign="Center" SortExpression="Sid" />
                            <asp:BoundField DataField="Sname" HeaderText="姓名" ItemStyle-Width="75px" ItemStyle-HorizontalAlign="Center" SortExpression="Sname" />
                             <asp:TemplateField HeaderText="性别" ItemStyle-Width="60px" ItemStyle-HorizontalAlign="Center">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# ShowString((int )Eval("Ssex")) %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# ShowString((int)Eval("Ssex")) %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="SDepartment" HeaderText="院系" ItemStyle-Width="160px" ItemStyle-HorizontalAlign="Center" SortExpression="SDepartment" />
                            <asp:BoundField DataField="Sclass" HeaderText="班级" ItemStyle-Width="80px" ItemStyle-HorizontalAlign="Center" SortExpression="Sclass" />
                            <asp:BoundField DataField="Sstatus" HeaderText="政治面貌" ItemStyle-Width="90px" ItemStyle-HorizontalAlign="Center" SortExpression="Sstatus" />
                            <asp:BoundField DataField="Rid" HeaderText="档案编号" ItemStyle-Width="90px" ItemStyle-HorizontalAlign="Center" SortExpression="Rid" />                  
                            <asp:TemplateField HeaderText="审核状态" ItemStyle-Width="85px" ItemStyle-HorizontalAlign="Center">
                                <EditItemTemplate>             
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# GetExchangeStateString(Eval("Rstate").ToString())%>'></asp:TextBox>
                                </EditItemTemplate>
                                 <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#GetExchangeStateString(Eval("Rstate").ToString()) %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mklConnectionString %>" SelectCommand="SELECT * FROM [RECORD_TJ]"></asp:SqlDataSource>
                </div>
            </div>
</asp:Content>
