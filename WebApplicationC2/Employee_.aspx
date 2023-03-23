<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee_.aspx.cs" Inherits="WebApplicationC2.Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="id">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
            <asp:BoundField DataField="deptid" HeaderText="deptid" SortExpression="deptid"></asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender"></asp:BoundField>
            <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="<%$ ConnectionStrings:iicConnectionString %>" SelectCommand="SELECT * FROM [tbl_employees]"></asp:SqlDataSource><asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
</asp:Content>
