<%@ Page Title="" Language="C#" MasterPageFile="~/UserParent.Master" AutoEventWireup="true" CodeBehind="Youtube.aspx.cs" Inherits="Bolo.Youtube" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .loaderImage
        {
            position: fixed;
            z-index: 999;
            height: 100%;
            width: 100%;
            top: 0;
            background-color: Black;
            filter: alpha(opacity=60);
            opacity: 0.6;
            -moz-opacity: 0.8;
        }
      .center
        {
            z-index: 1000;
            margin: 300px auto;
            padding: 10px;
            width: 130px;
            background-color: White;
            border-radius: 10px;
            filter: alpha(opacity=100);
            opacity: 1;
            -moz-opacity: 1;
        }
        .center img
        {
            height: 128px;
            width: 128px;
        }      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <asp:ScriptManager ID="ScriptManager1" runat="server">
   </asp:ScriptManager>
    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        <div class="loaderImage">
            <div class="center">
                <img alt="Uploading" src="loader.gif" />
            </div>
        </div>
    </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
              <div class="container-fluid" style="background-image:url('../img/asdasdacasd.jpg');background-repeat:no-repeat;background-position:100%;background-size:cover;height:100%;width:100%;">
        <div class="container" style="
    height: 80%;
    margin-top: 2%;
">

            <div class="col-xl-7 col-lg-7 col-md-7 col-sm-12 col-xs-12 custom_res_login_left" style="
    padding: 5%;
    padding-right:0px;
    background-color: rgba(0, 120, 255, 0.77);
    border-bottom-left-radius: 5px;
    border-top-left-radius: 5px;
    height: 480px;
    color:#fff
    ">
                <a href="#">
                    <img src="../img/Logo.png" class="container-fluid img img-responsive costom_login_img_res" alt="Alternate Text" style="width:100%;max-width:300px;" />
                </a>
                <hr class="custom_login_hr" style="width:85%;margin-left:  0px;" />
                <p class="custom_login_p" style="font-size:20px;">
                    <span class="fa fa-envelope" style="width:30px;color:#fff">
                    </span>
                   <asp:Label runat="server" ID="pEmailAddress" CssClass="text-dark"></asp:Label>
                </p>
                <p class="custom_login_p" style="font-size:20px;">
                    <span class="fa fa-check-square" style="width:30px;color:#fff">
                    </span>
                    100% Trusted by Thousand Of Happy User
                </p>
                <p class="custom_login_p" style="font-size:20px;">
                    <span class="fa fa-dollar	" style="width:30px;color:#fff">
                    </span>
                    Earn with Bolo.com.pk
                </p>
                <p class="custom_login_p" style="font-size:20px;">
                    <span class="fa fa-mixcloud	" style="width:30px;color:#fff">
                    </span>
                    Save & Secure
                </p>
            </div>

                <div class="col-xl-5 col-lg-5 col-md-5 col-sm-12 col-xs-12 costom_login_right" style="
    background-color: #fff;
    padding:0px;
    height: 480px;">
                    <div style="
    padding: 5%;
    padding-right: 9%;
    padding-left: 9%;
    border-bottom-right-radius: 5px;
    border-top-right-radius: 5px;">

                        <h4 style="text-transform:uppercase;color:#999">
                            <strong>
                                Submit Your Video
                            </strong>
                        </h4>
                        <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-bottom-left-radius:0px;border-bottom-right-radius:0px;">
                            <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                                <i class="fa fa-user		 custom_po cust_grey" style="font-size:17px;"></i>
                            </span>
                            <asp:TextBox runat="server" ID="vidTitle" class="form-control" placeholder="Tittle" style="border:0px;  background-color: rgba(0,0,0,0);    height: 60px;" />
                            <asp:Label runat="server" ID="errTitleRequired" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">Video Title Is Required</asp:Label>
                        </div>
                        <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-top:0px;">
                            <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                                <i class="fa fa-lock		 custom_po cust_grey" style="font-size:17px;"></i>
                            </span>
                            <asp:TextBox runat="server" ID="vidDesciption" TextMode="MultiLine" placeholder="Description" class="form-control" style="border:0px;  background-color: rgba(0,0,0,0);    height: 60px;resize:none;padding-top:20px;"></asp:TextBox>
                            <asp:Label runat="server" ID="errDescriptionRequired" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">Video Description Required</asp:Label>
                        </div>
                        <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-top:0px;border-top-left-radius:0px;border-top-right-radius:0px;">
                            <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                                <i class="	fa fa-align-center custom_po cust_grey" style="font-size:17px;"></i>
                            </span>
                            <asp:TextBox runat="server" ID="vidCategory" class="form-control" placeholder="Categories" style="border:0px;  background-color: rgba(0,0,0,0);    height: 60px;" />
                            <asp:Label runat="server" ID="errCategoryRequired" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">Video Category Requuired</asp:Label>
                        </div><br />
                        <div>
                            <asp:FileUpload runat="server" ID="VideoUpload" accept="video/*"/>
                            <asp:Label runat="server" ID="errChooseFile" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">Please Choose A File</asp:Label>
                             <asp:RegularExpressionValidator ID="RegExValFileUploadFileTypeLeft" runat="server"
                        ControlToValidate="VideoUpload" ForeColor="Red"
                        ErrorMessage="Only .mp4,.mkv,.3gp Files are allowed" Font-Bold="True"
                        Font-Size="Medium"
                        ValidationExpression="(.*?)\.(mp4|mkv|3gp)$"></asp:RegularExpressionValidator>
                        </div><br />
                        <p>By Clicking "Upload File" I agree That <a href="#">Policy</a></p>
                        <%--<asp:Panel runat="server" ID="pnlImgLoading" Visible="false">
                            <asp:Image runat="server" ID="imgLoading" ImageUrl="~/img/Preloader_2.gif" />
                        </asp:Panel>--%>
                            <div class="text-center">
                        <asp:Button runat="server" ID="btnUpload" Text="Upload File" class="btn btn-primary" style="width:  100%;height: 60px;margin-top: 20px;border-radius: 3px;" OnClick="btnUpload_Click">
                        </asp:Button>
                            </div>
<%--                            <h2>Progress Bar With Label</h2>--%>
                            <%--<h4>Uploading...</h4>
                            <hr />
                            <div class="progress">
                            <div class="progress-bar" id="progress" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:20%">
                             70%
                            </div>
                            </div>--%>
                    </div>
                </div>
        </div>
    </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnUpload" />
        </Triggers>
    </asp:UpdatePanel>
    <script type="text/javascript">
        window.onsubmit = function () {
            if (Page_IsValid) {
                var updateProgress = $find("<%= UpdateProgress1.ClientID %>");
                window.setTimeout(function () {
                    updateProgress.set_visible(true);
                }, 100);
            }
        }
    </script>
  





</asp:Content>
