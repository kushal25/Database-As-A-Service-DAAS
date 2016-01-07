<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Data Provision.aspx.cs" Inherits="Data_Provision" %>


<%@ Register src="Controls/Header.ascx" tagname="Header" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Provision</title>
    <link id="Link1" href="Controls/StyleSheet.css" rel="stylesheet" type="text/css" runat ="server" />

</head>
<body>
    <form id="form1"  runat ="server">
    <uc1:Header ID="Header1" runat="server" />
    <h1>Data Provision</h1>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" DefaultMode="Insert" 
            ForeColor="#333333" GridLines="None" Height="50px" Width="357px" >
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <RowStyle BackColor="#E3EAEB" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="o_id" HeaderText="Organisation ID" 
                    SortExpression="o_id" />
                <asp:BoundField DataField="size" HeaderText="Size (in MB)" 
                    SortExpression="size" />
                <asp:BoundField DataField="db_name" HeaderText="DataBase Name" 
                    SortExpression="db_name" />
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
            InsertCommand="INSERT INTO [Data Provision] ([o_id], [size], [db_name]) VALUES (@o_id, @size, @db_name)" 
            ProviderName="<%$ ConnectionStrings:Database-as-a-ServiceConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [o_id], [size], [db_name] FROM [Data Provision]">
            <InsertParameters>
                <asp:Parameter Name="o_id" Type="Int32" />
                <asp:Parameter Name="size" Type="Int32" />
                <asp:Parameter Name="db_name" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>
    </form>
  
    </form>
</body>
</html>
