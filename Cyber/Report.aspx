<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="CyberConnect.Report" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <style type="text/css">
        .gv
        {
            font-family: Arial;
            margin-top: 30px;
            font-size: 14px;
        }
        .gv th
        {
            background-color: #5D7B9D;
            font-weight: bold;
            color: #fff;
            padding: 2px 10px;
        }
        .gv td
        {
            padding: 2px 10px;
        }
        input[type="submit"]
        {
            margin: 2px 10px;
            padding: 2px 20px;
            background-color: #5D7B9D;
            border-radius: 10px;
            border: solid 1px #000;
            cursor: pointer;
            color: #fff;
            height: 28px;
        }
        input[type="submit"]:hover
        {
            background-color: orange;
        }
    </style>

<script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
<script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
<link href="Styles/calendar-blue.css" rel="stylesheet" type="text/css" />
<link href="Styles/tooplate_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">

    function test() {

        $("#tdmtbal").hide();        
        $("#hdnIsClickMT").val ("");
        var strMsg = "";


        if (document.getElementById('ddlReportType').value == "Select") {
            strMsg = strMsg + "ReportType, ";
        }

        if (document.getElementById('ddlReportType').value == "Daily") {         
            if (document.getElementById('ddlLocation').value == "Select") {
                strMsg = "Location, ";
            }
            if (document.getElementById('ddlCategory').value == "Select") {
                strMsg = strMsg + "Category, ";
            }
            if (document.getElementById('txtDoS').value == "") {
                strMsg = strMsg + "Date, ";
            }
            if (document.getElementById('ddlCategory').value == "Money_Transfer") {
                if (document.getElementById('ddlDesc').value == "Select") {
                    strMsg = strMsg + "Description, ";
                }
                if (document.getElementById('ddlAccount').value == "Select") {
                    strMsg = strMsg + "Account, ";
                }
            }
        }



        if (document.getElementById('ddlReportType').value == "Monthly") {
            if (document.getElementById('txtDoS').value == "") {
                strMsg = strMsg + "Date, ";
            }
        }
        if (document.getElementById('ddlReportType').value == "Annual") {
            if (document.getElementById('txtDoS').value == "") {
                strMsg = strMsg + "Date, ";
            }
        }

        if (strMsg != "") {
            alert("Please enter the following value: " + strMsg.substring(0, (strMsg.length - 2)));
            return false;
        }
    }


    $(document).ready(function () {

        if ($("#hdnIsClickMT").val() == "T")
        {
            $("#tdmtbal").show();
        }
        else
        {
            $("#tdmtbal").hide();
        }
        
        $("#hdnIsClickMT").val ("");

        $("#btnMTBal").click(function () {
            $("#hdnIsClickMT").val("T");
        });

        if ($('.field').val() == "Money_Transfer") {
            $("#trAccount").show();
            $("#trDesc").show();           
         }
         else {
            $("#trAccount").hide();
            $("#trDesc").hide();
         }





        if ($('.field1').val() == "Daily") {
            $("#trLocation").show();
            $("#trCategory").show();
        }
        else {
            $("#trLocation").hide();
            $("#trCategory").hide();
            
        }





        

        $("#<%=txtDoS.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%Y/%m/%d %H:%M",
            daFormat: "%l;%M %p, %e %m,  %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });

        $(".field").change(function () {
            if ($('.field').val() == "Money_Transfer") {
                $("#trAccount").show();
                $("#trDesc").show();
            }
            else {
                $("#trAccount").hide();
                $("#trDesc").hide();
            }           
        });

        $(".field1").change(function () {
        if ($('.field1').val() == "Daily") {
            $("#trLocation").show();
            $("#trCategory").show();

        }
        else {
            $("#trLocation").hide();
            $("#trCategory").hide();
        }
        });


                                                                            //$(".field1").change(function () {
                                                                            //    if ($('.field1').text == "Monthly") {
                                                                            //        $("#ddlLocation").text = 'Select';
                                                                            //        $("#ddlCategory").text = 'Select';
                                                                            //    }
                                                                            //    else {
                                                                            //        $("#trAccount").hide();
                                                                            //        $("#trDesc").hide();
                                                                            //    }
                                                                            //});




        function find() {

            var dtvalue = document.getElementById('txtDoS').value;
            if (dtvalue == "") {
                alert("Please select the date");
                return false;
            }
            else {
                var substr = dtvalue.slice(0, 11);
                document.getElementById("<%=hidDate.ClientID %>").value = substr;
            }
        }
    });


</script>

</head>
<body>
    <form id="form1" runat="server">
         <div id="tooplate_header_wrapper">

    <div id="tooplate_header">
    
        <div id="site_title">
        
        	<h1>
		<!--<a href="#"><img src="images/tooplate_logo.png" alt="business template" />-->
<span>CYBER CONNECT</span></a></h1>
        
        </div> <!-- end of site_title -->
        
        <div id="header_phone_no">

			Contact us: <span>04294 221 766</span>
        
        </div>
        
        <div class="cleaner_h10"></div>
        
        <div id="tooplate_menu">
        	
            <div id="home_menu"><a href="#"></a></div>
                
            <ul>
                <li><a href="index.aspx" class="current">Home</a></li>
                <li><a href="about.aspx">About Us</a></li>
                <li><a href="services.aspx">Services</a></li>
                <li><a href="solutions.aspx">Solutions</a></li>
                <li><a href="contact.aspx">Contact</a></li>
            </ul>    	
        
        </div> <!-- end of tooplate_menu -->
        
    </div>	  
</div> <!-- end of header_wrapper -->

        <div id="tooplate_middle_wrapper1">
	        <div id="tooplate_middle_wrapper2">
		        <div id="tooplate_middle">
    <div>
         <table align="center" style="position: relative; top: 20px;">
             <tr>
                 <td>
    <table align="center" style="position: relative; top: 20px;">
            <tr>
                <td>
                    <table align="center">
                         <tr>
                            <td>
                                <font color="white">Report Type :</font>
                            </td>
                            <td>                                
                                <asp:DropDownList ID="ddlReportType" runat="server" Width="258px" CssClass="field1" >
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Daily</asp:ListItem>
                                    <asp:ListItem>Monthly</asp:ListItem>                                    
                                    <asp:ListItem>Annual</asp:ListItem>    
                                </asp:DropDownList>
                            </td>
                        </tr>
                        
                        <tr id="trLocation">
                            <td>
                                <font color="white">Location :</font>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlLocation" runat="server" Width="255px">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>PRI</asp:ListItem>
                                    <asp:ListItem>VJM</asp:ListItem>
                                    <asp:ListItem>Combined</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr id="trCategory">
                            <td>
                                <font color="white">Category :</font>
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
                                    <asp:ListItem>Money_Transfer</asp:ListItem>
                                    <asp:ListItem>Others</asp:ListItem>
                                    <asp:ListItem>Consolidated</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr id="trDesc">
                            <td>
                                <font color="white">Description :</font>
                            </td>
                            <td>                                
                                <asp:DropDownList ID="ddlDesc" runat="server" Width="258px" >
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Deposit</asp:ListItem>
                                    <asp:ListItem>Transfer</asp:ListItem>                                    
                                    <asp:ListItem>Combined</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr >
                         <tr id="trAccount">
                            <td>
                                <font color="white">Account :</font>
                            </td>
                            <td>                                
                                <asp:DropDownList ID="ddlAccount" runat="server" Width="258px" >
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>Airtel</asp:ListItem>
                                    <asp:ListItem>Itz-Cash</asp:ListItem>                                                                        
                                    <asp:ListItem>Combined</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                       
                        <tr>
                            <td>
                                <font color="white">Date :</font>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDoS" runat="server" MaxLength="200" Width="228px"></asp:TextBox>
                                <img src="Images/calender.png" />
                            </td>
                        </tr>                        
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="btnGenerate" runat="server" Text="Generate" OnClientClick="return test()" OnClick="btnGenerate_Click" />                                
                                <asp:Button ID="btnClear" runat="server" Text="Clear"   />                                
                                <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" /> 
                                <asp:Button ID="btnMTBal" runat="server" Text="MT BAL"  OnClick="btnMTBal_Click"/>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <br />
                    <asp:Label ID="Label1" runat="server" EnableViewState="false" ForeColor="white"></asp:Label>
                </td>
            </tr>
                        </table>
                 </td>
                 <td id="tdmtbal">
                     <table align="center" style="position: relative; top: 20px;">
                         <tr><td></td><td></td></tr><tr><td></td><td></td></tr>
                         <tr><td></td><td></td></tr><tr><td></td><td></td></tr><tr><td></td><td></td></tr><tr><td></td><td></td></tr>
                         <tr><td><b><font color="white">Airtel:</font></b></td><td><b><asp:Label ID="lblAirtelBal" runat="server" EnableViewState="false" ForeColor="black"></asp:Label></b></td></tr>
                         <tr><td><b><font color="white">Itz-Cash:</font></b></td><td><b><asp:Label ID="lblItzCashBal" runat="server" EnableViewState="false" ForeColor="black"></asp:Label></b></td></tr>
                         </table>

                 </td>


             </tr>
             </table>


                </td>
            </tr>
            <tr>
                <td align="center">
                    <br />
                    <asp:Label ID="lblMessage" runat="server" EnableViewState="false" ForeColor="white"></asp:Label>
                </td>
            </tr>
            
        </table>
    </div>
                    </div>
	        </div>
        </div>
        <div id="report">

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <rsweb:ReportViewer ID="rptSample" runat="server" Width="1050px">
        </rsweb:ReportViewer>
        
        <input type="hidden" runat="server" id="hidDate" />

         <input type="hidden" runat="server" id="hdnIsClickMT" />

                    </div>

<%--        <div class="cleaner"></div>  

        <div id="tooplate_footer_wrapper">

             <div id="tooplate_footer">
    
                Copyright © 2017 Cyber Connect
    
            </div> <!-- end of tooplate_footer -->

        </div> --%>

    </form>
</body>
</html>
