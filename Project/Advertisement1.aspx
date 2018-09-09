<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advertisement1.aspx.cs" Inherits="Bolo.Advertisement" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link href="dist/dist/socialmicons/style.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="icon" href="img/SMALL LOGO.png" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="../dist/css/animate.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="engine1/style.css" />
    <script type="text/javascript" src="engine1/jquery.js"></script>
    <link href="dist/css/main.css" rel="stylesheet" />
    <script src="dist/js/main.js"></script>
    <title>Advertisement</title>



</head>
<body>
         <div class="container">

        <div class="mt">
            <p></p>
        </div>
        <div class="row">

            <div class="col-lg-4 col-md-3 col-sm-2 col-1"></div>
            <div class="col-lg-4 col-md-6 col-sm-8 col-10  text-center">
                <a href="Default.aspx"><img src="img/Logo.png" style="width: 300px;" class="img img-fluid mt-2 " /></a>
            </div>
            <div class="col-lg-4 col-md-3 col-sm-2  col-1"></div>

        </div>
 </div>

    <div class="mt">
        <p></p>
    </div>
        <!-- start spos -->

        <div class="row" style="background-color:#28348b;color:#fff;text-align:center;">

            <div class="container" style="font-family: 'Roboto', sans-serif;text-transform:uppercase;">
                <h1 style="font-size:40px;margin: 1px;">
                    sponsor
                </h1>
                <p style="text-align:center;margin: 1px;">
                    Business Promotional Platform Especially For Smaller Setups. <br />
                        It All Starts With Your Stunning Website & Business Promoters Platform.
                </p>

                     <br /> 
            </div>

        </div>
        
        <div class="container text-center">
            <asp:ListView ID="lvLatestAds" runat="server" DataKeyNames="pkAdID">
                                <LayoutTemplate>
                                    <table cellpadding="20" runat="server" cellspacing="50" id="tblProducts">
                                        <tr runat="server" id="groupPlaceholder">
                                        </tr>

                                    </table>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <span  runat="server" id="productRow">
                                        <span runat="server" id="itemPlaceHolder"></span>
                                    </span>
                                </GroupTemplate>
                                <ItemTemplate>

                                        <a href='<%#"Advertisement1.aspx?ID=" + Eval("pkAdID") %>' rel="bookmark">
                                          
                                         <asp:Image ID="imgAds" runat="server" class="img img-fluid" src='<%# "Images/Ads/" + Eval("txtImage") %>' alt="Alternate Text" style="max-width:150px; max-height:150px; margin:15px;"  />
                                         
                                        </a>        
                                </ItemTemplate>
                            </asp:ListView>
        </div>

        <!-- end spos  -->
        
        <!-- start spos -->

        <div class="row" style="background-color:#28348b;padding:05px;color:#fff;text-align:center;margin-top:20px;">

            <div class="container" style="font-family: 'Roboto', sans-serif;text-transform:uppercase;">
                <h1 style="font-size:40px;margin:1px">
                    Packages
                </h1>
                <p style="color:#ccc;font-size:20px;margin:1px">
                    limited time offer 

                </p>
            </div>

        </div>

        <div class="container text-center">

                <img src="img/banner.jpg" class="img img-responsive img-thumbnail" alt="" style="
    width: 400px;
    padding:  19px;
    border:  0px;
"/>
            
                <img src="img/del_5.jpg" class="img img-responsive img-thumbnail" alt=""  style="margin-top:10px;max-width:400px"/>
                <img src="img/del_2.jpg" class="img img-responsive img-thumbnail" alt=""   style="margin-top:10px;"/>
                <img src="img/del_3.jpg" class="img img-responsive img-thumbnail" alt=""   style="margin-top:10px;"/>
                <img src="img/del_1.jpg" class="img img-responsive img-thumbnail" alt=""  style="margin-top:10px;" />
                <img src="img/del_4.jpg" class="img img-responsive img-thumbnail" alt=""  style="margin-top:10px;" />
            


        </div>
         <div class="row" style="background-color:#28348b;padding:05px;color:#fff;text-align:center;margin-top:20px;">

            <div class="container" style="font-family: 'Roboto', sans-serif;text-transform:uppercase;">
                <h3>
                    Pakistan Gateway
                </h3>
            </div>

        </div>

        <div class="row text-center" style="margin-top:20px;">
            <img src="img/gate way.jpg" class="img img-fluid" style="width:100%;max-width:720px;" alt="" />
        </div>
        <!-- end spos  -->

        
         <div class="row" style="background-color:#28348b;padding:05px;color:#fff;text-align:center;margin-top:20px;">

            <div class="container" style="font-family: 'Roboto', sans-serif;text-transform:uppercase;">
                <h3>
                    Templates
                </h3>
            </div>

        </div>

        <div class="container text-center">
            
            
                 <img src="img/bolo food templete copy.jpg" data-toggle="modal" data-target="#myModal51" class="img img-responsive img-thumbnail cutoms_jsfor_header" alt=""  style="
    margin-top: 10px;
    width: 100%;
    max-width: 300px;
    " />
            
                 <img src="img/food templete copy.jpg" data-toggle="modal" data-target="#myModal51" class="img img-responsive img-thumbnail cutoms_jsfor_header" alt=""  style="
    margin-top: 10px;
    width: 100%;
    max-width: 300px;
    " />
            
                 <img src="img/DEA.jpg" data-toggle="modal" data-target="#myModal51" class="img img-responsive img-thumbnail cutoms_jsfor_header" alt=""  style="
    margin-top: 10px;
    width: 100%;
    max-width: 300px;
    " />
            
                 <img src="img/hg-ban-1.jpg" data-toggle="modal" data-target="#myModal51" class="img img-responsive img-thumbnail " onclick="$('.setting_custom_img').attr('src', 'img/hg-ban.jpg')" alt=""  style="
    margin-top: 10px;
    width: 100%;
    max-width: 300px;
    " />


        </div>

        <div id="myModal51" class="modal fade" role="dialog">
          <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="btn btn-success" style="float:right;" onclick="window.open($('.setting_custom_img').attr('src'),'_black')">Open In New-Tab</button>
              </div>
              <div class="modal-body text-center">
                  <img src="" class="img img-fluid setting_custom_img"   alt="" style="width:100%;max-width:700px;"/>
              </div>

              
            </div>

          </div>
        </div>

</body>
</html>
