<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bolo.Login1" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <link href="../dist/dist/socialmicons/style.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../img/logo.png" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="../dist/css/animate.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../engine1/style.css" />
    <script type="text/javascript" src="../engine1/jquery.js"></script>
    <link href="../dist/css/main.css" rel="stylesheet" />
    <script src="../dist/js/main.js"></script>
    <title>Bolo - News</title>
</head>
<body>
    <div class="container-fluid" style="background-image:url('../img/maxresdefault.jpg');background-repeat:no-repeat;background-position:100%;background-size:cover;height:100%;position:absolute;width:100%;">

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
                <div  style="
    padding: 5%;
    padding-right: 9%;
    padding-left: 9%;
    padding-bottom:0%;
    border-bottom-right-radius: 5px;
    border-top-right-radius: 5px;">
<form runat="server">
                    <h4 style="text-transform:uppercase;color:#999">
                        <strong>
                            Client Login
                        </strong>
                    </h4>
                    <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-bottom-left-radius:0px;border-bottom-right-radius:0px;">
                        <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                            <i class="fa fa-user		 custom_po cust_grey" style="font-size:17px;"></i>
                        </span>
                        <!--Email-->
                        <asp:TextBox runat="server" ID="uLoginEmail" type="text" class="form-control" placeholder="Enter your email here" style="border:0px;  background-color: rgba(0,0,0,0);    height: 60px;" />
                        <asp:Label runat="server" ID="errEmailRequired" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">You Must Enter Email</asp:Label>
                    </div>
                    <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-top:0px;border-top-left-radius:0px;border-top-right-radius:0px;">
                        <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                            <i class="fa fa-lock		 custom_po cust_grey" style="font-size:17px;"></i>
                        </span>
                        <!--Password-->
                        <asp:TextBox runat="server" ID="uLoginPassword" type="password" class="form-control" placeholder="Password" style="border:0px;   background-color: rgba(0,0,0,0);    height: 60px;" />
                        <asp:Label runat="server" ID="errPasswordRequired" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">You Must Enter Password</asp:Label>
                        <asp:Label runat="server" ID="errEmailPasswordInvalid" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">Email Password Not Match</asp:Label>
                        <asp:Label runat="server" ID="errException" Visible="false" style="color:#f00;bottom: 0px;left: 12%;" Text="Exception:"></asp:Label>                    
                    </div>
                    <asp:Button runat="server" ID="btnSubmit" Text="Login" class="btn btn-primary" style="width:  100%;height:  60px;margin-top: 20px;border-radius: 3px;" OnClick="btnSubmit_Click">
                        
                    </asp:Button>
    </form>
                    <a href="Register.aspx">
                        <p style="margin-top:20px;color:#ccc">
                            Need to register?
                        </p>
                    </a>
                </div>
                    <div class="custom_login_res_register" style="
    text-align: center;
    height: 80px;
    padding: 30px;
    background: #ccc;
    position:  absolute;
    width:  100%;
    bottom:  0px;
    ">
                        <p>
                            Bolo &copy;
                        </p>
                    </div>
            </div>
        </div>
    </div>
</body>
</html>
