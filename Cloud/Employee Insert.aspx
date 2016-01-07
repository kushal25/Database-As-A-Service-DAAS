<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employee Insert.aspx.cs" Inherits="Others" %>

<%@ Register src="Controls/Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS.css" rel="stylesheet" type="text/css" media ="screen"  />
    <link href="Controls/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:Header ID="Header1" runat="server" />
    
    </div>
    <h1>Employee Insert</h1>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataKeyNames="e_id" DataSourceID="SqlDataSource1" 
            DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="226px" 
            Width="358px" OnItemInserted="detailview_iteminsert" 
            OnItemCommand="detailvie_itemcommand" >
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <RowStyle BackColor="#E3EAEB" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="e_id" HeaderText="Employee ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="e_id" />
                <asp:BoundField DataField="o_id" HeaderText="Organisation ID" 
                    SortExpression="o_id" />
                <asp:BoundField DataField="e_fname" HeaderText="First Name" 
                    SortExpression="e_fname" />
                <asp:BoundField DataField="e_lname" HeaderText="Last Name" 
                    SortExpression="e_lname" />
                <asp:BoundField DataField="e_contact" HeaderText="Contact" 
                    SortExpression="e_contact" />
                <asp:BoundField DataField="e_mailid" HeaderText="Mail ID" 
                    SortExpression="e_mailid" />
                <asp:BoundField DataField="e_position" HeaderText="Position" 
                    SortExpression="e_position" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <AlternatingRowStyle BackColor="White" />
        </asp:DetailsView>
    </p>
    <p>
        
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
    </form>
    </body>
</html>
