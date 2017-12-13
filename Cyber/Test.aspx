<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="CyberConnect.Test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
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

			Toll Free: <span>08 324 552 409</span>
        
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


  <%--<form id="form2" runat="server">    <div>--%>
        <table align="center" style="position: relative; top: 20px;">
            <tr>
                <td>
                    <table align="center">
                        <tr>
                            <td>
                                Location :
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlLocation" runat="server" Width="255px">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>PRI</asp:ListItem>
                                    <asp:ListItem>VJM</asp:ListItem>
                                    <asp:ListItem>Others</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Category :
                            </td>
                            <td>                                
                                <asp:DropDownList ID="ddlCategory" runat="server" Width="255px" CssClass="field">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Browsing</asp:ListItem>
                                    <asp:ListItem>Ticket</asp:ListItem>
                                    <asp:ListItem>Printout</asp:ListItem>
                                    <asp:ListItem>Gaming</asp:ListItem>
                                    <asp:ListItem>Scanning</asp:ListItem>
                                    <asp:ListItem>Xerox</asp:ListItem>
                                    <asp:ListItem>Typing</asp:ListItem>                                    
                                    <asp:ListItem>Money Transfer</asp:ListItem>
                                    <asp:ListItem>Others</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Description :
                            </td>
                            <td>
                                <asp:TextBox ID="txtDesc" runat="server" MaxLength="10" Width="250px"></asp:TextBox>
                                <asp:DropDownList ID="ddlDesc" runat="server" Width="258px" >
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Deposit</asp:ListItem>
                                    <asp:ListItem>Transfer</asp:ListItem>
                                </asp:DropDownList>                               
                            </td>
                        </tr>                            
                        <tr id="trAccount">
                            <td>
                                Account :
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlAccount" runat="server" Width="258px" >
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>It-Cash</asp:ListItem>
                                    <asp:ListItem>Airtel</asp:ListItem>
                                    <asp:ListItem>Others</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>                                          
                        <tr>
                            <td>
                                Date :
                            </td>
                            <td>
                                <asp:TextBox ID="txtDoS" runat="server" MaxLength="200" Width="228px"></asp:TextBox>
                                <img src="Images/calender.png" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Amount :
                            </td>
                            <td>
                                <asp:TextBox ID="txtAmount" runat="server" MaxLength="200" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <%--<asp:Button ID="btnSave" runat="server" Text="Save" />OnClientClick="return test()" OnClick="btnSave_Click" />
                                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" Visible="false" OnClientClick="return test()"/>
                                <asp:Button ID="btnFind" runat="server" Text="Find" OnClick="btnFind_Click" OnClientClick="return find()"/>
                                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                                <asp:Button ID="btnReport" runat="server" Text="Report" OnClick="btnReport_Click" />--%>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <br />
                    <asp:Label ID="lblMessage" runat="server" EnableViewState="false" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="SummaryGrid" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True"
                        EmptyDataText="No Records Found" GridLines="both" CssClass="gv" EmptyDataRowStyle-ForeColor="Red" >
                        <Columns>

                            <asp:TemplateField HeaderText="Location">
                                <ItemTemplate>
                                    <asp:Label ID="lblLocation" runat="server" Text='<%#Eval("SummaryLocation") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Category">
                                <ItemTemplate>
                                    <asp:Label ID="lblCategory" runat="server" Text='<%#Eval("SummaryCategory") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Description">
                                <ItemTemplate>
                                    <asp:Label ID="lblDesc" runat="server" Text='<%#Eval("SummaryDescription") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Account">
                                <ItemTemplate>
                                    <asp:Label ID="lblAccount" runat="server" Text='<%#Eval("Account") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Date">
                                <ItemTemplate>
                                    <asp:Label ID="lblDate" runat="server" Text='<%#Eval("SummaryDate") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Amount">
                                <ItemTemplate>
                                    <asp:Label ID="lblAmount" runat="server" Text='<%#Eval("SummaryAmount") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                   <%-- <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
                                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure? want to delete the entry.');"
                                        OnClick="btnDelete_Click" />
                                  <asp:Label ID="lblSummaryID" runat="server" Text='<%#Eval("SummaryID") %>' Visible="false"></asp:Label>--%>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <input type="hidden" runat="server" id="hidSummaryID" />
        <input type="hidden" runat="server" id="hidDate" />
        <input type="hidden" runat="server" id="hidAccount" value="NA"/>        
    </div>
    <%--</form>--%>			

			
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