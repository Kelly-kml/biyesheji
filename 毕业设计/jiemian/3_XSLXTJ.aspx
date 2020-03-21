<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site3.Master" AutoEventWireup="true" CodeBehind="3_XSLXTJ.aspx.cs" Inherits="毕业设计.jiemian.money_h.XSLXTJ_3" %>
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
                <div  style="padding-top: 3px; border:1px initial black; width:750px; height: 24px; font-size:15px; background-color: #7095bf; font-family: Arial; font-weight: 700;">
                   <span style="padding-left:6px">学生离校确认</span>
                </div>
                <div>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Sid" HeaderText="学号" ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" SortExpression="Sid" />
                            <asp:BoundField DataField="Sname" HeaderText="姓名" ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" SortExpression="Sname" />
                            <asp:TemplateField HeaderText="性别" ItemStyle-Width="60px" ItemStyle-HorizontalAlign="Center">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# ShowString((int )Eval("Ssex")) %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# ShowString((int)Eval("Ssex")) %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="SDepartment" ItemStyle-Width="150px" ItemStyle-HorizontalAlign="Center" HeaderText="院系" SortExpression="SDepartment" />
                            <asp:BoundField DataField="Sclass" ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center" HeaderText="班级" SortExpression="Sclass" />
                            <asp:BoundField DataField="STel" ItemStyle-Width="110px" ItemStyle-HorizontalAlign="Center" HeaderText="联系方式" SortExpression="STel" />
                            <asp:BoundField DataField="Sstartdate" HeaderText="入学日期" ItemStyle-Width="125px" ReadOnly="True" DataFormatString="{0:d}" ItemStyle-HorizontalAlign="Center" SortExpression="Sstartdate" />
                            <asp:TemplateField HeaderText="审核状态" ItemStyle-Width="75px" ItemStyle-HorizontalAlign="Center">
                                <EditItemTemplate>             
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# GetExchangeStateString(Eval("Fstate").ToString())%>'></asp:TextBox>
                                </EditItemTemplate>
                                 <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#GetExchangeStateString(Eval("Fstate").ToString()) %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle  Width="750px" Font-Bold="True" Font-Size="14px" Height="28px"  ForeColor="black" HorizontalAlign="center"  />
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mklConnectionString %>" SelectCommand="SELECT * FROM [MONEY_TJ]"></asp:SqlDataSource>

                </div>
                
            </div>
       </div>
</asp:Content>
