<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="WebApplicationC2.Employee" Trace="true" TraceMode="SortByCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div>
         <br />   
         <h2> Employee Details</h2>
            <table style="width: 100%;">
              <asp:TextBox ID="Txt_Id" runat="server" type="hidden"></asp:TextBox>

                <tr>
                    <td class="auto-style1">Name</td>
                    <td>
                        <asp:TextBox ID="Txt_Name" runat="server"></asp:TextBox>
                       <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>--%></td>           
                </tr>
                <tr>
                    <td class="auto-style1">Address</td>
                    <td>
                        <asp:TextBox ID="Txt_Address" runat="server"></asp:TextBox>
                    </td>                  
                </tr>
                <tr>
                    <td class="auto-style1">Phone</td>
                    <td>
                        <asp:TextBox ID="Txt_Phone" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                 <tr>
                    <td class="auto-style1">Email</td>
                    <td>
                        <asp:TextBox ID="Txt_Email" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                                
                 <tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;
                    </td>
                    
                </tr>
                <tr>
                    <td  colspan="2">
                        <asp:Button ID="Btn_Add" runat="server" Text="ADD" BackColor="#FF9900" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="32px" OnClick="Btn_Add_Click" />
                 &nbsp;<asp:Button ID="Btn_Update" runat="server" Text="UPDATE" BackColor="#FF9900" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="32px" OnClick="Btn_Update_Click" />
                &nbsp; <asp:Button ID="Btn_Delete" runat="server" Text="DELETE" BackColor="#FF9900" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="32px" 
                         OnClientClick="return Confirm('Are You Sure To Delete?');" />                
               &nbsp; <asp:Button ID="BtnReset" runat="server" Text="Reset" BackColor="#FF9900" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="34px" Width="74px" OnClick="BtnReset_Click" />
&nbsp;<%--<asp:Literal ID="Ltr_Msg" runat="server"></asp:Literal>--%>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</td>                 
                </tr>
                </table>
            <br/>           

        </div>

    <asp:GridView ID="GV" runat="server" OnRowCommand="GV_RowCommand" AutoGenerateColumns="false">
        <Columns>
            <asp:TemplateField HeaderText="ID">
                <ItemTemplate>
                    <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="NAME">
                <ItemTemplate>
                    <asp:Label ID="lblName" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="ADDRESS">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PHONE">

                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("phone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="EMAIL">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="View" runat="server" CommandName="view" CommandArgument='<%#Bind("id") %>'>
       Select</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>



    </asp:GridView>


    <%--<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="id">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
            <asp:BoundField DataField="deptid" HeaderText="deptid" SortExpression="deptid"></asp:BoundField>
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender"></asp:BoundField>
            <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary"></asp:BoundField>
        </Columns>
    </asp:GridView>--%>
   <%-- <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="<%$ ConnectionStrings:iicConnectionString %>" SelectCommand="SELECT * FROM [tbl_employees]"></asp:SqlDataSource><asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
    --%>
</asp:Content>
