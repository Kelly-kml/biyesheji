<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site3.Master" AutoEventWireup="true" CodeBehind="3_QFXXTJ.aspx.cs" Inherits="毕业设计.jiemian.money_h.QFXXTJ_3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--main content--%>
        <div class ="main" >
         <%-- left  navigation--%>
            <div class="comlun_1" style="width:220px;float:left; height:430px; border:none">
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
            <div class="right_h"  style="padding-top:8px; height:422px; background-image: url('../images/bg_h2.jpg');"  >
                <div   style=" padding-top: 3px; border:1px initial black; margin-left:38px; width:675px; height: 25px; font-size:15px; background-color: #7095bc; font-family: Arial; font-weight: 700;">
                    <span style="padding-left:6px">欠费信息添加</span>
                </div>
                <div >
                    <asp:DetailsView  align="Center" ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Fid" DataSourceID="SqlDataSource1" Height="48px" Width="675px"  BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <EditRowStyle  Font-Bold="True" ForeColor="Black" />
                        <Fields>
                            <asp:BoundField DataField="Sid" HeaderText="学号" SortExpression="Sid" />
                            <asp:BoundField DataField="Sname" HeaderText="姓名" SortExpression="Sname" />
                            <asp:BoundField DataField="Ssex" HeaderText="性别" SortExpression="Ssex" />
                            <asp:BoundField DataField="SDepartment" HeaderText="院系" SortExpression="SDepartment" />
                            <asp:BoundField DataField="Sclass" HeaderText="班级" SortExpression="Sclass" />
                            <asp:BoundField DataField="STel" HeaderText="联系方式" SortExpression="STel" />
                            <asp:BoundField DataField="Sstartdate" HeaderText="入学日期" SortExpression="Sstartdate" />
                            <asp:BoundField DataField="Fid" HeaderText="财务编号" ReadOnly="True" SortExpression="Fid" />
                            <asp:BoundField DataField="Ftype" HeaderText="财务类型" SortExpression="Ftype" />
                            <asp:BoundField DataField="Efee" HeaderText="电费" SortExpression="Efee" />
                            <asp:BoundField DataField="Wfee" HeaderText="水费" SortExpression="Wfee" />
                            <asp:BoundField DataField="Xfee" HeaderText="学费" SortExpression="Xfee" />
                            <asp:BoundField DataField="Fstate" HeaderText="财务状态" SortExpression="Fstate" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle  HorizontalAlign="center" />
                        <HeaderStyle BackColor="Black" Width="750px" Font-Bold="True" ForeColor="White" HorizontalAlign="center"  />
                        <PagerStyle  Width="250px" ForeColor="Black" HorizontalAlign="center" BackColor="#7095ba" Height="20px" />
                        <RowStyle  Height="25px" Font-Size="14px"  BackColor="whitesmoke" HorizontalAlign="center"  />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mklConnectionString %>" DeleteCommand="DELETE FROM [MONEY] WHERE [Fid] = @Fid" InsertCommand="INSERT INTO [MONEY] ([Fid], [Wid], [Eid], [Xid], [Aid], [Fstate], [Sname], [Sclass], [SDepartment], [Sid], [STel], [Estate], [Wstate], [Xstate], [Sstatus], [Sstartdate], [Ssex], [Ftype], [Efee], [Wfee], [Xfee]) VALUES (@Fid, @Wid, @Eid, @Xid, @Aid, @Fstate, @Sname, @Sclass, @SDepartment, @Sid, @STel, @Estate, @Wstate, @Xstate, @Sstatus, @Sstartdate, @Ssex, @Ftype, @Efee, @Wfee, @Xfee)" SelectCommand="SELECT * FROM [MONEY]" UpdateCommand="UPDATE [MONEY] SET [Wid] = @Wid, [Eid] = @Eid, [Xid] = @Xid, [Aid] = @Aid, [Fstate] = @Fstate, [Sname] = @Sname, [Sclass] = @Sclass, [SDepartment] = @SDepartment, [Sid] = @Sid, [STel] = @STel, [Estate] = @Estate, [Wstate] = @Wstate, [Xstate] = @Xstate, [Sstatus] = @Sstatus, [Sstartdate] = @Sstartdate, [Ssex] = @Ssex, [Ftype] = @Ftype, [Efee] = @Efee, [Wfee] = @Wfee, [Xfee] = @Xfee WHERE [Fid] = @Fid">
                        <DeleteParameters>
                            <asp:Parameter Name="Fid" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Fid" Type="String" />
                            <asp:Parameter Name="Wid" Type="String" />
                            <asp:Parameter Name="Eid" Type="String" />
                            <asp:Parameter Name="Xid" Type="String" />
                            <asp:Parameter Name="Aid" Type="String" />
                            <asp:Parameter Name="Fstate" Type="Int32" />
                            <asp:Parameter Name="Sname" Type="String" />
                            <asp:Parameter Name="Sclass" Type="String" />
                            <asp:Parameter Name="SDepartment" Type="String" />
                            <asp:Parameter Name="Sid" Type="String" />
                            <asp:Parameter Name="STel" Type="String" />
                            <asp:Parameter Name="Estate" Type="Int32" />
                            <asp:Parameter Name="Wstate" Type="Int32" />
                            <asp:Parameter Name="Xstate" Type="Int32" />
                            <asp:Parameter Name="Sstatus" Type="String" />
                            <asp:Parameter Name="Sstartdate" Type="DateTime" />
                            <asp:Parameter Name="Ssex" Type="Int32" />
                            <asp:Parameter Name="Ftype" Type="String" />
                            <asp:Parameter Name="Efee" Type="Int32" />
                            <asp:Parameter Name="Wfee" Type="Int32" />
                            <asp:Parameter Name="Xfee" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Wid" Type="String" />
                            <asp:Parameter Name="Eid" Type="String" />
                            <asp:Parameter Name="Xid" Type="String" />
                            <asp:Parameter Name="Aid" Type="String" />
                            <asp:Parameter Name="Fstate" Type="Int32" />
                            <asp:Parameter Name="Sname" Type="String" />
                            <asp:Parameter Name="Sclass" Type="String" />
                            <asp:Parameter Name="SDepartment" Type="String" />
                            <asp:Parameter Name="Sid" Type="String" />
                            <asp:Parameter Name="STel" Type="String" />
                            <asp:Parameter Name="Estate" Type="Int32" />
                            <asp:Parameter Name="Wstate" Type="Int32" />
                            <asp:Parameter Name="Xstate" Type="Int32" />
                            <asp:Parameter Name="Sstatus" Type="String" />
                            <asp:Parameter Name="Sstartdate" Type="DateTime" />
                            <asp:Parameter Name="Ssex" Type="Int32" />
                            <asp:Parameter Name="Ftype" Type="String" />
                            <asp:Parameter Name="Efee" Type="Int32" />
                            <asp:Parameter Name="Wfee" Type="Int32" />
                            <asp:Parameter Name="Xfee" Type="Int32" />
                            <asp:Parameter Name="Fid" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
            
</asp:Content>
