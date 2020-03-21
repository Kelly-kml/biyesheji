<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site3.Master" AutoEventWireup="true" CodeBehind="4_XSLXQR.aspx.cs" Inherits="毕业设计.jiemian._4_XSLXQR" %>
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
            
            <div class="right_h" style="background-image: url('../images/bg_h.jpg');height:430px" >
                 <div style="  padding-top: 3px; border:1px initial black; height: 24px; font-size:15px; background-color: #7095bf; font-family: Arial; font-weight: 700;">
                    <span style="padding-left:5px">学生离校确认</span>
                </div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Font-Size="14px" DataSourceID="SqlDataSource1"  AllowPaging="True" DataKeyNames="Bid">
                        <Columns>
                            <asp:BoundField DataField="Bid" HeaderText="图书编号" ItemStyle-Width="60px" ItemStyle-HorizontalAlign="Center" SortExpression="Bid" ReadOnly="True" >                           
                            </asp:BoundField>
                            <asp:BoundField DataField="Sid" HeaderText="学号" ItemStyle-Width="55px" ItemStyle-HorizontalAlign="Center" SortExpression="Sid" >
                            </asp:BoundField>
                            <asp:BoundField DataField="Sname" HeaderText="姓名" ItemStyle-Width="50px" ItemStyle-HorizontalAlign="Center" SortExpression="Sname" >
                            </asp:BoundField>
                            <asp:BoundField DataField="Sclass" HeaderText="班级" ItemStyle-Width="55px" ItemStyle-HorizontalAlign="Center" SortExpression="Sclass" >
                            </asp:BoundField>
                            <asp:BoundField DataField="SDepartment" HeaderText="院系" ItemStyle-Width="120px" ItemStyle-HorizontalAlign="Center" SortExpression="SDepartment" >
                           
                            </asp:BoundField>
                           
                            <asp:BoundField DataField="STel" HeaderText="联系方式" ItemStyle-Width="68px" ItemStyle-HorizontalAlign="Center" SortExpression="STel" >
                            </asp:BoundField>
                            <asp:BoundField DataField="SID card" HeaderText="身份证号" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center"  SortExpression="SID card" >
                            </asp:BoundField>
                            <asp:BoundField DataField="Sstartdate" HeaderText="入学日期" ItemStyle-Width="62px"  ItemStyle-HorizontalAlign="Center" SortExpression="Sstartdate" ReadOnly="True" DataFormatString="{0:d}" >         
                            </asp:BoundField>
                            
                            <asp:TemplateField HeaderText="性别" ItemStyle-Width="40px" ItemStyle-HorizontalAlign="Center">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# ShowString((int )Eval("Ssex")) %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# ShowString((int)Eval("Ssex")) %>'></asp:Label>
                                </ItemTemplate>                                    
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="审核" ItemStyle-Width="80px" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lbCharge" runat="server" CommandName="charge" OnClientClick="if(!confirm('确认通过审核吗？')) return false"><font color=red>通过</font></asp:LinkButton>
                                    <asp:LinkButton ID="lbDelete" runat="server" CommandName="del"
                                        OnClientClick="if(!confirm('确认取消审核吗？')) return false">取消</asp:LinkButton>
                                </ItemTemplate>                                                            
                            </asp:TemplateField>

                        </Columns>
                        <HeaderStyle  Width="750px" Font-Bold="True" Font-Size="13px" Height="26px"  ForeColor="black" HorizontalAlign="center"  />
                        <EditRowStyle  Height="35px" Font-Size="11px"/>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mklConnectionString %>" SelectCommand="SELECT * FROM [BOOK]" DeleteCommand="DELETE FROM [BOOK] WHERE [Bid] = @Bid" InsertCommand="INSERT INTO [BOOK] ([Bid], [Bname], [Bstate], [Sid], [Sname], [Sclass], [Bbegindata], [Benddata], [Blongdata], [Boverdata], [Ballnum], [SDepartment], [Ssex], [STel], [SID card], [Sstartdate]) VALUES (@Bid, @Bname, @Bstate, @Sid, @Sname, @Sclass, @Bbegindata, @Benddata, @Blongdata, @Boverdata, @Ballnum, @SDepartment, @Ssex, @STel, @SID_card, @Sstartdate)" UpdateCommand="UPDATE [BOOK] SET [Bname] = @Bname, [Bstate] = @Bstate, [Sid] = @Sid, [Sname] = @Sname, [Sclass] = @Sclass, [Bbegindata] = @Bbegindata, [Benddata] = @Benddata, [Blongdata] = @Blongdata, [Boverdata] = @Boverdata, [Ballnum] = @Ballnum, [SDepartment] = @SDepartment, [Ssex] = @Ssex, [STel] = @STel, [SID card] = @SID_card, [Sstartdate] = @Sstartdate WHERE [Bid] = @Bid">
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
                            <asp:Parameter Name="Ssex" Type="Boolean" />
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
                            <asp:Parameter Name="Ssex" Type="Boolean" />
                            <asp:Parameter Name="STel" Type="String" />
                            <asp:Parameter Name="SID_card" Type="String" />
                            <asp:Parameter Name="Sstartdate" Type="DateTime" />
                            <asp:Parameter Name="Bid" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
              

            </div>
</asp:Content>

