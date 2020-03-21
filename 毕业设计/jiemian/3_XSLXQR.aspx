<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site3.Master" AutoEventWireup="true" CodeBehind="3_XSLXQR.aspx.cs" Inherits="毕业设计.jiemian.money_h.XSLXQR_3" %>
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
                            <i></i><a href="3_XSLXQR.aspx">学生离校确认</a>
                        <ul>
                            <li><a href="3_XSLXQR.aspx">学生离校确认</a></li>
                            <li><a href="3_XSLXTJ.aspx">学生离校统计</a></li>
                        </ul>
                        </li>
                        <li>
                            <i></i><a href="3_QFXXCX.aspx">欠费信息管理</a>
                        <ul>
                            <li><a href="3_QFXXTJ.aspx">欠费信息添加</a></li>
                            <li><a href="3_QFXXCX.aspx">欠费信息查询</a></li>                            
                        </ul>
                        </li>
                       
                     </ul>
                </div>
            </div>
              <%--right navigation--%>
            <div class="right_h" >
                <div style="  border:1px initial black; height: 25px;  padding-top: 8px; margin-left: 5px; margin-right: 5px; background-color: #7095bf; font-family: Arial; font-weight: 700;">
                    <span>&nbsp; 学生离校确认</span>
                </div>
                <div>

                    <asp:GridView ID="GridView1" align="center" runat="server" AutoGenerateColumns="False" DataKeyNames="Fid" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Sid" HeaderText="学号" ItemStyle-Width="60px" ItemStyle-HorizontalAlign="Center" SortExpression="Sid" />
                            <asp:BoundField DataField="Sname" HeaderText="姓名" ItemStyle-Width="40px" ItemStyle-HorizontalAlign="Center" SortExpression="Sname" />
                             <asp:TemplateField HeaderText="性别" ItemStyle-Width="40px" ItemStyle-HorizontalAlign="Center">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# ShowString((int )Eval("Ssex")) %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# ShowString((int)Eval("Ssex")) %>'></asp:Label>
                                </ItemTemplate>                                    
                            </asp:TemplateField>
                            <asp:BoundField DataField="SDepartment" HeaderText="院系" ItemStyle-Width="130px" ItemStyle-HorizontalAlign="Center" SortExpression="SDepartment" />
                            <asp:BoundField DataField="Sclass" HeaderText="班级" ItemStyle-Width="68px" ItemStyle-HorizontalAlign="Center" SortExpression="Sclass" />
                            <asp:BoundField DataField="STel" HeaderText="联系方式" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center" SortExpression="STel" />
      
                            <asp:BoundField DataField="Sstartdate" HeaderText="入学时间" ItemStyle-Width="100px" DataFormatString="{0:d}" ItemStyle-HorizontalAlign="Center" SortExpression="Sstartdate" />
                            <asp:BoundField DataField="Fid" HeaderText="财务编号" ReadOnly="True" ItemStyle-Width="90px" ItemStyle-HorizontalAlign="Center" SortExpression="Fid" />

                           <asp:TemplateField HeaderText="审核" ItemStyle-Width="80px" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lbCharge" runat="server" CommandName="charge" OnClientClick="if(!confirm('确认通过审核吗？')) return false"><font color=red>通过</font></asp:LinkButton>
                                    <asp:LinkButton ID="lbDelete" runat="server" CommandName="del"
                                        OnClientClick="if(!confirm('确认取消审核吗？')) return false">取消</asp:LinkButton>
                                </ItemTemplate>                                                            
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mklConnectionString %>" SelectCommand="SELECT * FROM [MONEY]"></asp:SqlDataSource>

                </div>
            </div>
</asp:Content>
