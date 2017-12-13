<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="solutions.aspx.cs" Inherits="CyberConnect.solutions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Solutions</title> 
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="Styles/tooplate_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
<div id="tooplate_header_wrapper">

    <div id="tooplate_header">
    
        <div id="site_title">
        
        	<h1><a href="#"><img src="images/tooplate_logo.png" alt="business template" /><span>Free HTML Template</span></a></h1>
        
        </div> <!-- end of site_title -->
        
        <div id="header_phone_no">

			Toll Free: <span>04294 221 766</span>
        
        </div>
        
        <div class="cleaner_h10"></div>
        
        <div id="tooplate_menu">
        	
            <div id="home_menu"><a href="#"></a></div>
                
            <ul>
                <li><a href="index.aspx">Home</a></li>
                <li><a href="about.aspx">About Us</a></li>
                <li><a href="services.aspx">Services</a></li>
                <li><a href="solutions.aspx" class="current">Solutions</a></li>
                <li><a href="contact.aspx">Contact</a></li>
            </ul>    	
        
        </div> <!-- end of tooplate_menu -->
        
    </div>	  
</div> <!-- end of header_wrapper -->

<div id="tooplate_middle_wrapper1">
	<div id="tooplate_middle_wrapper2">
		<div id="tooplate_middle">

<table align="right">
<tr> <td>First name:</td><td><input type="text" name="fname"></td></tr>
<tr> <td>Last name:</td><td><input type="text" name="lname"></td></tr>
<tr> <td></td><td><asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click1" /></td></tr>
</table>

			

			
		</div>
	</div>
</div>





    <div class="cleaner"></div> 

<div id="tooplate_footer_wrapper">

     <div id="tooplate_footer">
    
        Copyright © 2017 Cyber Connect
    
    </div> <!-- end of tooplate_footer -->

</div> 
    </form>
</body>
</html>
