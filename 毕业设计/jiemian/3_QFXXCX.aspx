<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site3.Master" AutoEventWireup="true" CodeBehind="3_QFXXCX.aspx.cs" Inherits="毕业设计.jiemian.money_h.QFXXCX_3" %>
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
            <div class="right_h" style="height:430px;  background-image: url('../images/bg_h3.jpg');"  >
                <div style="  border:1px initial black; height: 25px;  padding-top: 8px;  background-color: #7095bf; font-family: Arial; font-weight: 700;">
                    <span>欠费信息查询</span>
                </div>
                <div>
                   <asp:GridView ID="GridView1" Align="Center" runat="server" AutoGenerateColumns="False" DataKeyNames="Fid" DataSourceID="SqlDataSource1">
                       <Columns>
                           <asp:BoundField DataField="Sid" HeaderText="学号" SortExpression="Sid" ItemStyle-Width="50px" ItemStyle-HorizontalAlign="Center" />
                           <asp:BoundField DataField="Sname" HeaderText="姓名" SortExpression="Sname" ItemStyle-Width="50px" ItemStyle-HorizontalAlign="Center" />
                           <asp:TemplateField HeaderText="性别" ItemStyle-Width="40px" ItemStyle-HorizontalAlign="Center">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# ShowString((int )Eval("Ssex")) %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# ShowString((int)Eval("Ssex")) %>'></asp:Label>
                                </ItemTemplate>                                    
                            </asp:TemplateField>
                           <asp:BoundField DataField="SDepartment" HeaderText="院系" SortExpression="SDepartment" ItemStyle-Width="120px" ItemStyle-HorizontalAlign="Center"/>
                           <asp:BoundField DataField="Sclass" HeaderText="班级" SortExpression="Sclass" ItemStyle-Width="60px" ItemStyle-HorizontalAlign="Center"/>
                           <asp:BoundField DataField="STel" HeaderText="联系方式" SortExpression="STel" ItemStyle-Width="80px" ItemStyle-HorizontalAlign="Center" />
                           <asp:BoundField DataField="Sstartdate" HeaderText="入学日期" DataFormatString="{0:d}" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center" SortExpression="Sstartdate" />
                           <asp:BoundField DataField="Efee" HeaderText="电费" SortExpression="Efee" ItemStyle-Width="40px" ItemStyle-HorizontalAlign="Center" />
                           <asp:BoundField DataField="Wfee" HeaderText="水费" SortExpression="Wfee" ItemStyle-Width="40px" ItemStyle-HorizontalAlign="Center"/>
                           <asp:BoundField DataField="Xfee" HeaderText="学费" SortExpression="Xfee" ItemStyle-Width="40px" ItemStyle-HorizontalAlign="Center" />
                            <asp:TemplateField HeaderText="审核状态" ItemStyle-Width="75px" ItemStyle-HorizontalAlign="Center">
                                <EditItemTemplate>             
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# GetExchangeStateString(Eval("Fstate").ToString())%>'></asp:TextBox>
                                </EditItemTemplate>
                                 <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#GetExchangeStateString(Eval("Fstate").ToString()) %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                       </Columns>

                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mklConnectionString %>" SelectCommand="SELECT * FROM [MONEY]"></asp:SqlDataSource>
                </div>
                
            </div>
</asp:Content>
