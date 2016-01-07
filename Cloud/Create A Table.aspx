<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create A Table.aspx.cs" Inherits="Create_A_Table" Debug ="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Table Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Attributes1:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        Attribute2:&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Create A Table" Width="184px" />
    
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
