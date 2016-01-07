<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Organisations Info.aspx.cs" Inherits="Organisations_Info" %>

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
    <h1>Organisations Entry:</h1><asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        CellPadding="4" DataKeyNames="o_id" DataSourceID="SqlDataSource1" 
        DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" 
        Width="426px" OnItemCommand="detailvie_itemcommand" 
            OnItemInserted ="detailview_iteminsert" 
            onpageindexchanging="DetailsView1_PageIndexChanging1">
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <RowStyle BackColor="#E3EAEB" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <Fields>
            <asp:BoundField DataField="o_id" HeaderText="o_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="o_id" />
            <asp:TemplateField HeaderText="Name">
            <EditItemTemplate >
            <asp:TextBox ID="o_name" runat ="server" Text ="<%# Bind('o_name') %>" />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="o_name" ErrorMessage="NAME Required" Display ="None"></asp:RequiredFieldValidator>
            </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone No.">
            <EditItemTemplate >
            <asp:TextBox ID="o_phone" runat ="server" Text ="<%# Bind('o_phone') %>" />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="o_phone" ErrorMessage="PHONE NUMBER Required" Display="None"></asp:RequiredFieldValidator>
            </EditItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="Web Name">
            <EditItemTemplate >
            <asp:TextBox ID="o_webname" runat ="server" Text ="<%# Bind('o_webname') %>" />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  
                    ControlToValidate="o_webname" ErrorMessage="WEB NAME Required" Display="None"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="o_webname" ErrorMessage="WEB NAME in URL format" Display="None"
                    ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
            </EditItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="Plot No.">
            <EditItemTemplate >
            <asp:TextBox ID="o_plotno" runat ="server" Text ="<%# Bind('o_plotno') %>" />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="None" 
                    ControlToValidate="o_plotno" ErrorMessage="PLOT NUMBER Required"></asp:RequiredFieldValidator>
            </EditItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="Street">
            <EditItemTemplate >
            <asp:TextBox ID="o_street" runat ="server" Text ="<%# Bind('o_street') %>" 
                    Height="22px" Width="128px" />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="None"
                    ControlToValidate="o_street" ErrorMessage="STREET Required"></asp:RequiredFieldValidator>
            </EditItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="City">
            <EditItemTemplate >
            <asp:TextBox ID="o_city" runat ="server" Text ="<%# Bind('o_city') %>" />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="None"
                    ControlToValidate="o_city" ErrorMessage="CITY Required"></asp:RequiredFieldValidator>
            </EditItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="State">
            <EditItemTemplate >
            <asp:TextBox ID="o_state" runat ="server" Text ="<%# Bind('o_state') %>" />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Display="None"
                    ControlToValidate="o_state" ErrorMessage="STATE Required"></asp:RequiredFieldValidator>
            </EditItemTemplate></asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
    </asp:DetailsView>
    
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" 
        Font-Names="Arial" ForeColor="#660066" />
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
        &nbsp;</p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
