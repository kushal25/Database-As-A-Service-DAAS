<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Selecting An Employee.aspx.cs" Inherits="Selecting_An_Employee" %>

<%@ Register src="Controls/Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Selecting An Employee</title>
    <link href="Controls/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:Header ID="Header1" runat="server" />
    
    </div>
    <h1>Selecting An Employee
        from Organisation</h1>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="o_name" DataValueField="o_id" 
            Height="31px" Width="183px">
        </asp:DropDownList>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Database-as-a-ServiceConnectionString1 %>" 
            DeleteCommand="DELETE FROM [Organisation] WHERE [o_id] = @o_id" 
            InsertCommand="INSERT INTO [Organisation] ([o_name], [o_phone], [o_webname], [o_plotno], [o_street], [o_city], [o_state]) VALUES (@o_name, @o_phone, @o_webname, @o_plotno, @o_street, @o_city, @o_state)" 
            ProviderName="<%$ ConnectionStrings:Database-as-a-ServiceConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [o_id], [o_name], [o_phone], [o_webname], [o_plotno], [o_street], [o_city], [o_state] FROM [Organisation]" 
            UpdateCommand="UPDATE [Organisation] SET [o_name] = @o_name, [o_phone] = @o_phone, [o_webname] = @o_webname, [o_plotno] = @o_plotno, [o_street] = @o_street, [o_city] = @o_city, [o_state] = @o_state WHERE [o_id] = @o_id">
            <DeleteParameters>
                <asp:Parameter Name="o_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="o_name" Type="String" />
                <asp:Parameter Name="o_phone" Type="String" />
                <asp:Parameter Name="o_webname" Type="String" />
                <asp:Parameter Name="o_plotno" Type="Int32" />
                <asp:Parameter Name="o_street" Type="String" />
                <asp:Parameter Name="o_city" Type="String" />
                <asp:Parameter Name="o_state" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="o_name" Type="String" />
                <asp:Parameter Name="o_phone" Type="String" />
                <asp:Parameter Name="o_webname" Type="String" />
                <asp:Parameter Name="o_plotno" Type="Int32" />
                <asp:Parameter Name="o_street" Type="String" />
                <asp:Parameter Name="o_city" Type="String" />
                <asp:Parameter Name="o_state" Type="String" />
                <asp:Parameter Name="o_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="e_id" 
            DataSourceID="SqlDataSource2" 
            EmptyDataText="There are no data records to display." ForeColor="#333333" 
            GridLines="None" PageSize="2" Width="729px">
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:BoundField DataField="e_id" HeaderText="Employee ID" ReadOnly="True" 
                    SortExpression="e_id" />
                <asp:BoundField DataField="o_id" HeaderText="Organisation ID" 
                    SortExpression="o_id" />
                <asp:BoundField DataField="e_lname" HeaderText="First Name" 
                    SortExpression="e_lname" />
                <asp:BoundField DataField="e_contact" HeaderText="Contact" 
                    SortExpression="e_contact" />
                <asp:BoundField DataField="e_mailid" HeaderText="Mail ID" 
                    SortExpression="e_mailid" />
                <asp:BoundField DataField="e_position" HeaderText="Position" 
                    SortExpression="e_position" />
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Database-as-a-ServiceConnectionString1 %>" 
            DeleteCommand="DELETE FROM [Employee] WHERE [e_id] = @e_id" 
            InsertCommand="INSERT INTO [Employee] ([o_id], [e_fname], [e_lname], [e_contact], [e_mailid], [e_position]) VALUES (@o_id, @e_fname, @e_lname, @e_contact, @e_mailid, @e_position)" 
            ProviderName="<%$ ConnectionStrings:Database-as-a-ServiceConnectionString1.ProviderName %>" 
            SelectCommand="SELECT e_id, o_id, e_fname, e_lname, e_contact, e_mailid, e_position FROM Employee WHERE (o_id = @o_id)" 
            UpdateCommand="UPDATE [Employee] SET [o_id] = @o_id, [e_fname] = @e_fname, [e_lname] = @e_lname, [e_contact] = @e_contact, [e_mailid] = @e_mailid, [e_position] = @e_position WHERE [e_id] = @e_id">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="o_id" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
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
    <p>&nbsp;</p>
    </form>
    </body>
</html>
