<%@ Page Title="" Language="C#" MasterPageFile="~/UserParent.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Bolo.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<script src="dist/js/main2.js"></script>--%>
    <style>
        .navbar-brand{
            display:none !important;
        }
        .navbar{
            margin-top: 20px !important;
        }
        .header_logo_ad{
            display:none !important;
        }
        .navbar-header
        {
            width: initial !important;
            height:initial !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    
    <div class="container">

        <div class="mt">
            <p></p>
        </div>
        <div class="row">

            <div class="col-lg-4 col-md-3 col-sm-2 col-1"></div>
            <div class="col-lg-4 col-md-6 col-sm-8 col-10  text-center">
                <img src="img/Logo.png" style="width: 300px;" class="img img-fluid mt-2 "/>
            </div>
            <div class="col-lg-4 col-md-3 col-sm-2  col-1"></div>

        </div>

        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-2 col-1"></div>
            <div class="col-lg-6 col-md-6 col-sm-8 text-center  col-10">

                <div class="input-group custom_active" style="border:1px solid #ccc; border-radius:5px">
                    <input type="text" class="form-control" style="border:0px; background-color: rgba(0,0,0,0);" required/>
                    <span class="input-group-addon" style="border:0px solid #ccc;   background-color: rgba(0,0,0,0);">
                        <i class="fa fa-search	 custom_po cust_grey"></i>
                    </span>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-2 col-1"></div>

        </div>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container-fluid" style="margin-bottom: 20px;">

        <div class="row">

            <div class="col-xl-12 col-md-12 col-sm-12 col-12">

                <!-- Start WOWSlider.com BODY section -->
                <div id="wowslider-container1">
                    <div class="ws_images">
                        <ul>
                            <li><a href="http://bolo.com.pk/"><img src="img/data1/images/6.jpg" alt="Blood bank" title="Blood bank" id="wows1_0" /></a></li>
                            <li><a href="http://bolo.com.pk/"><img src="img/data1/images/1.jpg" alt="Food Recpies" title="Food Recpies" id="wows1_1" /></a></li>
                            <li><a href="http://bolo.com.pk/"><img src="img/data1/images/2.jpg" alt="Isthikhara" title="Isthikhara" id="wows1_2" /></a></li>
                            <li><a href="http://bolo.com.pk/"><img src="img/data1/images/13.jpg" alt="Student Infromation" title="Student Infromation" id="wows1_3" /></a></li>
                            <li><a href="http://bolo.com.pk/"><img src="img/data1/images/11.png" alt="Latest Mobile" title="Latest Mobile" id="wows1_4" /></a></li>
                            <li><a href="http://bolo.com.pk/"><img src="img/data1/images/5.png" alt="Earn with Bolo" title="Earn with Bolo" id="wows1_5" /></a></li>
                            <li><a href="http://bolo.com.pk/"><img src="img/data1/images/1.jpg" alt="Food Recpies" title="Food Recpies" id="wows1_6" /></a></li>
                            <li><a href="http://bolo.com.pk/"><img src="img/data1/images/8.jpg" alt="Donate Free stuff" title="Donate Free stuff" id="wows1_7" /></a></li>
                            <li><a href="http://bolo.com.pk/"><img src="img/data1/images/9.jpg" alt="Latest Jobs " title="Latest Jobs " id="wows1_8" /></a></li>
                            <li><a href="http://bolo.com.pk/"><img src="img/data1/images/10.jpg" alt="Khuwab ki Tabeer" title="Khuwab ki Tabeer" id="wows1_9" /></a></li>
                            <li><a href="http://bolo.com.pk/"><img src="img/data1/images/11.png" alt="Latest mobile" title="Latest mobile" id="wows1_10" /></a></li>
                            <li><a href="http://bolo.com.pk/"><img src="img/data1/images/12.jpg" alt="Stones And Gems" title="Stones And Gems" id="wows1_11" /></a></li>
                            <li><a href="http://bolo.com.pk/"><img src="img/data1/images/13.jpg" alt="Student infromation" title="Student infromation" id="wows1_12" /></a></li>
                        </ul>
                    </div>
                    <div class="ws_bullets">
                        <div>
                            <a href="#" title="Blood bank"><span><img src="img/data1/tooltips/6.jpg" alt="Blood bank" />1</span></a>
                            <a href="#" title="Food Recpies"><span><img src="img/data1/tooltips/1.jpg" alt="Food Recpies" />2</span></a>
                            <a href="#" title="Isthikhara"><span><img src="img/data1/tooltips/2.jpg" alt="Isthikhara" />3</span></a>
                            <a href="#" title="Student Infromation"><span><img src="img/data1/tooltips/13.jpg" alt="Student Infromation" />4</span></a>
                            <a href="#" title="Latest Mobile"><span><img src="img/data1/tooltips/11.png" alt="Latest Mobile" />5</span></a>
                            <a href="#" title="Earn with Bolo"><span><img src="img/data1/tooltips/5.png" alt="Earn with Bolo" />6</span></a>
                            <a href="#" title="Latest Cartoon"><span><img src="img/data1/tooltips/1.jpg" alt="Food Recpies" />7</span></a>
                            <a href="#" title="Donate Free stuff"><span><img src="img/data1/tooltips/8.jpg" alt="Donate Free stuff" />8</span></a>
                            <a href="#" title="Latest Jobs "><span><img src="img/data1/tooltips/9.jpg" alt="Latest Jobs " />9</span></a>
                            <a href="#" title="Khuwab ki Tabeer"><span><img src="img/data1/tooltips/10.jpg" alt="Khuwab ki Tabeer" />10</span></a>
                            <a href="#" title="Latest mobile"><span><img src="img/data1/tooltips/11.png" alt="Latest mobile" />11</span></a>
                            <a href="#" title="Stones And Gems"><span><img src="img/data1/tooltips/12.jpg" alt="Stones And Gems" />12</span></a>
                            <a href="#" title="Student infromation"><span><img src="img/data1/tooltips/13.jpg" alt="Student infromation" />13</span></a>
                        </div>
                    </div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">slideshow html code</a> by WOWSlider.com v8.8</div>
                    <div class="ws_shadow"></div>
                </div>
                <script type="text/javascript" src="engine1/wowslider.js"></script>
                <script type="text/javascript" src="engine1/script.js"></script>
                <!-- End WOWSlider.com BODY section -->

            </div>
        </div>




    </div>
    <div class="container-fluid">


                <%--<div class="row">

                    <div class="col-12">

                        <a href="#" class="text-center font-weight-bold " style="font:20px;text-decoration:none;">
                            <p style="font-size: 40px;padding: 20px;">Drama</p>
                        </a>
                        <div class="row " style="height: 220px;position: relative;">
                            <div class="container movies_slider poliu" style="overflow:hidden">
                                <div class="row poli" id="qe45" style="width: 1000%;transition-duration: .5s;margin-left: 0px">

                                    <div class="movies_slider90">

                                        <div style="width: 160px;">


                                            <div class="row movies_hover">

                                                <a>
                                                    <div class="col-1"></div>
                                                    <div class="col-10 container-fluid text-center">

                                                        <img src="img/static-images/1.jpg" alt="" style="width: 129px;"/>
                                                        <p class="text-center" style="font-size: 14px;padding-left: 8px;padding-right: 8px;">
                                                             Welcome to the Jungle
                                                        </p>
                                                    </div>
                                                    <div class="col-1"></div>
                                                </a>

                                            </div>

                                        </div>




                                    </div>

                                </div>

                            </div>



                            <img src="img/left_arrow.png" class="poli1" alt="Alternate Text" style="max-width: 30px;width: 100%;transform: rotate(180deg); left: 30px;position: absolute;    top: 90px;"/>

                            <img src="img/left_arrow.png" class="poli2" alt="Alternate Text" style="max-width: 30px;width: 100%;transform: rotate(0deg); right:30px;position: absolute;    top: 90px;"/>





                        </div>

                    </div>

                </div>--%>
        <hr />
        
        <hr />
        <div class="row">

            <div class="col-12">

                <a href="#" class="text-center font-weight-bold " style="font:20px;text-decoration:none;">
                    <p style="font-size: 40px;padding: 20px;">Software</p>
                </a>
                <div class="row " style="height: 220px;position: relative;">
                    <div class="container movies_slider poliu" style="overflow:hidden">
                        <div class="row poli" id="qe46" style="width: 1000%;transition-duration: .5s;margin-left: 0px">
                            
                            <asp:ListView runat="server" ID="lvSoftwareListPreview" GroupItemCount="20" DataKeyNames="pkSoftwareID" > <%--OnPagePropertiesChanging="lvDramaListPreview_PagePropertiesChanging"--%>
            <LayoutTemplate>
                <table cellpadding="20" runat="server" cellspacing="50"
                                    id="tblProducts" style="margin-left: auto; margin-right: auto;" class="centerAt550">
                                    <tr runat="server" id="groupPlaceholder">
                                    </tr>
                </table>
              
            </LayoutTemplate>
            <GroupTemplate>
                <span class="text-center" runat="server" id="productRow">
                    <div runat="server" id="itemPlaceHolder"></div>
                </span>
            </GroupTemplate>
            <ItemTemplate>
   
        <div class="movies_slider90">
                                <div style="width: 160px;">
                                    <div class="row movies_hover">
                                       <a href='<%#"Software.aspx?ID=" + Eval("pkSoftwareID") %>' rel="bookmark" class="post-thumbnail tie-appear">
                                            <div class="col-1"></div>
                                            <div class="col-10 container-fluid text-center">
                                                 <asp:Image runat="server" ID="ProductImage" src='<%# "Images/Softwares/" + Eval("txtSoftwareImage") %>' alt="Alternate Text" class="img img-fluid" style="max-width:129px;max-height:175px;width:100%;"/>
                                               <%-- <img src="img/static-images/1.jpg" alt="" style="width: 129px;"/>--%>
                                                <p class="text-center" style="font-size: 14px;padding-left: 8px;padding-right: 8px; height: 44px;overflow:hidden">
                                                     <span><asp:Label ID="likes" runat="server" Text='<%#Eval("varSoftwareName") %>'></asp:Label></span>
                                                </p>
                                            </div>
                                            <div class="col-1"></div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                   <%-- </a>--%>
        </ItemTemplate>
        </asp:ListView>

                         

                        </div>

                    </div>



                     <img src="img/left_arrow.png" class="poli1_1" alt="Alternate Text" style="max-width: 30px;width: 100%;transform: rotate(180deg); left: 30px;position: absolute;    top: 90px;"/>

                            <img src="img/left_arrow.png" class="poli1_2" alt="Alternate Text" style="max-width: 30px;width: 100%;transform: rotate(0deg); right:30px;position: absolute;    top: 90px;"/>




                </div>

            </div>

        </div>
        <hr />
         <div class="row">

            <div class="col-12">
                <a href="#" class="text-center font-weight-bold " style="font:20px;text-decoration:none;">
                    <p style="font-size: 40px;padding: 20px;">Poem</p>
                </a>
                <div class="row " style="height: 220px;position: relative;">
                    <div class="container movies_slider poliu" style="overflow:hidden">
                        <div class="row poli" id="qe47" style="width: 1000%;transition-duration: .5s;margin-left: 0px">                            
                           <asp:ListView runat="server" ID="lvPoemPreview" GroupItemCount="20" DataKeyNames="pkPoemID" > <%--OnPagePropertiesChanging="lvDramaListPreview_PagePropertiesChanging"--%>
            <LayoutTemplate>
                <table cellpadding="20" runat="server" cellspacing="50"
                                    id="tblProducts" style="margin-left: auto; margin-right: auto;" class="centerAt550">
                                    <tr runat="server" id="groupPlaceholder">
                                    </tr>
                </table>
              
            </LayoutTemplate>
            <GroupTemplate>
                <span class="text-center" runat="server" id="productRow">
                    <div runat="server" id="itemPlaceHolder"></div>
                </span>
            </GroupTemplate>
            <ItemTemplate>
   
        <div class="movies_slider90">
                                <div style="width: 160px;">
                                    <div class="row movies_hover">
                                       <a href='<%#"Poem.aspx?ID=" + Eval("pkPoemID") %>' rel="bookmark" class="post-thumbnail tie-appear">
                                            <div class="col-1"></div>
                                            <div class="col-10 container-fluid text-center">
                                                 <asp:Image runat="server" ID="ProductImage" src='<%# "Images/Poems/" + Eval("txtPoemImage") %>' alt="Alternate Text" class="img img-fluid" style="max-width:129px;max-height:100px;width:100%;"/>
                                               <%-- <img src="img/static-images/1.jpg" alt="" style="width: 129px;"/>--%>
                                                <p class="text-center" style="font-size: 14px;padding-left: 8px;padding-right: 8px; height: 44px;overflow:hidden">
                                                     <span><asp:Label ID="likes" runat="server" Text='<%#Eval("varPoemName") %>'></asp:Label></span>
                                                </p>
                                            </div>
                                            <div class="col-1"></div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                   <%-- </a>--%>
        </ItemTemplate>
        </asp:ListView>                           
                        </div>

                    </div>



                    <img src="img/left_arrow.png" class="poli1_3" alt="Alternate Text" style="max-width: 30px;width: 100%;transform: rotate(180deg); left: 30px;position: absolute;    top: 50px;">

                    <img src="img/left_arrow.png" class="poli1_4" alt="Alternate Text" style="max-width: 30px;width: 100%;transform: rotate(0deg); right:30px;position: absolute;    top: 50px;">





                </div>

            </div>

        </div>
        <hr />
        <div class="row">

            <div class="col-12">

                <a href="#" class="text-center font-weight-bold " style="font:20px;text-decoration:none;">
                    <p style="font-size: 40px;padding: 20px;">Recipes</p>
                </a>
                <div class="row " style="height: 220px;position: relative;">
                    <div class="container movies_slider poliu" style="overflow:hidden">
                        <div class="row poli" id="qe48" style="width: 1000%;transition-duration: .5s;margin-left: 0px;
    margin-top: 31px;">                            
                           

                                       <asp:ListView  runat="server" ID="lvRecipes" DataKeyNames="pkRecipieID" > <%--OnPagePropertiesChanging="lvDramaListPreview_PagePropertiesChanging"--%>
            <LayoutTemplate>
                <table cellpadding="20" runat="server" cellspacing="50"
                                    id="tblProducts" style="margin-left: auto; margin-right: auto;" class="centerAt550">
                                    <tr runat="server" id="groupPlaceholder">
                                    </tr>
                </table>
              
            </LayoutTemplate>
            <GroupTemplate>
                <span class="text-center" runat="server" id="productRow">
                    <div runat="server" id="itemPlaceHolder"></div>
                </span>
            </GroupTemplate>
            <ItemTemplate>
   
        <div class="movies_slider90">
                                <div style="width: 160px;">
                                    <div class="row movies_hover">
                                       <a href='<%#"Recipes.aspx?ID=" + Eval("pkRecipieID") %>' rel="bookmark" class="post-thumbnail tie-appear">
                                            <div class="col-1"></div>
                                            <div class="col-10 container-fluid text-center">
                                                 <asp:Image runat="server" ID="ProductImage" src='<%# "Images/Recipes/" + Eval("txtRecipieImage1") %>' alt="Alternate Text" class="img img-fluid" style="max-width:129px;max-height:100px;width:100%;"/>
                                               <%-- <img src="img/static-images/1.jpg" alt="" style="width: 129px;"/>--%>
                                                <p class="text-center" style="font-size: 14px;padding-left: 8px;padding-right: 8px; height: 44px;overflow:hidden">
                                                     <span><asp:Label ID="likes" runat="server" Text='<%#Eval("varRecipieName") %>'></asp:Label></span>
                                                </p>
                                            </div>
                                            <div class="col-1"></div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                   <%-- </a>--%>
        </ItemTemplate>
        </asp:ListView>
                                
                                                               
                        </div>
                    </div>

                    <img src="img/left_arrow.png" class="poli1_5" alt="Alternate Text" style="max-width: 30px;width: 100%;transform: rotate(180deg); left: 30px;position: absolute;    top: 50px;">

                    <img src="img/left_arrow.png" class="poli1_6" alt="Alternate Text" style="max-width: 30px;width: 100%;transform: rotate(0deg); right:30px;position: absolute;    top: 50px;">
                    
                </div>

            </div>

        </div>

               <%-- <div class="row">

                    <div class="col-12">

                        <a href="#" class="text-center font-weight-bold " style="font:20px;text-decoration:none;">
                            <p style="font-size: 40px;padding: 20px;">Software</p>
                        </a>
                        <div class="row " style="height: 220px;position: relative;">
                            <div class="container movies_slider poliu" style="overflow:hidden">
                                <div class="row poli" id="qe46" style="width: 1000%;transition-duration: .5s;margin-left: 0px">

                            
                                    <div class="movies_slider90">

                                        <div style="width: 160px;">


                                            <div class="row movies_hover">

                                                <a>
                                                    <div class="col-1"></div>
                                                    <div class="col-10 container-fluid text-center">

                                                        <img src="img/static-images/1.jpg" alt="" style="width: 129px;"/>
                                                        <p class="text-center" style="font-size: 14px;padding-left: 8px;padding-right: 8px;">
                                                             Welcome to the Jungle
                                                        </p>
                                                    </div>
                                                    <div class="col-1"></div>
                                                </a>

                                            </div>

                                        </div>




                                    </div>
                            

                                </div>

                            </div>



                            <img src="img/left_arrow.png" class="poli1_1" alt="Alternate Text" style="max-width: 30px;width: 100%;transform: rotate(180deg); left: 30px;position: absolute;    top: 90px;">

                            <img src="img/left_arrow.png" class="poli1_2" alt="Alternate Text" style="max-width: 30px;width: 100%;transform: rotate(0deg); right:30px;position: absolute;    top: 90px;">





                        </div>

                    </div>

                </div>

                <div class="row">

            <div class="col-12">

                <a href="#" class="text-center font-weight-bold " style="font:20px;text-decoration:none;">
                    <p style="font-size: 40px;padding: 20px;">Poem</p>
                </a>
                <div class="row " style="height: 220px;position: relative;">
                    <div class="container movies_slider poliu" style="overflow:hidden">
                        <div class="row poli" id="qe47" style="width: 1000%;transition-duration: .5s;margin-left: 0px">


                            
                            <div class="movies_slider90">

                                        <div style="width: 160px;">


                                            <div class="row movies_hover">

                                                <a>
                                                    <div class="col-1"></div>
                                                    <div class="col-10 container-fluid text-center">

                                                        <img src="img/static-images/1.jpg" alt="" style="width: 129px;"/>
                                                        <p class="text-center" style="font-size: 14px;padding-left: 8px;padding-right: 8px;">
                                                             Welcome to the Jungle
                                                        </p>
                                                    </div>
                                                    <div class="col-1"></div>
                                                </a>

                                            </div>

                                        </div>




                                    </div>
                            
                        </div>

                    </div>



                    <img src="img/left_arrow.png" class="poli1_3" alt="Alternate Text" style="max-width: 30px;width: 100%;transform: rotate(180deg); left: 30px;position: absolute;    top: 50px;">

                    <img src="img/left_arrow.png" class="poli1_4" alt="Alternate Text" style="max-width: 30px;width: 100%;transform: rotate(0deg); right:30px;position: absolute;    top: 50px;">





                </div>

            </div>

        </div>

                <div class="row">

            <div class="col-12">

                <a href="#" class="text-center font-weight-bold " style="font:20px;text-decoration:none;">
                    <p style="font-size: 40px;padding: 20px;">Recipes</p>
                </a>
                <div class="row " style="height: 220px;position: relative;">
                    <div class="container movies_slider poliu" style="overflow:hidden">
                        <div class="row poli" id="qe48" style="width: 1000%;transition-duration: .5s;margin-left: 0px">


                            
                            <div class="movies_slider90">

                                        <div style="width: 160px;">


                                            <div class="row movies_hover">

                                                <a>
                                                    <div class="col-1"></div>
                                                    <div class="col-10 container-fluid text-center">

                                                        <img src="img/static-images/1.jpg" alt="" style="width: 129px;"/>
                                                        <p class="text-center" style="font-size: 14px;padding-left: 8px;padding-right: 8px;">
                                                             Welcome to the Jungle
                                                        </p>
                                                    </div>
                                                    <div class="col-1"></div>
                                                </a>

                                            </div>

                                        </div>




                                    </div>
                            
                        </div>

                    </div>



                    <img src="img/left_arrow.png" class="poli1_5" alt="Alternate Text" style="max-width: 30px;width: 100%;transform: rotate(180deg); left: 30px;position: absolute;    top: 50px;">

                    <img src="img/left_arrow.png" class="poli1_6" alt="Alternate Text" style="max-width: 30px;width: 100%;transform: rotate(0deg); right:30px;position: absolute;    top: 50px;">





                </div>

            </div>

        </div>--%>

                
        </div>


        <div class="row" style="margin-top:40px;">



            <div class="col-xl-4 col-md-4 col-sm-12 col-xs-12 cutom_res" style="margin-bottom:10px">
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-10 text-center">

                        <p style="max-height:40px;height:100%;line-height:2;font-size:  20px;color:  #fff;font-family:  sans-serif;background-color:#e30613;width:  90%;left: 6%;position: relative;">
                            News
                        </p>

                    </div>
                    <div class="col-1"></div>

                </div>
                <div class="row container-fluid">


                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="News.aspx" class="text-center">


                            <img src="img/dawn-news-pakistan-tv-logo.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;"/>

                        </a>


                    </div>


                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="News.aspx" class="text-center">


                            <img src="img/GEO Tez.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;">

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="News.aspx" class="text-center">


                            <img src="img/unnamed.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;">

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="News.aspx" class="text-center">


                            <img src="img/images.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;">

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="News.aspx" class="text-center">


                            <img src="img/ARY_News.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;">

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="News.aspx" class="text-center">


                            <img src="img/33968562020402.logo.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;">

                        </a>


                    </div>


                </div>

            </div>

           <%-- <div class="col-xl-4 col-md-4 col-sm-6 col-12 col-xs-6 cutom_res" style="margin-bottom:10px">
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-10 text-center">

                        <p style="max-height:40px;height:100%;line-height:2;font-size:  20px;color:  #fff;font-family:  sans-serif;background-color:#f7a600;width:  90%;left: 6%;position: relative;">
                            Food Recipes
                        </p>

                    </div>
                    <div class="col-1"></div>

                </div>
                <div class="row container-fluid">


                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Recipes.aspx" class="text-center">


                            <img src="img/sFood1.png" alt="Food" class="img img-fluid" style="width:100%; max-width:80px;"/>

                        </a>


                    </div>


                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Recipes.aspx" class="text-center">


                            <img src="img/sFood2.png" alt="Food" class="img img-fluid" style="width:100%; max-width:80px;"/>
                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Recipes.aspx" class="text-center">

                            
                            <img src="img/sFood3.png" alt="Food" class="img img-fluid" style="width:100%; max-width:80px;"/>

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Recipes.aspx" class="text-center">


                            <img src="img/sFood4.png" alt="Food" class="img img-fluid" style="width:100%; max-width:80px;"/>

                            </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Recipes.aspx" class="text-center">


                           <img src="img/sFood5.png" alt="Food" class="img img-fluid" style="width:100%; max-width:80px;"/>

                            
                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Recipes.aspx" class="text-center">

                            <img src="img/sFood6.png" alt="Food" class="img img-fluid" style="width:100%; max-width:80px;"/>

                            
                        </a>


                    </div>


                </div>

            </div>--%>

            <%--<div class="col-xl-4 col-md-4 col-sm-6 col-12 col-xs-6 cutom_res" style="margin-bottom:10px">
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-10 text-center">

                        <p style="max-height:40px;height:100%;line-height:2;font-size:  20px;color:  #fff;font-family:  sans-serif;background-color:#28348b;width:  90%;left: 6%;position: relative;">
                            Download
                        </p>

                    </div>
                    <div class="col-1"></div>

                </div>
                <div class="row container-fluid">


                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Software.aspx" class="text-center">


                            <img src="img/sSoftware1.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;/">

                        </a>


                    </div>


                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Software.aspx" class="text-center">

                            
                            <img src="img/sSoftware2.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;/">

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Software.aspx" class="text-center">

                            
                            <img src="img/sSoftware3.jpg" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;/">

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Software.aspx" class="text-center">

                            
                            <img src="img/sSoftware5.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;/">

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Software.aspx" class="text-center">

                            
                            <img src="img/sSoftware6.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;/">

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Software.aspx" class="text-center">

                            
                            <img src="img/sSoftware4.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;/">

                        </a>


                    </div>


                </div>

            </div>--%>

            <div class="col-xl-4 col-md-4 col-sm-12 col-12 col-xs-12 cutom_res" style="margin-bottom:10px">
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-10 text-center">

                        <p style="max-height:40px;height:100%;line-height:2;font-size:  20px;color:  #fff;font-family:  sans-serif;background-color:#28348b;width:  90%;left: 6%;position: relative;">
                            Madad
                        </p>

                    </div>
                    <div class="col-1"></div>

                </div>
                <div class="row container-fluid">


                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="BloodDonation.aspx" class="text-center">


                            <img src="img/m1.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;"/>

                        </a>


                    </div>


                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Istikara.aspx" class="text-center">

                            <img src="img/m2.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;"/>

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="KhwabKiTabeer.aspx" class="text-center">

                            <img src="img/m3.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;"/>

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Palmist.aspx" class="text-center">


                            <img src="img/m4.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;"/>

                        </a>


                    </div>


                </div>

            </div>

            <div class="col-xl-4 col-md-4 col-sm-12 col-12 col-xs-12 cutom_res" style="margin-bottom:10px">
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-10 text-center">

                        <p style="max-height:40px;height:100%;line-height:2;font-size:  20px;color:  #fff;font-family:  sans-serif;background-color:#e30613;width:  90%;left: 6%;position: relative;">
                            Fashion
                        </p>

                    </div>
                    <div class="col-1"></div>

                </div>
                <div class="row container-fluid">


                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Fashion.aspx" class="text-center">


                            <img src="../img/f6.jpg" alt="Ary news" class="img img-fluid" style="width:100%; max-width:70px;">

                        </a>


                    </div>


                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Fashion.aspx" class="text-center">


                            <img src="../img/f5.jpg" alt="Ary news" class="img img-fluid" style="width:100%; max-width:70px;">

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Fashion.aspx" class="text-center">


                            <img src="../img/f4.jpg" alt="Ary news" class="img img-fluid" style="width:100%; max-width:70px;">

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Fashion.aspx" class="text-center">


                            <img src="../img/f3.jpg" alt="Ary news" class="img img-fluid" style="width:100%; max-width:70px;">

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Fashion.aspx" class="text-center">


                            <img src="../img/f2.jpg" alt="Ary news" class="img img-fluid" style="width:100%; max-width:70px;">

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="Fashion.aspx" class="text-center">


                            <img src="../img/f1.jpg" alt="Ary news" class="img img-fluid" style="width:100%; max-width:70px;">

                        </a>


                    </div>


                </div>

            </div>

            <%--<div class="col-xl-4 col-md-4 col-sm-6 col-12 col-xs-6 cutom_res" style="margin-bottom:10px">
                <div class="row">
                    <div class="col-1"></div>
                    <div class="col-10 text-center">

                        <p style="max-height:40px;height:100%;line-height:2;font-size:  20px;color:  #fff;font-family:  sans-serif;background-color:#f7a600;width:  90%;left: 6%;position: relative;">
                            Other
                        </p>

                    </div>
                    <div class="col-1"></div>

                </div>
                <div class="row container-fluid">


                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="#" class="text-center">


                            <img src="img/dawn-news-pakistan-tv-logo.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;">

                        </a>


                    </div>


                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="#" class="text-center">


                            <img src="img/GEO Tez.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;">

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="#" class="text-center">


                            <img src="img/unnamed.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;">

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="#" class="text-center">


                            <img src="img/images.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;">

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="#" class="text-center">


                            <img src="img/ARY_News.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;">

                        </a>


                    </div>

                    <div class="col-xl-3 col-md-4 col-sm-3 col-xs-6 col-4 text-center mt-3 new_hover" style="margin-top:10px;max-height:100px;height:100%;min-height:80px;">
                        <a href="#" class="text-center">


                            <img src="img/33968562020402.logo.png" alt="Ary news" class="img img-fluid" style="width:100%; max-width:60px;">

                        </a>


                    </div>


                </div>

            </div>--%>

        </div>

        <!-- start spos -->

        <%--<div class="row" style="background-color:#28348b;padding:20px;color:#fff;text-align:center;">

            <div class="container" style="font-family: 'Roboto', sans-serif;text-transform:uppercase;">
                <h1 style="font-size:40px;">
                    sponsor
                </h1>
                <p style="color:#ccc;font-size:20px">
                    Business Promotional Platform Especially For Smaller Setups <br /> It All Starts With Your Stunning Website & Business Promoters Platform.
                </p>
            </div>

        </div>--%>

        <%--<div class="container text-center">
            <div class=" custom_rotating_img img__1 col-xl-2 col-lg-2 col-md-3 col-xs-4">

            </div>

            <div class=" custom_rotating_img img__2 col-xl-2 col-lg-2 col-md-3 col-xs-4">

            </div>

            <div class=" custom_rotating_img img__3 col-xl-2 col-lg-2 col-md-3 col-xs-4">

            </div>

            <div class=" custom_rotating_img img__4 col-xl-2 col-lg-2 col-md-3 col-xs-4">

            </div>

            <div class=" custom_rotating_img img__5 col-xl-2 col-lg-2 col-md-3 col-xs-4">

            </div>

            <div class=" custom_rotating_img img__6 col-xl-2 col-lg-2 col-md-3 col-xs-4">

            </div>

            <div class=" custom_rotating_img img__7 col-xl-2 col-lg-2 col-md-3 col-xs-4">

            </div>

            <div class=" custom_rotating_img img__8 col-xl-2 col-lg-2 col-md-3 col-xs-4">

            </div>

            <div class=" custom_rotating_img img__9 col-xl-2 col-lg-2 col-md-3 col-xs-4">

            </div>

            <div class=" custom_rotating_img img__10 col-xl-2 col-lg-2 col-md-3 col-xs-4">

            </div>

            <div class=" custom_rotating_img img__11 col-xl-2 col-lg-2 col-md-3 col-xs-4">

            </div>

            <div class=" custom_rotating_img img__12 col-xl-2 col-lg-2 col-md-3 col-xs-4">

            </div>

            <div class=" custom_rotating_img img__13 col-xl-2 col-lg-2 col-md-3 col-xs-4">

            </div>

            <div class=" custom_rotating_img img__14 col-xl-2 col-lg-2 col-md-3 col-xs-4">

            </div>
            <div class=" custom_rotating_img img__1 col-xl-2 col-lg-2 col-md-3 col-xs-4" style="animation-delay:2s;background-image:url('img/SPONSOR/3.png')">

            </div>
            <div class=" custom_rotating_img img__4 col-xl-2 col-lg-2 col-md-3 col-xs-4" style="animation-delay:2s;background-image:url('img/SPONSOR/12.png')">

            </div>
            <div class=" custom_rotating_img img__3 col-xl-2 col-lg-2 col-md-3 col-xs-4" style="animation-delay:2s;background-image:url('img/SPONSOR/9.png')">

            </div>
            <div class=" custom_rotating_img img__5 col-xl-2 col-lg-2 col-md-3 col-xs-4" style="animation-delay:2s;background-image:url('img/SPONSOR/15.png')">

            </div>
            <div class=" custom_rotating_img img__8 col-xl-2 col-lg-2 col-md-3 col-xs-4" style="animation-delay:2s;background-image:url('img/SPONSOR/24.png')">

            </div>
            <div class=" custom_rotating_img img__7 col-xl-2 col-lg-2 col-md-3 col-xs-4" style="animation-delay:2s;background-image:url('img/SPONSOR/21.png')">

            </div>
            <div class=" custom_rotating_img img__2 col-xl-2 col-lg-2 col-md-3 col-xs-4" style="animation-delay:2s;background-image:url('img/SPONSOR/6.png')">

            </div>
            <div class=" custom_rotating_img img__9 col-xl-2 col-lg-2 col-md-3 col-xs-4" style="animation-delay:2s;background-image:url('img/SPONSOR/27.png')">

            </div>
            <div class=" custom_rotating_img img__12 col-xl-2 col-lg-2 col-md-3 col-xs-4" style="animation-delay:2s;background-image:url('img/SPONSOR/36.png')">

            </div>
            <div class=" custom_rotating_img img__14 col-xl-2 col-lg-2 col-md-3 col-xs-4" style="animation-delay:2s;background-image:url('img/SPONSOR/3.png')">

            </div>
            <div class=" custom_rotating_img img__11 col-xl-2 col-lg-2 col-md-3 col-xs-4" style="animation-delay:2s;background-image:url('img/SPONSOR/33.png')">

            </div>
            <div class=" custom_rotating_img img__10 col-xl-2 col-lg-2 col-md-3 col-xs-4" style="animation-delay:2s;background-image:url('img/SPONSOR/30.png')">

            </div>
            <div class=" custom_rotating_img img__13 col-xl-2 col-lg-2 col-md-3 col-xs-4" style="animation-delay:2s;background-image:url('img/SPONSOR/39.png')">

            </div>
            <div class=" custom_rotating_img img__6 col-xl-2 col-lg-2 col-md-3 col-xs-4" style="animation-delay:2s;background-image:url('img/SPONSOR/18.png')">

            </div>
            <div class=" custom_rotating_img img__1 col-xl-2 col-lg-2 col-md-3 col-xs-4" style="animation-delay:4s;background-image:url('img/SPONSOR/5.png')">

            </div>
            <div class=" custom_rotating_img  col-xl-2 col-lg-2 col-md-3 col-xs-4" style="background-image:url('img/SPONSOR/place ad.png');border:1px solid #ccc;">

            </div>


        </div>--%>

        <!-- end spos  -->
        
        <!-- start spos -->

        <div class="row" style="background-color:#28348b;padding:20px;color:#fff;text-align:center;margin-top:20px;">

            <div class="container" style="font-family: 'Roboto', sans-serif;text-transform:uppercase;">
                <h1 style="font-size:40px;">
                    Packages
                </h1>
                <p style="color:#ccc;font-size:20px">
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
            
               
                <img src="img/del_5.jpg" class="img img-responsive img-thumbnail" alt=""  style="margin-top:10px;max-width: 355px;"/>
                <img src="img/del_2.jpg" class="img img-responsive img-thumbnail" alt=""   style="margin-top:10px;"/>
                <img src="img/del_3.jpg" class="img img-responsive img-thumbnail" alt=""   style="margin-top:10px;"/>
                <img src="img/del_1.jpg" class="img img-responsive img-thumbnail" alt=""  style="margin-top:10px;" />
                <img src="img/del_4.jpg" class="img img-responsive img-thumbnail" alt=""  style="margin-top:10px;" />
            


        </div>
         <div class="row" style="background-color:#28348b;padding:20px;color:#fff;text-align:center;margin-top:20px;">

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

        
         <div class="row" style="background-color:#28348b;padding:20px;color:#fff;text-align:center;margin-top:20px;">

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

   <%-- </div>--%>
</asp:Content>
