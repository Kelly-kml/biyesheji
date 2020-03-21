<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site3.Master" AutoEventWireup="true" CodeBehind="4_JYXXTJ.aspx.cs" Inherits="毕业设计.jiemian._4_JYXXTJ" %>
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
       
            <div class="right_h" style=" height:430px; background-image: url('../images/bg_h2.jpg');" >
                <div style="width: 700px; align-content: center; padding-top: 8px; margin-top:15px; height: 30px; margin-left: 25px; margin-right: 30px; background-color: #7095bf; font-family: Arial; font-weight: 700;">
                    <span style="padding-left:8px; align-content: center;">图书借阅添加</span>
                </div>
                <div style="margin-left: 25px;">

                    <asp:DetailsView ID="DetailsView1" Algin="center" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Bid" DataSourceID="SqlDataSource1" Height="50px" Width="700px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                        <EditRowStyle Font-Bold="True" ForeColor="black" />
                        <Fields>
                            <asp:BoundField DataField="Sid" HeaderText="学号" SortExpression="Sid"  />
                            <asp:BoundField DataField="Sname" HeaderText="姓名" SortExpression="Sname" />
                             <asp:BoundField DataField="Ssex" HeaderText="性别" SortExpression="Ssex" />
                            <asp:BoundField DataField="SDepartment" HeaderText="院系" SortExpression="SDepartment" />
                            <asp:BoundField DataField="Sclass" HeaderText="班级" SortExpression="Sclass" />
                            <asp:BoundField DataField="Bid" HeaderText="图书编号" ReadOnly="True" SortExpression="Bid" />
                            <asp:BoundField DataField="Bname" HeaderText="图书名称" SortExpression="Bname" />
                            <asp:BoundField DataField="Bstate" HeaderText="归还状态" SortExpression="Bstate" />
                            
                            <asp:BoundField DataField="Bbegindata" HeaderText="借书日期" SortExpression="Bbegindata" />
                          
                            <asp:BoundField DataField="Boverdata" HeaderText="逾期时长" SortExpression="Boverdata" />
                            <asp:BoundField DataField="STel" HeaderText="联系方式" SortExpression="STel" />  
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle  HorizontalAlign="center" />
                        <HeaderStyle BackColor="Black" Width="750px" Font-Bold="True" ForeColor="White" HorizontalAlign="center"  />
                        <PagerStyle  Width="250px" ForeColor="Black" HorizontalAlign="center" />
                        <RowStyle  Height="28px" Font-Size="14px"  BackColor="whitesmoke" HorizontalAlign="center"  />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mklConnectionString %>" DeleteCommand="DELETE FROM [BOOK] WHERE [Bid] = @Bid" InsertCommand="INSERT INTO [BOOK] ([Bid], [Bname], [Bstate], [Sid], [Sname], [Sclass], [Bbegindata], [Benddata], [Blongdata], [Boverdata], [Ballnum], [SDepartment], [Ssex], [STel], [SID card], [Sstartdate]) VALUES (@Bid, @Bname, @Bstate, @Sid, @Sname, @Sclass, @Bbegindata, @Benddata, @Blongdata, @Boverdata, @Ballnum, @SDepartment, @Ssex, @STel, @SID_card, @Sstartdate)" SelectCommand="SELECT * FROM [BOOK]" UpdateCommand="UPDATE [BOOK] SET [Bname] = @Bname, [Bstate] = @Bstate, [Sid] = @Sid, [Sname] = @Sname, [Sclass] = @Sclass, [Bbegindata] = @Bbegindata, [Benddata] = @Benddata, [Blongdata] = @Blongdata, [Boverdata] = @Boverdata, [Ballnum] = @Ballnum, [SDepartment] = @SDepartment, [Ssex] = @Ssex, [STel] = @STel, [SID card] = @SID_card, [Sstartdate] = @Sstartdate WHERE [Bid] = @Bid">
                        <DeleteParameters>
                            <asp:Parameter Name="Bid" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Bid" Type="String" />
                            <asp:Parameter Name="Bname" Type="String" />
                            <asp:Parameter Name="Bstate" Type="String" />
                            <asp:Parameter Name="Sid" Type="String" />
                            <asp:Parameter Name="Sname" Type="String" />
                            <asp:Parameter Name="Sclass" Type="String" />
                            <asp:Parameter Name="Bbegindata" Type="DateTime" />
                            <asp:Parameter Name="Benddata" Type="DateTime" />
                            <asp:Parameter Name="Blongdata" Type="Int32" />
                            <asp:Parameter Name="Boverdata" Type="Int32" />
                            <asp:Parameter Name="Ballnum" Type="Int32" />
                            <asp:Parameter Name="SDepartment" Type="String" />
                            <asp:Parameter Name="Ssex" Type="Int32" />
                            <asp:Parameter Name="STel" Type="String" />
                            <asp:Parameter Name="SID_card" Type="String" />
                            <asp:Parameter Name="Sstartdate" Type="DateTime" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Bname" Type="String" />
                            <asp:Parameter Name="Bstate" Type="String" />
                            <asp:Parameter Name="Sid" Type="String" />
                            <asp:Parameter Name="Sname" Type="String" />
                            <asp:Parameter Name="Sclass" Type="String" />
                            <asp:Parameter Name="Bbegindata" Type="DateTime" />
                            <asp:Parameter Name="Benddata" Type="DateTime" />
                            <asp:Parameter Name="Blongdata" Type="Int32" />
                            <asp:Parameter Name="Boverdata" Type="Int32" />
                            <asp:Parameter Name="Ballnum" Type="Int32" />
                            <asp:Parameter Name="SDepartment" Type="String" />
                            <asp:Parameter Name="Ssex" Type="Int32" />
                            <asp:Parameter Name="STel" Type="String" />
                            <asp:Parameter Name="SID_card" Type="String" />
                            <asp:Parameter Name="Sstartdate" Type="DateTime" />
                            <asp:Parameter Name="Bid" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                </div>
            </div>
</asp:Content>





