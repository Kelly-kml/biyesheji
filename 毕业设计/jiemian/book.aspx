<%@ Page Title="" Language="C#" MasterPageFile="~/Models/Site2.Master" AutoEventWireup="true" CodeBehind="book.aspx.cs" Inherits="毕业设计.jiemian.book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Bid" DataSourceID="SqlDataSource1">
        <Columns>
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
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mklConnectionString %>" SelectCommand="SELECT * FROM [BOOK] WHERE ([Bid] = @Bid)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="Bid" Name="Bid" QueryStringField="Bid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
