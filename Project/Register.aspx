<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Bolo.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <link href="dist/dist/socialmicons/style.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="icon" href="img/logo.png" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="dist/css/animate.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="engine1/style.css" />
    <script type="text/javascript" src="engine1/jquery.js"></script>
    <link href="dist/css/main.css" rel="stylesheet" />
    <script src="dist/js/main.js"></script>
    <title>Bolo - Register</title></head>
<body>
    <form id="form1" runat="server">
        <!--Alert Panel-->

        <!--Alert Panel Close-->

    <div class="container-fluid" style="background-image:url('../img/maxresdefault.jpg');background-repeat:no-repeat;background-position:100%;background-size:cover;">

        <div class="container" style="
    height: 80%;
    margin-top: 2%;
    margin-bottom:2%;
">

            <div class="col-xl-7 col-lg-7 col-md-7 col-sm-12 col-xs-12 custom_res_login_left" style="
    padding: 5%;
    padding-right:0px;
    background-color: rgba(0, 120, 255, 0.77);
    border-bottom-left-radius: 5px;
    border-top-left-radius: 5px;
    height: 1234px;
    color:#fff
    ">


                <a href="#">
                    <img src="../img/Logo.png" class="container-fluid img img-responsive costom_login_img_res" alt="Alternate Text" style="width:100%;max-width:300px;" />
                </a>
                <hr class="custom_login_hr" style="width:85%;margin-left:  0px;" />
                <p class="custom_login_p" style="font-size:20px;">
                    <span class="fa fa-check-square" style="width:30px;color:#fff">

                    </span>
                    Free Registration for Limited Time

                </p>
                <p class="custom_login_p" style="font-size:20px;">
                    <span class="fa fa-dollar	" style="width:30px;color:#fff">

                    </span>
                    BOLO KAY SATH KAMAO

                </p>
                <p class="custom_login_p" style="font-size:20px;">
                    <span class="fa fa-mixcloud	" style="width:30px;color:#fff">

                    </span>
                    100% Trusted by Thousand Of Happy User
                </p>
                <h3 class="custom_login_p">
                    About Us
                </h3>
                <p style="text-align:justify; padding-right:30px;" class="custom_login_p">


                    Finding the quality websites over the internet is becoming a harder job now. Bolo.com.pk is just a dedicated effort to fulfill this need for all parts of our net population.
                    <br />
                    Bolo.com.pk is becoming the most favorite web portal of all age groups including students, professionals, youth, teachers, parents as well as all the family members like it most. We try our best to provide all the essential tools and information of your daily needs and interest.
                    <br />
                    If you also want to share your efforts in development of Bolo.com.pk portal or want to share any comments, please Contact Us
                    <br />
                    Bolo.com.pk is a project of Bolo Internet Company – a specialized Entertainment & Small Business support with  (SEO & Web Marketing) company. The company was established in Aug-  2017 as an e-business incubator with aims to provide specialized web marketing and ecommerce services to the local online businesses. Please visit at Bolodunya.com for more details of its services and about the team.
                </p>
            </div>
                <div class="col-xl-5 col-lg-5 col-md-5 col-sm-12 col-xs-12 costom_login_right" style="
    background-color: #fff;
    padding:0px;">
                    <div style="
    padding: 5%;
    padding-right: 9%;
    padding-left: 9%;
    padding-bottom:0%;
    border-bottom-right-radius: 5px;
    border-top-right-radius: 5px;">
                        <!--Form Start Here-->
                        <h4 style="text-transform:uppercase;color:#999">
                            <strong>
                                Registration
                            </strong>
                        </h4>

                        <!--Info Section-->
                        <h5 class="text-center " style="padding:10px;background-color:rgba(0, 120, 255, 0.77);color:#fff;text-transform:uppercase;">
                            info
                        </h5>
                        <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-bottom-left-radius:0px;border-bottom-right-radius:0px;border-bottom: 0px;">
                            <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                                <i class="fa fa-user		 custom_po cust_grey" style="font-size:17px;"></i>
                            </span>
                            <!--First Name-->
                            <asp:TextBox runat="server" ID="uFirstName" type="text" class="form-control" placeholder="First Name" style="border:0px;  background-color: rgba(0,0,0,0);    height: 60px;" />
                            <asp:Label runat="server" ID="errFirstName" Visible="false" style="color:#f00;bottom: 0px;right: 12%;">First Name Is Required</asp:Label>
                        </div>
                        <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-top:0px;border-radius:0px;border-bottom: 0px;">
                            <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                                <i class="fa fa-user		 custom_po cust_grey" style="font-size:17px;"></i>
                            </span>
                            <!--Last Name-->
                            <asp:TextBox runat="server" ID="uLastName" type="text" class="form-control" placeholder="Last Name" style="border:0px;   background-color: rgba(0,0,0,0);    height: 60px;" />
                            <asp:Label runat="server" ID="errLastName" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">Last Name Is Required</asp:Label>
                        </div>
                        <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-top:0px;border-radius:0px;border-bottom: 0px;">
                            <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                                <i class="fa fa-home custom_po cust_grey" style="font-size:17px;"></i>
                            </span>
                            <!--Addres-->
                            <asp:TextBox runat="server" ID="uAddress" TextMode="Multiline" class="form-control" style="resize:none;border:0px;   background-color: rgba(0,0,0,0);    height: 60px;padding-top:20px;" placeholder="Address"></asp:TextBox>
                            <asp:Label runat="server" ID="errAddress" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">Address Is Required</asp:Label>                        
                        </div>
                        <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-top:0px;border-radius:0px;border-bottom: 0px;">
                            <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                                <i class="fa fa-building-o	custom_po cust_grey" style="font-size:17px;"></i>
                            </span>
                            <!--City-->
                            <asp:TextBox runat="server" ID="uCity" type="text" class="form-control" placeholder="City" style="border:0px;  background-color: rgba(0,0,0,0);    height: 60px;" />
                            <asp:Label runat="server" ID="errCity" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">City Is Required</asp:Label>                        
                        </div>
                        <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-top:0px;border-radius:0px;border-bottom: 0px;">
                            <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                                <i class="fa fa-building-o	custom_po cust_grey" style="font-size:17px;"></i>
                            </span>
                            <!--Province-->
                            <asp:TextBox runat="server" ID="uProvince" type="text" class="form-control" placeholder="Province" style="border:0px;  background-color: rgba(0,0,0,0);    height: 60px;" />
                            <asp:Label runat="server" ID="errProvince" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">Province Is Required</asp:Label>                        
                        </div>
                        <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-top:0px;border-radius:0px;border-bottom: 0px;">
                            <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                                <i class="fa fa-building-o	custom_po cust_grey" style="font-size:17px;"></i>
                            </span>
                            <!--Country-->
                            <asp:TextBox runat="server" ID="uCountry" type="text" class="form-control" placeholder="Country" style="border:0px;  background-color: rgba(0,0,0,0);    height: 60px;" />
                            <asp:Label runat="server" ID="errCountry" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">Country Is Required</asp:Label>                        
                        </div>
                        <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-top:0px;border-radius:0px;border-bottom: 0px;">
                            <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                                <i class="fa fa-envelope		custom_po cust_grey" style="font-size:17px;"></i>
                            </span>
                            <!--Email-->
                            <asp:TextBox runat="server" ID="uEmail" class="form-control" placeholder="Email" style="border:0px;  background-color: rgba(0,0,0,0);    height: 60px;" />
                            <asp:Label runat="server" ID="errEmail" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">Email Is Required</asp:Label>
                            <asp:Label runat="server" ID="errEmailFormatInvalid" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">Email Format Not Correct</asp:Label>                        
                            <asp:Label runat="server" ID="errEmailExist" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">Email Already Exist</asp:Label>                                                
                        </div>
                        <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-top:0px;border-radius:0px;border-bottom: 0px;">
                            <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                                <i class="fa fa-mobile		custom_po cust_grey" style="font-size:17px;"></i>
                            </span>
                            <!--Mobile-->
                            <asp:TextBox runat="server" ID="uMobile" type="text" class="form-control" placeholder="Mobile" style="border:0px;  background-color: rgba(0,0,0,0);    height: 60px;" onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode)))return false;" MaxLength="15"/>
                            <asp:Label runat="server" ID="errMobile" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">Contact Number Is Required</asp:Label>                                                
                        </div>
                        <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-top:0px;border-radius:0px;border-bottom: 0px;">
                            <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                                <i class="fa fa-phone		custom_po cust_grey" style="font-size:17px;"></i>
                            </span>
                            <!--Other Contact-->
                            <asp:TextBox runat="server" ID="uOtherPhone" type="text" class="form-control" placeholder="Other phone (Optional)" style="border:0px;  background-color: rgba(0,0,0,0);    height: 60px;" />
                        </div>
                        <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-top:0px;border-radius:0px;border-bottom: 0px;">
                            <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                                <i class="fa fa-address-card	custom_po cust_grey" style="font-size:17px;"></i>
                            </span>
                            <!--CNIC-->
                            <asp:TextBox runat="server" ID="uCnic" type="text" class="form-control" placeholder="Cnic" style="border:0px;  background-color: rgba(0,0,0,0);    height: 60px;" onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode)))return false;" MaxLength="15"/>
                            <asp:Label runat="server" ID="errCnicRequired" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">CNIC Number Is Required</asp:Label> 
                            <asp:Label runat="server" ID="errCnicInvalid" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">Please Enter a Valid CNIC Number</asp:Label>                             
                            </div>
                        <!--Info Section End-->

                        <!--Reference Section-->
                        <h5 class="text-center " style="padding:10px;background-color:rgba(0, 120, 255, 0.77);color:#fff;text-transform:uppercase;">
                            Reference
                        </h5>
                        <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-top:0px;border-radius:0px;border-bottom: 0px;">
                            <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                                <i class="fa fa-user	custom_po cust_grey" style="font-size:17px;"></i>
                            </span>
                            <asp:TextBox runat="server" ID="uReferenceName" type="text" class="form-control" placeholder=" Name (Optional)" style="border:0px;  background-color: rgba(0,0,0,0);    height: 60px;" />

                        </div>
                        <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-top:0px;border-radius:0px;border-bottom: 0px;">
                            <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                                <i class="fa fa-envelope		custom_po cust_grey" style="font-size:17px;"></i>
                            </span>
                            <asp:TextBox runat="server" ID="uReferenceContact" type="text" class="form-control" placeholder="Email/Phone/Address (Optional)" style="border:0px;  background-color: rgba(0,0,0,0);    height: 60px;" />

                        </div>
                        <!--Info Section End-->

                        <!--Create User ID Section-->
                        <h5 class="text-center " style="padding:10px;background-color:rgba(0, 120, 255, 0.77);color:#fff;text-transform:uppercase;">
                            Create your Password
                        </h5>
                        <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-top:0px;border-radius:0px;border-bottom: 0px;">
                            <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                                <i class="fa fa-lock			custom_po cust_grey" style="font-size:17px;"></i>
                            </span>
                            <!--Password-->
                            <asp:TextBox runat="server" ID="uPassword" type="password" class="form-control" MaxLength="12" placeholder="Password" style="border:0px;  background-color: rgba(0,0,0,0);    height: 60px;" />
                            <asp:Label runat="server" ID="errPwdRequired" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">Password Is Required</asp:Label>                        
                        </div>
                        <div class="input-group " style="border:1px solid #ccc; border-radius:5px;border-top:0px;border-top-left-radius:0px;border-top-right-radius:0px; ">
                            <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                                <i class="fa fa-lock			custom_po cust_grey" style="font-size:17px;"></i>
                            </span>
                            <!--Retype Password-->
                            <asp:TextBox runat="server" ID="uRetypePassword" type="password" MaxLength="12" class="form-control" placeholder="Confirm  Password" style="border:0px;  background-color: rgba(0,0,0,0);    height: 60px;" />
                            <asp:Label runat="server" ID="errRetypePwdRequired" Visible="false" style="color:#f00;position: absolute;bottom: 0px;left: 12%;">Please Retype The Password</asp:Label>                        
                            <asp:Label runat="server" ID="errPasswordsNotMatch" Visible="false" style="color:#f00;position: absolute;bottom: 0px;left: 12%;">Passwords Do Not Match</asp:Label>                                                
                        </div>
                        <!--Create User ID Section End-->
                        <asp:Button runat="server" Text="Create Account" ID="btnSubmit" type="submit" class="btn btn-success" style="margin-bottom:20px; width:  100%;height:  60px;margin-top: 20px;border-radius: 3px;" OnClick="btnSubmit_Click">
                        </asp:Button>
                        <asp:Label runat="server" ID="errException" Visible="false" style="color:#f00;bottom: 0px;left: 12%;">Server Exception:</asp:Label>
                        <p style="margin-top:20px;color:#ccc">
                            Already Have An Account
                            <asp:Button runat="server" ID="btnLogin" Text="Login" class="btn btn-primary" style="margin-bottom:20px;float:right;" OnClick="btnLogin_Click">
                                
                            </asp:Button>
                            <asp:HiddenField ID="hfRegistrationID" runat="server" Value="0" />
                        </p>
                    </div>
                </div>
        </div>
    </div>
    </form>
</body>
</html>
