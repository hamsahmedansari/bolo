<%@ Page Title="" Language="C#" MasterPageFile="~/UserParent.Master" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="Bolo._404" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Page Not Found</title>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#myFooter").addClass("fixed-bottom");
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:15rem">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12 text-center">
                <div class="text-dark">
                    <p style="font-size:15rem">
                        404!
                    </p>
                    <h1>
                        Page not found!
                    </h1>
                </div>
            </div>
            <div class="col-lg-8 col-md-8 col-sm-12">
                <a href="Default.aspx">
                    <img src="img/Logo.png" alt="Logo" class="img img-responsive" />
                </a>
            </div>
        </div>
    </div>
</asp:Content>
