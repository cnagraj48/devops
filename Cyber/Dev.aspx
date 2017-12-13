<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestForm1.aspx.cs" Inherits="SampleGridView.TestForm1" %>--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dev.aspx.cs" Inherits="CyberConnect.Dev" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CC Summary</title>
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

    <script language="javascript">


        function find() {

            var dtvalue = document.getElementById('txtDoS').value;
            //document.getElementById("<%=hidUpdatedDate.ClientID %>").value = DateTime.Now;//.ToString();

            if (dtvalue == "") {
                alert("Please select the date");
                return false;
            }
            else {
                var substr = dtvalue.slice(0, 11);
                document.getElementById("<%=hidDate.ClientID %>").value = substr;
            }
        }


        function clear() {

        }
        var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        function test() {

            var strMsg = "";
            if (document.getElementById('ddlLocation').value == "Select") {
                strMsg = "Location, ";
            }

            if (document.getElementById('ddlCategory').value == "Select") {
                strMsg = strMsg + "Category, ";
            }

            if (document.getElementById('ddlCategory').value == "Money_Transfer") {

                if (document.getElementById('ddlDesc').value == "Select") {
                    strMsg = strMsg + "Desccription, ";
                }

            }
            else if (document.getElementById('ddlCategory').value != "Money_Transfer") {
                if (document.getElementById('txtDesc').value == "") {
                    strMsg = strMsg + "Description, ";
                }
            }

            if (document.getElementById('txtDoS').value == "") {
                strMsg = strMsg + "Date, ";
            }

            if (document.getElementById('txtAmount').value <= 0
                || document.getElementById('txtAmount').value == "") {
                strMsg = strMsg + "Amount, ";
            }

            if (strMsg != "") {
                alert("Please enter the following value: " + strMsg.substring(0, (strMsg.length - 2)));
                return false;
            }
        }

    </script>
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
    <script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
    <link href="Styles/calendar-blue.css" rel="stylesheet" type="text/css" />
    <link href="Styles/tooplate_style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">



 

    $(document).ready(function () {
        if ($('.field').val() == "Money_Transfer") {
            $("#<%=txtDesc.ClientID %>").hide();
            $("#<%=ddlDesc.ClientID %>").show();
            $("#trAccount").show();
        }
        else {
            $("#<%=txtDesc.ClientID %>").show();
            $("#<%=ddlDesc.ClientID %>").hide();
            $("#trAccount").hide();
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

                $("#<%=txtDesc.ClientID %>").hide();
                $("#<%=ddlDesc.ClientID %>").show();
                $("#trAccount").show();
            }
            else {
                $("#<%=txtDesc.ClientID %>").show();
                $("#<%=ddlDesc.ClientID %>").hide();
                $("#trAccount").hide();
            }


        });
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
                    <table align="center">
                        <tr>
                            <td>
                                   <font color="white">
                                Location :
                                       </font>
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
                                   <font color="white">
                                Category :
                                       </font>
                            </td>
                            <td>                                
                                <asp:DropDownList ID="ddlCategory" runat="server" Width="255px" CssClass="field" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="True">
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
                                </asp:DropDownList>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                <font color="white">
                                Description :
                                    </font>
                                    
                            </td>
                            <td>
                                <asp:TextBox ID="txtDesc" runat="server" MaxLength="50" Width="250px"></asp:TextBox>
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
                                    <asp:ListItem>Itz-Cash</asp:ListItem>
                                    <asp:ListItem>Airtel</asp:ListItem>
                                    <asp:ListItem>Others</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>                                          
                        <tr>
                            <td>
                                   <font color="white">
                                Date :
                                       </font>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDoS" runat="server" MaxLength="200" Width="228px"></asp:TextBox>
                                <img src="Images/calender.png" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                   <font color="white">
                                Amount :
                                       </font>
                            </td>
                            <td>
                                <asp:TextBox ID="txtAmount" runat="server" MaxLength="200" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="btnSave" runat="server" Text="Save" OnClientClick="return test()" OnClick="btnSave_Click" />
                                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" Visible="false" OnClientClick="return test()"/>
                                <asp:Button ID="btnFind" runat="server" Text="Find" OnClick="btnFind_Click" OnClientClick="return find()"/>
                                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                                <asp:Button ID="btnReport" runat="server" Text="Report" OnClick="btnReport_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <br />
                    <asp:Label ID="lblMessage" runat="server" EnableViewState="false" ForeColor="White"></asp:Label>
                </td>
            </tr>
<%--            <tr>
                <td>
                    
                </td>
            </tr>--%>
        </table>
        <input type="hidden" runat="server" id="hidSummaryID" />
        <input type="hidden" runat="server" id="hidDate" />
        <input type="hidden" runat="server" id="hidUpdatedDate" />
        <input type="hidden" runat="server" id="hidAccount" value="NA"/>  

        <input type="hidden" runat="server" id="hidLocationPrev" />
        <input type="hidden" runat="server" id="hidCategoryPrev" />
        <input type="hidden" runat="server" id="hidDescPrev" />
        <input type="hidden" runat="server" id="hidDosPrev" />
        <input type="hidden" runat="server" id="hidAmountPrev" />
        <input type="hidden" runat="server" id="hidAccountPrev" />
        
        

        
             
    </div>

		        </div>
	        </div>
        </div>

        <div id="tooplate_main">
   <%--         <div id="tooplate_content">--%>
                    <asp:GridView ID="SummaryGrid" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True"
                        EmptyDataText="No Records Found" GridLines="both" CssClass="gv" EmptyDataRowStyle-ForeColor="Red" HorizontalAlign="Center">
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
                                    <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
                                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure? want to delete the entry.');"
                                        OnClick="btnDelete_Click" />
                                  <asp:Label ID="lblSummaryID" runat="server" Text='<%#Eval("SummaryID") %>' Visible="false"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>

      <%--      </div>--%>
        </div>

       <%-- <div class="cleaner"></div>  

        <div id="tooplate_footer_wrapper">

             <div id="tooplate_footer">
    
                Copyright © 2017 Cyber Connect
    
            </div> <!-- end of tooplate_footer -->

        </div> --%>
    </form>
</body>
</html>

