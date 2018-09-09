<%@ Page Title="" Language="C#" MasterPageFile="~/UserParent.Master" AutoEventWireup="true" CodeBehind="Jobs.aspx.cs" Inherits="Bolo.Jobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Jobs</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        $(document).ready(function () {
            //$(".alert_outer_box").fadeOut(0);
            $(".alert_box_close,.alert_outer_box").click(function () {
                $("div.alert_outer_box").fadeOut(500);
            });
        });
    </script>
    <asp:Panel runat="server" ID="pnlAlert" Visible="false">
        <div class="alert_outer_box" style="position:fixed;width:100%;height:100%;top:0px;z-index:999;">
        <div style="position:absolute;width:100%;height:100%;background: rgba(0, 0, 0, 0.53);">
            <div class="alert alert-success alert-dismissable" style="margin: auto;margin-top:  auto;margin-bottom:  auto;top: 44%;POSITION:  fixed;width:  100%;font-size:  30px;text-align:  center;border-radius: 0px;padding:  30px;">
                <a href="#" class="close alert_box_close" aria-label="close" style="/* font-size:20px; */font-size: 30px;">X</a>
                <strong>Thank You!</strong> Your Form Has Been Submitted Successfully.
            </div>
        </div>
    </div>
    </asp:Panel>
    <asp:Panel runat="server" ID="pnlTryAgain" Visible="false">
        <div class="alert_outer_box" style="position:fixed;width:100%;height:100%;top:0px;z-index:999;">
        <div style="position:absolute;width:100%;height:100%;background: rgba(0, 0, 0, 0.53);">
            <div class="alert alert-success alert-dismissable" style="margin: auto;margin-top:  auto;margin-bottom:  auto;top: 44%;POSITION:  fixed;width:  100%;font-size:  30px;text-align:  center;border-radius: 0px;padding:  30px;">
                <a href="#" class="close alert_box_close" aria-label="close" style="/* font-size:20px; */font-size: 30px;">X</a>
                <strong>Please!</strong> Enter the correct data and try again.
            </div>
        </div>
    </div>
    </asp:Panel>
    <div class="col-xl-2 col-md-2 col-sm-2 hidden-xs">
<script data-cfasync=false src="//s.ato.mx/p.js#id=4078842&size=120x600"></script>    </div>

    <div class="col-xl-6 col-md-6 col-sm-10 col-xs-12 col-10">

        <div class="col-12 text-center">
        </div>

        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="plioo">
                        Jobs in Pakistan
                    </div>
                </div>
            </div>

            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12">
                <div class="row text-center">
                    <div class="plioo text-left" style="width: 100%;border-bottom-color:#337ab7;margin-left: 0px;">
                        This Week Jobs
                    </div>
                    <asp:Panel ID="PanelData" runat="server">
                        <asp:ListView ID="lvPreview" runat="server" GroupItemCount="3" DataKeyNames="pkJobID" OnPagePropertiesChanging="lvPreview_PagePropertiesChanging">
                            <LayoutTemplate>
                                <table cellpadding="20" runat="server" cellspacing="50" id="tblAdms" style="height:320px;width:100%;">
                                    <tr runat="server" id="groupPlaceholder">

                                    </tr>
                                </table>
                                 <asp:DataPager runat="server" ID="DataPager" PageSize="12">
                                    <Fields>
                                        <asp:NumericPagerField ButtonCount="10" PreviousPageText="Previous" NextPageText="Next"/>
                                    </Fields>

                                </asp:DataPager>
                            </LayoutTemplate>
                            <GroupTemplate>
                                <tr runat="server" id="productRow" style="height:80px">
                                    <td runat="server" id="itemPlaceholder">

                                    </td>
                                </tr>
                            </GroupTemplate>
                            <ItemTemplate>
                                <td valing="top" align="center" style="width:100px;" runat="server">
                                     
                                    <a href='#' rel="bookmark" class="post-thumbnail tie-appear">
                                        <div class="qwdertyji" style="overflow:hidden;width: 150px;margin-top:10px; border:2px solid #ccc;">
                                    
 
                            <div style="width:100%; max-width:200px;position:relative;overflow:hidden">
                                        <asp:Image ID="PostImage" runat="server" AlternateText='<%#Bind("varJobLocation") %>' ToolTip='<%#Eval("varJobLocation")%>'
                                         ImageUrl='<%#"/Images/Jobs/" + Eval("txtJobImageUrl") %>' class="img img-fluid custom_img_90909090909090" data-toggle="modal" data-target="#myModal" style=" width: 100%; max-width: 200px;  height:100%;max-height:200px"/>
                                </div>
                                            </div>
                                    
                                    </a>
                                    <br />
                                </td>
                               
                            </ItemTemplate>
                        </asp:ListView>
                    </asp:Panel>
        
                    <div id="myModal" class="modal fade" tabindex="-1" role="dialog">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div>
                                    <h5 id="asdbnasmnd">
                                    </h5>
                                </div>
                                <div class="modal-body">
                                    <img src="#" class="img-responsive ramdom_img_jobs" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div style="color: #fff;" class="col-xl-4 col-md-4 col-sm-12 col-xs-12 col-12 text-center poliop_90">
        <div class="row" style="margin-top:10px; margin-bottom:10px; ">
            <div class="col-12 text-center">
<script data-cfasync=false src="//s.ato.mx/p.js#id=4078838&size=300x250"></script>            </div>
        </div>

        <div class="row " style="
    width: 95%;
    margin-left: 2.5%;
    margin-bottom:20px;
">


            <div class="row">
                <div class="col-12 text-center" style="
    height: 80px;
    background-color: #5cb85c;
    cursor: pointer;
    line-height: 4;
    margin-bottom: 10px;
    font-size:20px;">

                    <p class="text-uppercase">
                        Submit your cv

                    </p>
                </div>

                <p class="text-capitalize " style="color:#000;padding:10px;">
                    Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
                </p>
                <%--<button type="button" data-target="#job_cv" data-toggle="modal" class="btn btn-danger btn-lg" id="btnCvUpload" runat="server" onserverclick="btnCvUpload_ServerClick"><span class="	fa fa-address-card"> </span> Submit Your CV</button>--%>

                <button type="button" class="btn btn-danger btn-lg" id="btnCvUpload" runat="server" onserverclick="btnCvUpload_ServerClick"><span class="	fa fa-address-card"> </span> Submit Your CV</button>

                <!-- The Modal -->
        <div class="modal fade text-left" id="job_cv" style="color:#000;">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Submit Your Cv</h4>
                        <span>Login to Upload CV</span>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <asp:TextBox ID="txtNameStudent" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                             <asp:TextBox ID="txtEmailStudent" Type="Email"  runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="* Email is not in Correct format" ControlToValidate="txtEmailStudent" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <label for="num">Contact no</label>
                            <asp:TextBox ID="txtContactNoStudent" runat="server" Type="text" MaxLength="15" CssClass="form-control"  onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode)))return false;"></asp:TextBox>
                            <asp:Label runat="server" ID="LblContactnoErr" Visible="false" style="color:#8B0000!important">Please Enter a Valid Contact Number</asp:Label>
                        </div>
                        <div class="form-group">
                            <label for="Add">Address</label>
                            <asp:TextBox ID="txtAddressStudent" runat="server" CssClass="form-control" style="resize:none;" TextMode="MultiLine"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="cv">Cv</label>
                            <asp:FileUpload ID="FileUploadCV" runat="server" CssClass="form-control" />
                        </div>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-danger" runat="server" onserverclick="btnClearCVFrm">Clear</button>
                        <button type="button" class="btn btn-success" runat="server" onserverclick="btnSubmitCVFrm">Submit Cv</button>
                    </div>

                </div>
            </div>
        </div>
            </div>
        </div>

        <div class="row " style="
    width: 95%;
    margin-left: 2.5%;
    margin-bottom:20px;
">


            <div class="row">
                <div class="col-12 text-center" style="
    height: 80px;
    background-color: #5cb85c;
    cursor: pointer;
    line-height: 4;
    margin-bottom: 10px;
    font-size:20px;">

                    <p>
                        POST A JOB

                    </p>
                </div>

                <p class="text-capitalize" style="color:#000;padding:10px;">
                    Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
                </p>
                <button type="button" data-target="#job_post" data-toggle="modal" class="btn btn-danger btn-lg"><span class="fa fa-suitcase	"></span> Post Now</button>
                <!-- The Modal -->
        <div class="modal fade text-left" id="job_post" style="color:#000;">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Post Job</h4>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="name">Name</label>
                            <asp:TextBox ID="txtNameJob" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <asp:TextBox ID="txtEmailJob" Type="Email"  runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Email is not in Correct format" ControlToValidate="txtEmailJob" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <label for="num">Contact no</label>
                            <asp:TextBox ID="txtContactJob" runat="server" Type="text" MaxLength="15" CssClass="form-control"  onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode)))return false;"></asp:TextBox>
                            <asp:Label runat="server" ID="lblInvalidContact" Visible="false" style="color:#8B0000!important">Please Enter a Valid Contact Number</asp:Label>
                        </div>
                        <div class="form-group">
                            <label for="Add">Address</label>
                            <asp:TextBox ID="txtAddressJob" runat="server" CssClass="form-control" style="resize:none;" TextMode="MultiLine"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label for="Add">Description</label>
                            <asp:TextBox ID="txtDescJob" runat="server" CssClass="form-control" style="resize:none;" TextMode="MultiLine"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-danger" runat="server" onserverclick="btnClearJobFrm">Clear</button>
                        <button type="button" class="btn btn-success" runat="server" onserverclick="btnSubmitJobFrm">Submit Job</button>
                    </div>

                </div>
            </div>
        </div>
            </div>
        </div>

        <%--<div class="row " style="
    width: 95%;
    margin-left: 2.5%;
    margin-bottom:20px;
    border:1px solid #ccc;
    overflow:hidden;
">

            <div style="width:2100px;    text-align: left;" class="custom_div_animation">

                <img src="../img/a21.png" alt="Alternate Text" style="width:100%;max-width:500px;" />
                <img src="../img/a21.png" alt="Alternate Text" style="width:100%;max-width:500px;" />
                <img src="../img/a21.png" alt="Alternate Text" style="width:100%;max-width:500px;" />
                <img src="../img/a21.png" alt="Alternate Text" style="width:100%;max-width:500px;" />

            </div>

        </div>--%>

        <!--  -->
         <div class="row" style="margin-top:10px; margin-bottom:10px; ">

            <div class="col-12 text-center">


            </div>

        </div>
        <div class="row " style="
    width: 95%;
    margin-left: 2.5%;
    margin-bottom:20px;
">

            <div class="row colaps_f_p">

                <div class="col-12 text-center" style="height: 40px ;background-color: #337ab7;cursor: pointer">
                    <p>
                        Featured TV Channels<span class="caret"></span>

                    </p>
                </div>

            </div>
            <div class="row colaps_f" style="">

                <div class="col-12">
                    <a href="News.aspx"><img src="../img/BOL_News.png" class="news_icon" alt="Bol"/></a>
                    <a href="News.aspx"><img src="../img/DAWN_News.png" class="news_icon" alt="Dawn"/></a>
                    <a href="News.aspx"><img src="../img/DUNYA_News.png" class="news_icon" alt="Dunya"/></a>
                    <a href="News.aspx"><img src="../img/GEO_News.png" class="news_icon" alt="Geo"/></a>
                    <a href="News.aspx"><img src="../img/GEOSUPER_News.jpg" class="news_icon" alt="GeoSuper"/></a>
                    <a href="News.aspx"><img src="../img/NEO_News.png" class="news_icon" alt="Neo"/></a>
                    <a href="News.aspx"><img src="../img/PTVSPORTS_NEWS.png" class="news_icon" alt="PtvSports"/></a>
                    <a href="News.aspx"><img src="../img/SAMA_News.png" class="news_icon" alt="Sama"/></a>
                    <a href="News.aspx"><img src="../img/TENSPORTS_News.jpg" class="news_icon" alt="TenSports"/></a>
                    <a href="News.aspx"><img src="../img/92_News.jpg" class="news_icon" alt="92"/></a>
                    <a href="News.aspx"><img src="../img/WAQT_News.png" class="news_icon" alt="Waqt"/></a>
                    <a href="News.aspx"><img src="../img/NEWSONE_News.jpg" class="news_icon" alt="NewOne"/></a>
                </div>
            </div>
        </div>

        <div class="row " style="
    width: 95%;
    margin-left: 2.5%;
    margin-bottom:20px;
">

            <div class="row colaps_f_p_1">

                <div class="col-12 text-center" style="height: 40px ;background-color: #337ab7;cursor: pointer">
                    <p>
                        Featured Food Recipes<span class="caret"></span>

                    </p>
                </div>

            </div>
            <div class="row colaps_f_1" style="display: none;">

                <div class="col-12">

                    <a href="Recipes.aspx"><img src="../img/sFood1.png" class="news_icon" alt=""></a>
                    <a href="Recipes.aspx"><img src="../img/sFood2.png" class="news_icon" alt=""></a>
                    <a href="Recipes.aspx"><img src="../img/sFood3.png" class="news_icon" alt=""></a>
                    <a href="Recipes.aspx"><img src="../img/sFood4.png" class="news_icon" alt=""></a>
                    <a href="Recipes.aspx"><img src="../img/sFood5.png" class="news_icon" alt=""></a>
                    <a href="Recipes.aspx"><img src="../img/sFood6.png" class="news_icon" alt=""></a>
                    <a href="Recipes.aspx"><img src="../img/sFood7.png" class="news_icon" alt=""></a>
                    <a href="Recipes.aspx"><img src="../img/sFood8.png" class="news_icon" alt=""></a>
                    <a href="Recipes.aspx"><img src="../img/sFood4.png" class="news_icon" alt=""></a>
                    <%--<a href="#"><img src="../img/ARY_News.png" class="news_icon" alt=""></a>
                    <a href="#"><img src="../img/ARY_News.png" class="news_icon" alt=""></a>
                    <a href="#"><img src="../img/ARY_News.png" class="news_icon" alt=""></a>--%>

                </div>

            </div>
        </div>

        <div class="row " style="
    width: 95%;
    margin-left: 2.5%;
    margin-bottom:20px;
">

            <div class="row colaps_f_p_2">

                <div class="col-12 text-center" style="height: 40px ;background-color: #337ab7;cursor: pointer">
                    <p>
                        Featured Software And Apps<span class="caret"></span>

                    </p>
                </div>

            </div>
            <div class="row colaps_f_2" style="display: none;">

                <div class="col-12">
                    <a href="Software.aspx"><img src="../img/sSoftware1.png" class="news_icon" alt=""></a>
                    <a href="Software.aspx"><img src="../img/sSoftware2.png" class="news_icon" alt=""></a>
                    <a href="Software.aspx"><img src="../img/sSoftware3.jpg" class="news_icon" alt=""></a>
                    <a href="Software.aspx"><img src="../img/sSoftware4.png" class="news_icon" alt=""></a>
                    <a href="Software.aspx"><img src="../img/sSoftware5.png" class="news_icon" alt=""></a>
                    <a href="Software.aspx"><img src="../img/sSoftware6.png" class="news_icon" alt=""></a>
                    <a href="Software.aspx"><img src="../img/sSoftware7.png" class="news_icon" alt=""></a>
                    <a href="Software.aspx"><img src="../img/sSoftware8.png" class="news_icon" alt=""></a>
                    <a href="Software.aspx"><img src="../img/sSoftware9.png" class="news_icon" alt=""></a>
                    <a href="Software.aspx"><img src="../img/sSoftware12.png" class="news_icon" alt=""></a>
                    <a href="Software.aspx"><img src="../img/sSoftware10.png" class="news_icon" alt=""></a>
                    <a href="Software.aspx"><img src="../img/sSoftware11.png" class="news_icon" alt=""></a>
                </div>
            </div>
        </div>

        <div class="row " style="
    width: 95%;
    margin-left: 2.5%;
    margin-bottom:20px;
">

            <div class="row colaps_f_p_3">

                <div class="col-12 text-center" style="height: 40px ;background-color: #337ab7;cursor: pointer">
                    <p>
                        Latest Fashion<span class="caret"></span>

                    </p>
                </div>

            </div>
            <div class="row colaps_f_3" style="display: none;">

                <div class="col-12">

                    <a href="Fashion.aspx"><img src="../img/f1.jpg" class="news_icon" alt=""></a>
                    <a href="Fashion.aspx"><img src="../img/f2.jpg" class="news_icon" alt=""></a>
                    <a href="Fashion.aspx"><img src="../img/f4.jpg" class="news_icon" alt=""></a>
                    <a href="Fashion.aspx"><img src="../img/f3.jpg" class="news_icon" alt=""></a>
                    <a href="Fashion.aspx"><img src="../img/f5.jpg" class="news_icon" alt=""></a>
                    <a href="Fashion.aspx"><img src="../img/f6.jpg" class="news_icon" alt=""></a>

                </div>

            </div>
        </div>

        <div class="row " style="
    width: 95%;
    margin-left: 2.5%;
    margin-bottom:20px;
">

            <div class="row colaps_f_p_4">

                <div class="col-12 text-center" style="height: 40px ;background-color: #337ab7;cursor: pointer">
                    <p>
                        Madad<span class="caret"></span>

                    </p>
                </div>

            </div>
            <div class="row colaps_f_4" style="display: none;">

                <div class="col-12">
                    
                    <a href="BloodDonation.aspx"><img src="../img/m1.png" class="news_icon" alt=""></a>
                    <a href="Istikara.aspx"><img src="../img/m2.png" class="news_icon" alt=""></a>
                    <a href="KhwabKiTabeer.aspx"><img src="../img/m3.png" class="news_icon" alt=""></a>
                    <a href="Palmist.aspx"><img src="../img/m4.png" class="news_icon" alt=""></a>

                </div>

            </div>
        </div>
    </div>

    <div class="social_main" style="
    position: fixed;
    width: 50px;
    height: 200px;
">

        <a href="">
            <img src="../img/1.png" alt="Alternate Text" class="img_9080 animated bounceInLeft" />
        </a>

        <a href="">
            <img src="../img/2.png" alt="Alternate Text" class="img_9080 animated bounceInLeft" />
        </a>

        <a href="">
            <img src="../img/3.png" alt="Alternate Text" class="img_9080 animated bounceInLeft" />
        </a>

        <a href="">
            <img src="../img/4.png" alt="Alternate Text" class="img_9080 animated bounceInLeft" />
        </a>

        <a href="">
            <img src="../img/5.png" alt="Alternate Text" class="img_9080 animated bounceInLeft" />
        </a>
        <img src="../img/arrow.png" alt="Alternate Text" class="close_social social_close_toggle" />


    </div>

    


</asp:Content>
