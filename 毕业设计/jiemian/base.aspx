<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site2.Master" AutoEventWireup="true" CodeBehind="base.aspx.cs" Inherits="毕业设计.jiemian._base" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content  ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:430px;  background-image: url('../images/bg_h3.jpg');">
        <div     style="padding-top: 5px;padding-left:9px;  border:1px initial black; height: 30px; font-size:15px; background-color: #7095bf; font-family: Arial; font-weight: 700;">
                    <span style="padding-top:3px; padding-left:6px">学生离校申请</span>
        </div>
        <div >
        <asp:DetailsView ID="DetailsView1" align="center" GridLines ="Horizontal"   runat="server" AutoGenerateRows="False" DataKeyNames="SId" DataSourceID="SqlDataSource1" Height="70px" Width="755px">
            <Fields>
                <asp:BoundField DataField="SId" HeaderText="学号" ItemStyle-HorizontalAlign="Center" ReadOnly="True" SortExpression="SId" />
                <asp:BoundField DataField="Sname" HeaderText="姓名" SortExpression="Sname" />
                <asp:TemplateField HeaderText="性别" >
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# ShowString((int )Eval("Ssex")) %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# ShowString((int)Eval("Ssex")) %>'></asp:Label>
                                </ItemTemplate>                                    
                            </asp:TemplateField>
                <asp:BoundField DataField="SHative" HeaderText="籍贯" SortExpression="SHative" />
                <asp:BoundField DataField="SDepartment" HeaderText="院系" SortExpression="SDepartment" />
                <asp:BoundField DataField="Sclass" HeaderText="班级" SortExpression="Sclass" />
                <asp:BoundField DataField="Sstatus" HeaderText="政治面貌" SortExpression="Sstatus" />
                <asp:BoundField DataField="SID card" HeaderText="身份证" SortExpression="SID card" />
                <asp:BoundField DataField="Sstartdate" HeaderText="入学日期" SortExpression="Sstartdate" />
                <asp:BoundField DataField="Saddress" HeaderText="家庭住址" SortExpression="Saddress" />
                <asp:BoundField DataField="STel" HeaderText="联系方式" SortExpression="STel" />
                <asp:TemplateField HeaderText="审核状态">
                                <EditItemTemplate>             
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# GetExchangeStateString(Eval("Sstate").ToString())%>'></asp:TextBox>
                                </EditItemTemplate>
                                 <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#GetExchangeStateString(Eval("Sstate").ToString()) %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

            </Fields>
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" HorizontalAlign="center"  />
                        <PagerStyle  Width="200px" ForeColor="Black" HorizontalAlign="center" />
                        <RowStyle  Height="28px" Font-Size="14px"  BackColor="whitesmoke" HorizontalAlign="center"  />
        </asp:DetailsView>
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mklConnectionString %>" SelectCommand="SELECT * FROM [BASE]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
