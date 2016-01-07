<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="Controls/Header.ascx" tagname="Header" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 

<title>Database As A Service</title>




    <link href="Controls/StyleSheet.css" rel="stylesheet" type="text/css" runat ="server" />




</head>


    <form id="form1" runat="server">
    <uc1:Header ID="Header1" runat="server" />
    <h1>Home Page</h1>
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p class ="hyper" >Cloud Computing, the long-held dream of computing as a utility, has the potential 
        to transform a large part of the IT industry, making software even more 
        attractive as a service and shaping the way IT hardware is designed and 
        purchased. Developers with innovative ideas for new Internet services no longer 
        require the large capital outlays in hardware to deploy their service or the 
        human expense to operate it. They need not be concerned about overprovisioning 
        for a service whose popularity does not meet their predictions, thus wasting 
        costly resources, or underprovisioning for one that becomes wildly popular, thus 
        missing potential customers and revenue. Moreover, companies with large 
        batch-oriented tasks can get results as quickly as their programs can scale, 
        since using 1000 servers for one hour costs no more than using one server for 
        1000 hours. This elasticity of resources, without paying a premium for large 
        scale, is unprecedented in the history of IT. </p>
    <p class ="hyper" >Cloud Computing refers to both the 
        applications delivered as services over the Internet and the hardware and 
        systems software in the datacenters that provide those services. The services 
        themselves have long been referred to as Software as a Service (SaaS). The 
        datacenter hardware and software is what we will call a Cloud. When a Cloud is 
        made available in a pay-as-you-go manner to the general public, we call it a 
        Public Cloud; the service being sold is Utility Computing. We use the term 
        Private Cloud to refer to internal datacenters of a business or other 
        organization, not made available to the general public. Thus, Cloud Computing is 
        the sum of SaaS and Utility Computing, but does not include Private Clouds. 
        People can be users or providers of SaaS, or users or providers of Utility 
        Computing. We focus on SaaS Providers (Cloud Users) and Cloud Providers, which 
        have received less attention than SaaS Users.</p>
    </form>
    <p>
        &nbsp;</p>
</body>

</html>






