<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="Controls/StyleSheet.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
<asp:Panel ID="Panel1" runat="server" CssClass ="hyper">
<h1>
                    <p style="margin-left: 400px">
                    DATABASE-AS-A-SERVICE&nbsp;&nbsp;&nbsp;&nbsp;
                    </p>
                    
  
    </h1> 
<h2>Pathway to CLOUD!!!!</h2>
</asp:Panel>
    <form id="form1" runat="server">
    <div>
    
        <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" 
            BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
            CreateUserText="REGISTER as a NEW USER" CreateUserUrl="~/SignUp.aspx" 
            Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="142px" 
            Width="246px" OnLoggingIn="log">
            <TextBoxStyle Font-Size="0.8em" />
            <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
        </asp:Login>
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
    
    </div>
    </form>
</body>
</html>
