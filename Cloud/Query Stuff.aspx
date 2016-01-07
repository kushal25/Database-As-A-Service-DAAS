<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Query Stuff.aspx.cs" Inherits="Query_Stuff" %>

<%@ Register src="Controls/Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Query Stuff</title>
    <link href="Controls/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
           <uc1:Header ID="Header1" runat="server" />
        <h1> Query Entry</h1>
           <p> ENTER YOUR QUERY:
               <asp:TextBox ID="text1" runat="server" Width="530px"></asp:TextBox>
           </p>
           <p> 
               <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                   Width="100px" />
           </p>
           <p> ENCRYPTED FORM:&nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="text2" runat="server" Width="530px"></asp:TextBox>
           </p>
           <p> DECRYPTED FORM:&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="text3" runat="server" Width="530px"></asp:TextBox>
           </p>
    </div>
    </form>
</body>
</html>
