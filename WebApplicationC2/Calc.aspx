<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calc.aspx.cs" Inherits="WebApplicationC2.Calc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<link rel="stylesheet" href="Content/style.css" />
<br />
   <%-- <div style="background-color:antiquewhite">--%>
        <br />
    <asp:Label ID="Label1" runat="server" Text="First No." ></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" placeholder="First No."></asp:TextBox> <br /> <br /> 
    <asp:Label ID="Label2" runat="server" Text="Second No."></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" placeholder="Second No."></asp:TextBox> <br /> <br />
        <asp:Label ID="Label3" runat="server" Text="Result" ></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" placeholder="Result"></asp:TextBox> <br /> <br />
    <asp:Button ID="BtnSubmit" runat="server" Text="ADD" OnClick="BtnSubmit_Click" BackColor="#333300" Font-Bold="True" ForeColor="#FF9900" />
        <asp:Button ID="BtnSub" runat="server" Text="SUB" BackColor="#333300" Font-Bold="True" ForeColor="#FF9900" OnClick="BtnSub_Click" />
        <asp:Button ID="BtnMul" runat="server" Text="MUL" BackColor="#333300" Font-Bold="True" ForeColor="#FF9900" OnClick="BtnMul_Click" />
        <asp:Button ID="BtnDiv" runat="server" Text="DIV" BackColor="#333300" Font-Bold="True" ForeColor="#FF9900" OnClick="BtnDiv_Click" />
<br />
<%--</div>--%>
</asp:Content>
