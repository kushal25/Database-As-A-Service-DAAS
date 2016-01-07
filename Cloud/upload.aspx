<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="upload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload</title>
    <link href="Controls/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>

<body>
    
    <asp:Panel ID="Panel1" runat="server" CssClass="hyper">
<h1>
                    <p style="margin-left: 400px">
                    DATABASE-AS-A-SERVICE&nbsp;&nbsp;&nbsp;&nbsp;
                    </p>
                   
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
  
                    <h1>
                    </h1>
  
    </h1> 
</asp:Panel>
    <p>
        &nbsp;</p>
    
    <div>
    <form id="form2" runat="server">
    <asp:FileUpload id="FileUploadControl" runat="server" />
    <asp:Button runat="server" id="UploadButton" text="Upload" onclick="UploadButton_Click" />
    <br /><br />
    <asp:Label runat="server" id="StatusLabel" text="Upload status: " />
</form>
    </div>
   
</body>
</html>
