<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site3.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="毕业设计.jiemian.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div class="right_h" >
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Bid" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="Bid" HeaderText="Bid" ReadOnly="True" SortExpression="Bid" />
                        <asp:BoundField DataField="Bname" HeaderText="Bname" SortExpression="Bname" />
                        <asp:BoundField DataField="Bcode" HeaderText="Bcode" SortExpression="Bcode" />
                        <asp:BoundField DataField="Bstate" HeaderText="Bstate" SortExpression="Bstate" />
                        <asp:BoundField DataField="Sid" HeaderText="Sid" SortExpression="Sid" />
                        <asp:BoundField DataField="Sname" HeaderText="Sname" SortExpression="Sname" />
                        <asp:BoundField DataField="Scode" HeaderText="Scode" SortExpression="Scode" />
                        <asp:BoundField DataField="Sclass" HeaderText="Sclass" SortExpression="Sclass" />
                        <asp:BoundField DataField="Bbegindata" HeaderText="Bbegindata" SortExpression="Bbegindata" />
                        <asp:BoundField DataField="Benddata" HeaderText="Benddata" SortExpression="Benddata" />
                        <asp:BoundField DataField="Blongdata" HeaderText="Blongdata" SortExpression="Blongdata" />
                        <asp:BoundField DataField="Boverdata" HeaderText="Boverdata" SortExpression="Boverdata" />
                        <asp:BoundField DataField="Ballnum" HeaderText="Ballnum" SortExpression="Ballnum" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mklConnectionString %>" DeleteCommand="DELETE FROM [BOOK] WHERE [Bid] = @Bid" InsertCommand="INSERT INTO [BOOK] ([Bid], [Bname], [Bcode], [Bstate], [Sid], [Sname], [Scode], [Sclass], [Bbegindata], [Benddata], [Blongdata], [Boverdata], [Ballnum]) VALUES (@Bid, @Bname, @Bcode, @Bstate, @Sid, @Sname, @Scode, @Sclass, @Bbegindata, @Benddata, @Blongdata, @Boverdata, @Ballnum)" SelectCommand="SELECT * FROM [BOOK]" UpdateCommand="UPDATE [BOOK] SET [Bname] = @Bname, [Bcode] = @Bcode, [Bstate] = @Bstate, [Sid] = @Sid, [Sname] = @Sname, [Scode] = @Scode, [Sclass] = @Sclass, [Bbegindata] = @Bbegindata, [Benddata] = @Benddata, [Blongdata] = @Blongdata, [Boverdata] = @Boverdata, [Ballnum] = @Ballnum WHERE [Bid] = @Bid">
                    <DeleteParameters>
                        <asp:Parameter Name="Bid" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Bid" Type="String" />
                        <asp:Parameter Name="Bname" Type="String" />
                        <asp:Parameter Name="Bcode" Type="String" />
                        <asp:Parameter Name="Bstate" Type="String" />
                        <asp:Parameter Name="Sid" Type="String" />
                        <asp:Parameter Name="Sname" Type="String" />
                        <asp:Parameter Name="Scode" Type="String" />
                        <asp:Parameter Name="Sclass" Type="String" />
                        <asp:Parameter Name="Bbegindata" Type="DateTime" />
                        <asp:Parameter Name="Benddata" Type="DateTime" />
                        <asp:Parameter Name="Blongdata" Type="Int32" />
                        <asp:Parameter Name="Boverdata" Type="Int32" />
                        <asp:Parameter Name="Ballnum" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Bname" Type="String" />
                        <asp:Parameter Name="Bcode" Type="String" />
                        <asp:Parameter Name="Bstate" Type="String" />
                        <asp:Parameter Name="Sid" Type="String" />
                        <asp:Parameter Name="Sname" Type="String" />
                        <asp:Parameter Name="Scode" Type="String" />
                        <asp:Parameter Name="Sclass" Type="String" />
                        <asp:Parameter Name="Bbegindata" Type="DateTime" />
                        <asp:Parameter Name="Benddata" Type="DateTime" />
                        <asp:Parameter Name="Blongdata" Type="Int32" />
                        <asp:Parameter Name="Boverdata" Type="Int32" />
                        <asp:Parameter Name="Ballnum" Type="Int32" />
                        <asp:Parameter Name="Bid" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
</asp:Content>
