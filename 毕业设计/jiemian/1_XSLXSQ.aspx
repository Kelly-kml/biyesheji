<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site3.Master" AutoEventWireup="true" CodeBehind="1_XSLXSQ.aspx.cs" Inherits="毕业设计.jiemian.XSLXSQ" %>
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
            <div class="right_h" style="height:430px;  background-image: url('../images/bg_h3.jpg');" >
                <div     style="padding-top: 5px;padding-left:9px; margin-left:10px; border:1px initial black; width:721px;height: 24px; font-size:15px; background-color: #7095bf; font-family: Arial; font-weight: 700;">
                    <span style="padding-top:3px; padding-left:6px">学生离校申请</span>
                </div>
                <div >
                <asp:GridView ID="GridView1" Height ="400px" align="center" GridLines="Horizontal"  runat="server" AutoGenerateColumns="False" BorderStyle="Solid" BorderColor="#7095bf" BorderWidth="4px" DataKeyNames="SId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="SId" HeaderText="学号" ReadOnly="True" ItemStyle-Width="125px" ItemStyle-HorizontalAlign="Center" SortExpression="SId" />
                        <asp:BoundField DataField="Sname" HeaderText="姓名" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center" SortExpression="Sname" />
                        <asp:TemplateField HeaderText="性别" ItemStyle-Width="80px" ItemStyle-HorizontalAlign="Center">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# ShowString((int )Eval("Ssex")) %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# ShowString((int)Eval("Ssex")) %>'></asp:Label>
                                </ItemTemplate>                                    
                            </asp:TemplateField>
                        <asp:BoundField DataField="SDepartment" HeaderText="院系" ItemStyle-Width="165px" ItemStyle-HorizontalAlign="Center" SortExpression="SDepartment" />
                        <asp:BoundField DataField="Sclass" HeaderText="班级" ItemStyle-Width="120px" ItemStyle-HorizontalAlign="Center" SortExpression="Sclass" />
                         <asp:TemplateField HeaderText="审核" ItemStyle-Width="120px" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lbCharge" runat="server" CommandName="charge" OnClientClick="if(!confirm('确认通过审核吗？')) return false"><font color=red>通过</font></asp:LinkButton>
                                    <asp:LinkButton ID="lbDelete" runat="server" CommandName="del"
                                        OnClientClick="if(!confirm('确认取消审核吗？')) return false">取消</asp:LinkButton>
                                </ItemTemplate>                                                            
                            </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mklConnectionString %>" SelectCommand="SELECT * FROM [BASE]"></asp:SqlDataSource>
            </div>
            </div>
        </div>

</asp:Content>
