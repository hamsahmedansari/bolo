<%@ Page Title="" Language="C#" MasterPageFile="~/UserParent.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Bolo.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact Us</title>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#myFooter").addClass("fixed-bottom");
        });
        $(document).ready(function () {
            //$(".alert_outer_box").fadeOut(0);
            $(".alert_box_close,.alert_outer_box").click(function () {
                $("div.alert_outer_box").fadeOut(500);
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel runat="server" ID="pnlAlert" Visible="false">
        <div class="alert_outer_box" style="position:fixed;width:100%;height:100%;top:0px;z-index:999;">
        <div style="position:absolute;width:100%;height:100%;background: rgba(0, 0, 0, 0.53);">
            <div class="alert alert-success alert-dismissable" style="margin: auto;margin-top:  auto;margin-bottom:  auto;top: 44%;POSITION:  fixed;width:  100%;font-size:  30px;text-align:  center;border-radius: 0px;padding:  30px;">
                <a href="#" class="close alert_box_close" aria-label="close" style="/* font-size:20px; */font-size: 30px;">×</a>
                <strong>Thank You </strong>for contacting us, we will be back with you shorltly.
            </div>
        </div>
    </div>
    </asp:Panel>
    <div class="container" style="margin-top:10px;">
        <div class="row" style="text-transform:uppercase;text-align:center;padding:20px">
            <h1>Contact us</h1>
        </div>

        <div class="row">
            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-xs-12 bg-info" style="padding:30px;">
                <h3>
                    Bolo
                </h3>
                <h4>
                    Head Office: G17, G-17A, Glamour Mall Plaza Block-10A, Gulshan Iqbal Karachi
                </h4>
                <h4>
                    Phone: +92 310-3487446
                </h4>
            </div>

            <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-12">
                <h2 style="margin-bottom:20px;">
                    Write to us
                    <span style="float:right;font-size:14px;">
                        *Required Fields
                    </span>
                </h2>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="form-group">
                        <label for="txtFirstName">First Name*</label>
                        <asp:TextBox runat="server" ID="txtFirstName" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                        <asp:Label runat="server" ID="errFirstNameRequired" Visible="false" style="color:#f00">First Name is Redquired</asp:Label>
                    </div>

                    <div class="form-group">
                        <label for="txtLastName">Last Name</label>
                        <asp:TextBox runat="server" ID="txtLastName" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                    </div>
                </div>

                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <div class="form-group">
                        <label for="txtEmail">Email*</label>
                        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder="abcd.efgh@example.com"></asp:TextBox>
                        <asp:Label runat="server" ID="errEmailRequired" Visible="false" style="color:#f00">Email is Redquired</asp:Label>
                        <asp:Label runat="server" ID="errEmailFormatInvalid" Visible="false" style="color:#f00">Email Format Not Correct</asp:Label>
                    </div>
                    <div class="form-group">
                        <label for="txtContact">Contact no*</label>
                        <asp:TextBox runat="server" ID="txtContact" CssClass="form-control" placeholder="00112233445" MaxLength="15" onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode)))return false;"></asp:TextBox>
                        <asp:Label runat="server" ID="errContactRequired" Visible="false" style="color:#f00">Contact Number is Redquired, please enter a valid contact number</asp:Label>                    
                    </div>
                </div>

                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="form-group">
                        <label for="txtMessage">Message*</label>
                        <asp:TextBox runat="server" ID="txtMessage" CssClass="form-control" TextMode="MultiLine" placeholder="Write Your Complete Message"></asp:TextBox>
                        <asp:Label runat="server" ID="errMessageRequired" Visible="false" style="color:#f00">Please Enter Your Message</asp:Label>
                    </div>
                </div>
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
                    <button class="btn btn-lg btn-danger" type="reset" runat="server" id="btnClear" onserverclick="btnClear_ServerClick">
                        <span class="fa fa-close	"></span> Clear
                    </button>
                    <button class="btn btn-lg btn-success" type="submit" runat="server" id="btnSubmit" onserverclick="btnSubmit_ServerClick">
                        <span class="fa fa-address-book-o	"> </span> Submit
                    </button>
                </div>
            </div>

        </div>

    </div>
</asp:Content>
