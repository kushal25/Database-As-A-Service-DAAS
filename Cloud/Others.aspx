<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Others.aspx.cs" Inherits="Emp_Insert" %>

<%@ Register src="Controls/Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Others</title>
    <link href="Controls/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:Header ID="Header1" runat="server" />
    
    </div>
    <h1>Others</h1>
    <p Class="wepiuj">
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/Employee Update.aspx">Employee Update</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/Selecting An Employee.aspx">Selecting An Employee</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:HyperLink ID="HyperLink4" runat="server" 
            NavigateUrl="~/Company Details.aspx">Company Details</asp:HyperLink>

      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Query Stuff.aspx">Query Details</asp:HyperLink>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    </form>
</body>
</html>
