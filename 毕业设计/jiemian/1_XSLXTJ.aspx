<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site3.Master" AutoEventWireup="true" CodeBehind="1_XSLXTJ.aspx.cs" Inherits="毕业设计.jiemian.XSLXTJ" %>
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
                             <i></i><a href="1_XSLXSQ.aspx">学生离校申请</a>
                            <ul>
                                <li><a href="1_XSLXSQ.aspx">学生离校申请</a></li>
                            </ul>
                            <ul>
                            <li><a href="1_XSLXTJ.aspx">学生离校统计</a></li>
                            </ul>
                        </li>
                       
                     </ul>
                </div>
            </div>
              <%--right navigation--%>
            <div class="right_h" style="height:430px;  background-image: url('../images/bg_h3.jpg');"  >
                <div style="  padding-top: 6px; border:1px initial black; height: 26px; font-size:15px; background-color: #7095bf; font-family: Arial; font-weight: 700;">
                    <span style="padding-left:5px">学生离校统计</span>
                </div>
                <div>
                <asp:GridView ID="GridView1" align="center" GridLines="Horizontal" BorderStyle="Solid" BorderColor="#7095bf" BorderWidth="3px" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="SId" HeaderText="学号" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="70px" SortExpression="SId" />
                        <asp:BoundField DataField="Sname" HeaderText="姓名" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="60px" SortExpression="Sname" />
                        <asp:BoundField DataField="Sclass" HeaderText="班级" ItemStyle-HorizontalAlign="Center"  ItemStyle-Width="70px" SortExpression="Sclass" />
                        <asp:BoundField DataField="SDepartment" HeaderText="院系" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="140px" SortExpression="SDepartment" />
                         <asp:TemplateField HeaderText="性别" ItemStyle-Width="40px" ItemStyle-HorizontalAlign="Center">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# ShowString((int )Eval("Ssex")) %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# ShowString((int)Eval("Ssex")) %>'></asp:Label>
                                </ItemTemplate>
                          </asp:TemplateField>
                        <asp:BoundField DataField="Sstartdate" HeaderText="入学日期" ItemStyle-Width="120px" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}" SortExpression="Sstartdate" />
                        <asp:BoundField DataField="Sstatus" HeaderText="政治面貌" ItemStyle-Width="80px" ItemStyle-HorizontalAlign="Center" SortExpression="Sstatus" />
                        <asp:BoundField DataField="Sroom" HeaderText="宿舍号" ItemStyle-Width="60px" ItemStyle-HorizontalAlign="Center" SortExpression="Sroom" />
                        <asp:BoundField DataField="Sstate" HeaderText="离校状态" ItemStyle-Width="90px" ItemStyle-HorizontalAlign="Center" SortExpression="Sstate" />
                    </Columns>
                    <HeaderStyle  Width="750px" Font-Bold="True" Font-Size="14px" Height="28px"  ForeColor="black" HorizontalAlign="center"  />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mklConnectionString %>" SelectCommand="SELECT * FROM [BASE_TJ]"></asp:SqlDataSource>
            </div>
            </div>
            
        </div>
</asp:Content>
