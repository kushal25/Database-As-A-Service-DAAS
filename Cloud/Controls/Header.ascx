<%@ Control Language="C#" ClassName="Header" %>

<script runat="server">

    
    protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
    {

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string n;
        int  m;
        n = Convert.ToString(Session["var1"]);
        Label1.Text = n.ToUpper();
        m = Convert.ToInt32(Session["var2"]);
        if (m == 0)
        {
            Response.Redirect("~/Login.aspx");
        }
        
        
    }
</script>
<asp:Panel ID="Panel1" runat="server" CssClass="hyper">
<h1>
                    <p style="margin-left: 400px">
                    DATABASE-AS-A-SERVICE&nbsp;&nbsp;&nbsp;&nbsp;
                    </p>
                    <img src="../Images/evolution-of-programmer.jpg" runat="server" 
                        style="width: 1126px" />
                    <h1>
                    </h1>
                    <h2>
                        Pathway to CLOUD!!!!</h2>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
                    <h1>
                    </h1>
  
    </h1> 
</asp:Panel>
    <asp:Panel ID="MenuPanel1" runat ="server" CssClass="wepiuj" ><p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl ="~/Default.aspx">Home Page</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl ="~/Employees Info.aspx">Employees Info</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl ="~/Organisations Info.aspx">Organisation Editing</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl ="~/Employee Insert.aspx">Employee Insert</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl ="~/Data Provision.aspx">Data Provision</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl ="~/upload.aspx">Upload</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl ="~/Others.aspx">Others</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LoginStatus ID="LoginStatus1" runat="server" 
            LogoutPageUrl="~/Login.aspx" LogoutAction="Redirect" />
    </p>
    </asp:Panel>
 
 <p __designer:mapid="63" class="dqwhu">
     WELCOME&nbsp;
    <asp:Label ID="Label1" runat="server" CssClass="dqwhu"></asp:Label>
     !!!!</p>

 
    


 
    


 
    


 
    
<link href="../CSS.css" rel="stylesheet" type="text/css" />

 
    


 
    
<link href="StyleSheet.css" rel="stylesheet" type="text/css" />


 
    


 
    
<link href="StyleSheet.css" rel="stylesheet" type="text/css" />



 
    


 
    
