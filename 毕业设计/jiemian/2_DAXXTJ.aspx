<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site3.Master" AutoEventWireup="true" CodeBehind="2_DAXXTJ.aspx.cs" Inherits="毕业设计.jiemian.DAXXTJ" %>
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
            <div class="right_h" style="background-image: url('../images/bg_h2.jpg');height:430px" >
                 <div  style="padding-top: 3px; border:1px initial black; width:750px; height: 24px; font-size:15px; background-color: #7095bf; font-family: Arial; font-weight: 700;">
                   <span style="padding-left:6px">档案信息添加</span>
                </div>
                <asp:DetailsView ID="DetailsView1" runat="server" align="center" AllowPaging="True" width="650px" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999"  BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Rid" DataSourceID="SqlDataSource1" ForeColor="Black" Height="30px" style="margin-right: 0px">
                    <EditRowStyle Font-Bold="True" VerticalAlign="Middle" Width="450px" ForeColor="black" />
                    <Fields>
                        <asp:BoundField DataField="Rid" HeaderText="档案编号" ReadOnly="True" SortExpression="Rid" /><asp:BoundField DataField="Rstate" HeaderText="档案状态" SortExpression="Rstate" />
                        
                        <asp:BoundField DataField="Sid" HeaderText="学号" SortExpression="Sid" />
                        <asp:BoundField DataField="Sname" HeaderText="姓名" SortExpression="Sname" />
                        <asp:BoundField DataField="Sclass" HeaderText="班级" SortExpression="Sclass" />
                        <asp:BoundField DataField="SDepartment" HeaderText="院系" SortExpression="SDepartment" />
                        <asp:BoundField DataField="STel" HeaderText="联系方式" SortExpression="STel" />
                        <asp:BoundField DataField="Sstatus" HeaderText="政治面貌" SortExpression="Sstatus" />
                        <asp:BoundField DataField="Dstate" HeaderText="党籍状态" SortExpression="Dstate" />
                        <asp:BoundField DataField="Tstate" HeaderText="团籍状态" SortExpression="Tstate" />
                        <asp:BoundField DataField="Hstate" HeaderText="户籍状态" SortExpression="Hstate" />
                        <asp:BoundField DataField="Ssex" HeaderText="性别" SortExpression="Ssex" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#CCCCCC" HorizontalAlign="center" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" HorizontalAlign="center"/>
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="center" />
                    <RowStyle BackColor="White" HorizontalAlign="center" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mklConnectionString %>" DeleteCommand="DELETE FROM [RECORD] WHERE [Rid] = @Rid" InsertCommand="INSERT INTO [RECORD] ([Rid], [Hid], [Did], [Tid], [Rstate], [Sid], [Sname], [Sclass], [SDepartment], [STel], [Sstatus], [Dstate], [Tstate], [Hstate], [Ssex], [Rtype]) VALUES (@Rid, @Hid, @Did, @Tid, @Rstate, @Sid, @Sname, @Sclass, @SDepartment, @STel, @Sstatus, @Dstate, @Tstate, @Hstate, @Ssex, @Rtype)" SelectCommand="SELECT * FROM [RECORD]" UpdateCommand="UPDATE [RECORD] SET [Hid] = @Hid, [Did] = @Did, [Tid] = @Tid, [Rstate] = @Rstate, [Sid] = @Sid, [Sname] = @Sname, [Sclass] = @Sclass, [SDepartment] = @SDepartment, [STel] = @STel, [Sstatus] = @Sstatus, [Dstate] = @Dstate, [Tstate] = @Tstate, [Hstate] = @Hstate, [Ssex] = @Ssex, [Rtype] = @Rtype WHERE [Rid] = @Rid">
                    <DeleteParameters>
                        <asp:Parameter Name="Rid" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Rid" Type="String" />
                        <asp:Parameter Name="Hid" Type="String" />
                        <asp:Parameter Name="Did" Type="String" />
                        <asp:Parameter Name="Tid" Type="String" />
                        <asp:Parameter Name="Rstate" Type="Int32" />
                        <asp:Parameter Name="Sid" Type="String" />
                        <asp:Parameter Name="Sname" Type="String" />
                        <asp:Parameter Name="Sclass" Type="String" />
                        <asp:Parameter Name="SDepartment" Type="String" />
                        <asp:Parameter Name="STel" Type="String" />
                        <asp:Parameter Name="Sstatus" Type="String" />
                        <asp:Parameter Name="Dstate" Type="Int32" />
                        <asp:Parameter Name="Tstate" Type="Int32" />
                        <asp:Parameter Name="Hstate" Type="Int32" />
                        <asp:Parameter Name="Ssex" Type="Int32" />
                        <asp:Parameter Name="Rtype" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Hid" Type="String" />
                        <asp:Parameter Name="Did" Type="String" />
                        <asp:Parameter Name="Tid" Type="String" />
                        <asp:Parameter Name="Rstate" Type="Int32" />
                        <asp:Parameter Name="Sid" Type="String" />
                        <asp:Parameter Name="Sname" Type="String" />
                        <asp:Parameter Name="Sclass" Type="String" />
                        <asp:Parameter Name="SDepartment" Type="String" />
                        <asp:Parameter Name="STel" Type="String" />
                        <asp:Parameter Name="Sstatus" Type="String" />
                        <asp:Parameter Name="Dstate" Type="Int32" />
                        <asp:Parameter Name="Tstate" Type="Int32" />
                        <asp:Parameter Name="Hstate" Type="Int32" />
                        <asp:Parameter Name="Ssex" Type="Int32" />
                        <asp:Parameter Name="Rtype" Type="String" />
                        <asp:Parameter Name="Rid" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
</asp:Content>
