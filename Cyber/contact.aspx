<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="CyberConnect.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Business Theme - Contact Form</title> 
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
                <li><a href="solutions.aspx">Solutions</a></li>
                <li><a href="contact.aspx" class="current">Contact</a></li>
            </ul>    	
        
        </div> <!-- end of tooplate_menu -->
        
    </div>	  
</div> <!-- end of header_wrapper -->

<div id="tooplate_middle_wrapper1">
	<div id="tooplate_middle_wrapper2">
		<div id="tooplate_middle">
			
			<h1>BE ACTIVE<span>with the best coffee</span></h1>
			
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut lorem id mauris cursus pellentesque. Donec lobortis magna at orci blandit ac lobortis ipsum vestibulum.</p>
			
			<a href="#"><span>+</span> More</a>
			
		</div>
	</div>
</div>

<div id="tooplate_main">
    
    <div id="tooplate_content">

            <h2>Contact Information</h2>

        <p><em>In ac libero urna. Suspendisse sed odio ut mi auctor blandit. Duis luctus nulla metus, a vulputate mauris. Integer sed nisi sapien, ut gravida mauris.</em></p>
        <p>Nam et tellus libero. Cras purus libero, dapibus nec rutrum in, dapibus nec risus. Ut interdum mi sit amet magna feugiat auctor. Validate <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>XHTML</strong></a> and <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>CSS</strong></a>.</p>
        <div class="cleaner_h40"></div>
        
        <div class="two_column_ws float_l">
            
           		<h6>Location One</h6>
                118, Opp G H RS Road,<br />
                Perundurai<br />
                Erode, Tamil Nadu <br /><br />
                Tel: 04294 221 766<br /> 
                Mobile: 94868 49394, 95
                </div>
                
                <div class="two_column_ws float_r">
           
                <h6>Location Two</h6>
                383, Uthukuli Road, <br />
                Vijayamangalam<br />
                Erode, Tamil Nadu<br /><br />
                Tel: 04294 221 766<br /> 
                Mobile: 94868 49394, 95
            </div>       
        
            <div class="cleaner_h50"></div>
            
            <div id="contact_form">
            
				<h4>Quick Contact Form</h4>
					<form method="post" name="contact" action="#">
					
						<label for="author">Name:</label> <input type="text" id="author" name="author" class="required input_field" />
						<div class="cleaner_h10"></div>
													
						<label for="email">Email:</label> <input type="text" class="validate-email required input_field" name="email" id="email" />
						<div class="cleaner_h10"></div>
											
						<label for="subject">Subject:</label> <input type="text" class="validate-subject required input_field" name="subject" id="subject"/>				               
						<div class="cleaner_h10"></div>
							
						<label for="text">Message:</label> <textarea id="text" name="text" rows="0" cols="0" class="required"></textarea>
						<div class="cleaner_h10"></div>				
												
						<input type="submit" value="Send" id="submit" name="submit" class="submit_btn float_l" />
						<input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />
						
					</form>
			</div>           
            
    </div>
    
        <div id="tooplate_sidebar">
        
            <h2>Our Services</h2>
            
            <ul class="tooplate_list">
            <li><a href="#">PAN Card</a></li>
            <li><a href="#">Passport</a></li>
            <li><a href="#">Adhaar Correction & Printout</a></li>
            <li><a href="#">Voter ID (New & Correction)</a></li>
            <li><a href="#">All Kind of Govt. Applications</a></li>
            <li><a href="#">Land EC & Guideline Value Check</a></li>
            <li><a href="#">TNEB & PostPaid Bill Payment</a></li>
            <li><a href="#">Medical & Engineering Entrance </a></li>
            <li><a href="#">Authorized Agent for:</a></li>
		<ul ">
			<li><a href="#">Online Money Transfer</a></li>
			<li><a href="#">Travels & Hotel Booking</a></li>
			<li><a href="#">Online Vehicle Insuance </a></li>
		</ul>
            <li><a href="#">School Projects</a></li>
            </ul>
            <div class="button"><a href="services.aspx">View All</a></div>
            
            <div class="cleaner_h60"></div>
            
            <%--<h2>Testimonial</h2>
            
            <blockquote>
            <p>Aliquam tristique, lectus nec condimentum egestas, neque erat posuere purus, sed interdum elit est.</p>
            
            <cite>Smith - <span>Web designer</span></cite>
            </blockquote>--%>
            
        </div>
        
		<div class="cleaner"></div>

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
