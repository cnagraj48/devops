<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="CyberConnect.Login1" %>

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


</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" style="position: relative; top: 20px;">
            <tr>
                <td>
                    <table align="center">
                        <tr>
                            <td>
                                Username :
                            </td>
                            <td>
                            <asp:TextBox ID="txtUsername" runat="server" MaxLength="20" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Password :
                            </td>
                            <td>                                
                                <asp:TextBox ID="txtPassword" runat="server" MaxLength="20" Width="250px"></asp:TextBox>
                            </td>
                        </tr>                 

                        <tr>
                            <td colspan="2" align="center">
                                <%--<asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnSave_Click" OnClientClick="return test()"/>                                
                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnFind_Click" />                                --%>
                                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
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
            
        </table>
    </div>
    </form>
</body>
</html>
