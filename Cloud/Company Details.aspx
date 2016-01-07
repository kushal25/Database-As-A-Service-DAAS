<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company Details.aspx.cs" Inherits="Company_Details" %>

<%@ Register src="Controls/Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Company Details</title>
    <link href="Controls/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:Header ID="Header1" runat="server" />
    
    </div>
    <h1>Company Details</h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." ForeColor="#333333" 
        GridLines="None" PageSize="2" Width="363px">
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="o_id" HeaderText="Organisation ID" 
                SortExpression="o_id" />
            <asp:BoundField DataField="attrib1" HeaderText="Attribute 1" 
                SortExpression="attrib1" />
            <asp:BoundField DataField="attrib2" HeaderText="Attribute 2" 
                SortExpression="attrib2" />
            <asp:BoundField DataField="attrib3" HeaderText="Attribute 3" 
                SortExpression="attrib3" />
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Database-as-a-ServiceConnectionString1 %>" 
        ProviderName="<%$ ConnectionStrings:Database-as-a-ServiceConnectionString1.ProviderName %>" 
        SelectCommand="SELECT [o_id], [attrib1], [attrib2], [attrib3] FROM [Company Details]">
    </asp:SqlDataSource>
    </form>
</body>
</html>
