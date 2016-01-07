<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employees Info.aspx.cs" Inherits="Employees_Info" %>

<%@ Register src="Controls/Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Controls/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:Header ID="Header1" runat="server" />
    
    </div>
    <h1>Employee Information</h1>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="e_id" 
            DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." ForeColor="#333333" 
            GridLines="None" Height="226px" PageSize="5" Width="733px">
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:BoundField DataField="e_id" HeaderText="Employee ID" ReadOnly="True" 
                    SortExpression="e_id" />
                <asp:BoundField DataField="o_id" HeaderText="Organisation ID" 
                    SortExpression="o_id" />
                <asp:BoundField DataField="e_fname" HeaderText="First Name" 
                    SortExpression="e_fname" />
                <asp:BoundField DataField="e_lname" HeaderText="Last Name" 
                    SortExpression="e_lname" />
                <asp:BoundField DataField="e_contact" HeaderText="Contact Info" 
                    SortExpression="e_contact" />
                <asp:BoundField DataField="e_mailid" HeaderText="Mail ID" 
                    SortExpression="e_mailid" />
                <asp:BoundField DataField="e_position" HeaderText="Position" 
                    SortExpression="e_position" />
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" 
                Wrap="True" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Database-as-a-ServiceConnectionString1 %>" 
            DeleteCommand="DELETE FROM [Employee] WHERE [e_id] = @e_id" 
            InsertCommand="INSERT INTO [Employee] ([o_id], [e_fname], [e_lname], [e_contact], [e_mailid], [e_position]) VALUES (@o_id, @e_fname, @e_lname, @e_contact, @e_mailid, @e_position)" 
            ProviderName="<%$ ConnectionStrings:Database-as-a-ServiceConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [e_id], [o_id], [e_fname], [e_lname], [e_contact], [e_mailid], [e_position] FROM [Employee]" 
            UpdateCommand="UPDATE [Employee] SET [o_id] = @o_id, [e_fname] = @e_fname, [e_lname] = @e_lname, [e_contact] = @e_contact, [e_mailid] = @e_mailid, [e_position] = @e_position WHERE [e_id] = @e_id">
            <DeleteParameters>
                <asp:Parameter Name="e_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="o_id" Type="Int32" />
                <asp:Parameter Name="e_fname" Type="String" />
                <asp:Parameter Name="e_lname" Type="String" />
                <asp:Parameter Name="e_contact" Type="String" />
                <asp:Parameter Name="e_mailid" Type="String" />
                <asp:Parameter Name="e_position" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="o_id" Type="Int32" />
                <asp:Parameter Name="e_fname" Type="String" />
                <asp:Parameter Name="e_lname" Type="String" />
                <asp:Parameter Name="e_contact" Type="String" />
                <asp:Parameter Name="e_mailid" Type="String" />
                <asp:Parameter Name="e_position" Type="String" />
                <asp:Parameter Name="e_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
 
    </form>
    </body>
</html>
