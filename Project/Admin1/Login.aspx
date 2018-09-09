<%@ Page Language="C#" MasterPageFile="BoloAdmin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bolo.Login" Title="Login - Bolo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" Runat="Server">
    <div class="Container">

        <div class="PageTitle">
            Please Login
        </div>
        <asp:Panel ID="pnlMain" runat="server">
        <div class="Form" style="width:50%;">
            
            <table style="height: 323px" width="100%" border="0" id="tblMain">
            <tr>
                <td align="center" style="height: 23px">
                    </td>
            </tr>
            <tr>
                <td style="height: 95px" align="center">
                    <table style="border-right: black 1px solid; border-top: black 1px solid; border-left: black 1px solid;
                        width: 423px; border-bottom: black 1px solid">
                        <tr>
                            <td align="center" colspan="4">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                            </td>
                            <td align="right">
                                <asp:Label ID="Label5" runat="server" Text="User Name:"></asp:Label>&nbsp;
                            </td>
                            <td style="width: 260px">
                                <asp:TextBox ID="txtUserName" runat="server" Width="254px" Font-Names="Arial" Font-Size="14pt"></asp:TextBox>
                            </td>
                            <td style="width: 3px; color: red">
                                *
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                            </td>
                            <td align="right">
                                <asp:Label ID="Label6" runat="server" Text="Password:"></asp:Label>&nbsp;
                            </td>
                            <td style="width: 260px">
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="254px" Font-Size="14pt"></asp:TextBox>
                            </td>
                            <td style="width: 3px; color: red">
                                *
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                            </td>
                            <td class="style5">
                            </td>
                            <td class="style6">
                            </td>
                            <td class="style7">
                            </td>
                        </tr>
                        <tr>
                            <td colspan = "4" align="center">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Button ID="btnCancel" runat="server" Text="Back" Width="110px" Height="49px" BorderColor="Red" valign = "center"
                                    Font-Bold="True" OnClick="btnBack_Click"/>
                                    </td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td>
                                        <asp:Button ID="btnLogin" runat="server" Text="Login" Width="110px" Height="49px"
                                    BorderColor="Red" Font-Bold="True" margin-right = "100px" OnClick="btnLogin_Click" />
                                    </td>
                                </tr>
                            </table>
                            </td>
                            </tr>
            <tr>
                <td colspan="4">
                </td>
            </tr>
        </table>
        </td> </tr>
        <tr>
            <td style="height: 2px" align="center">
                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                    Display="None" ErrorMessage="User Name is required" Enabled = "false"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                    Display="None" ErrorMessage="Password is required" Enabled = "false"></asp:RequiredFieldValidator>&nbsp;<asp:Label
                        ID="Label7" runat="server" ForeColor="Red"></asp:Label>
                <asp:ValidationSummary ID="summaryOfErrors" runat="server" HeaderText="Following error(s) occured:"
                    ForeColor="Red" />
            </td>
        </tr>
        </table>
           </asp:Panel>
       </div>
        
</div>

    <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" Font-Names="Arial Narrow"></asp:Label>
    </div>
    

</asp:Content>

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bolo</title>
    <style type="text/css">
        .style4
        {
            width: 38px;
            height: 28px;
        }
        .style5
        {
            height: 28px;
        }
        .style6
        {
            width: 260px;
            height: 28px;
        }
        .style7
        {
            width: 3px;
            height: 28px;
        }
        .auto-style1 {
            width: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="btnLogin">
    <div>
        <table style="height: 323px" width="100%" border="0">
            <tr>
                <td align="center">
                    <asp:Image ID="Image1" runat="server" ImageAlign="Middle" ImageUrl="../Images/big logo.png"
                        Height="74px" Width="507px" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Admin Login"
                        Width="357px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 95px" align="center">
                    <table style="border-right: black 1px solid; border-top: black 1px solid; border-left: black 1px solid;
                        width: 423px; border-bottom: black 1px solid">
                        <tr>
                            <td align="center" colspan="4">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                            </td>
                            <td align="right">
                                <asp:Label ID="Label1" runat="server" Text="User Name:"></asp:Label>&nbsp;
                            </td>
                            <td style="width: 260px">
                                <asp:TextBox ID="txtUserName" runat="server" Width="254px" Font-Names="Arial" Font-Size="14pt"></asp:TextBox>
                            </td>
                            <td style="width: 3px; color: red">
                                *
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                            </td>
                            <td align="right">
                                <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>&nbsp;
                            </td>
                            <td style="width: 260px">
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="254px" Font-Size="14pt"></asp:TextBox>
                            </td>
                            <td style="width: 3px; color: red">
                                *
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                            </td>
                            <td class="style5">
                            </td>
                            <td class="style6">
                            </td>
                            <td class="style7">
                            </td>
                        </tr>
                        <tr>
                            <td colspan = "4" align="center">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Button ID="btnBack" runat="server" Text="Back" Width="110px" Height="49px" BorderColor="Red" valign = "center"
                                    Font-Bold="True" OnClick="btnBack_Click"/>
                                    </td>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td>
                                        <asp:Button ID="btnLogin" runat="server" Text="Login" Width="110px" Height="49px"
                                    BorderColor="Red" Font-Bold="True" margin-right = "100px" OnClick="btnLogin_Click" />
                                    </td>
                                </tr>
                            </table>
                            </td>
                            </tr>
            <tr>
                <td colspan="4">
                </td>
            </tr>
        </table>
        </td> </tr>
        <tr>
            <td style="height: 2px" align="center">
                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                    Display="None" ErrorMessage="User Name is required" Enabled = "false"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                    Display="None" ErrorMessage="Password is required" Enabled = "false"></asp:RequiredFieldValidator>&nbsp;<asp:Label
                        ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label>
                <asp:ValidationSummary ID="summaryOfErrors" runat="server" HeaderText="Following error(s) occured:"
                    ForeColor="Red" />
            </td>
        </tr>
        </table>
    </div>
    </form>
</body>
</html>--%>
