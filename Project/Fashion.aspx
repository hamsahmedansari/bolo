<%@ Page Title="" Language="C#" MasterPageFile="~/UserChild.master" AutoEventWireup="true" CodeBehind="Fashion.aspx.cs" Inherits="Bolo.Fashion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="OtherContent" runat="server">
    <%-- <script src="dist/js/main2.js"></script>--%>
    <div class="col-xl-6 col-md-6 col-sm-10 col-xs-12 col-10">
        <div class="col-12 text-center">
        </div>
        <div class="row" style="width: 100%; margin-left: 0.2%;">
            <div class="col-sm-12">
                <div class="plioo" style="border: 0px; box-shadow: none; margin-left: 0px; padding: 0px; width: 100% !important;">

                    <%-- <div class="row container-fluid">
                <div class="col-12">
                 <div class="row container-fluid">
                    <div class="plioo" style="height: 100px; margin-left: initial;">                 
                    Fashion
                    <div class="form-group">   
                        <asp:Panel ID="pnlSearch" runat="server" DefaultButton="kk">
                            <div class="input-group" style="width: 100%; float: right;">
                            <input id="txtSearch" type="text" class="form-control" placeholder="Search" name="txtSearch" runat="server" required />
                            <div class="input-group-btn">
                                <asp:Button ID="kk" Text="Search" class="form-control" runat="server" OnClick="btnSearch_Click" />
                            </div>
                            </div>
                        </asp:Panel>
                    </div>                                 
                    </div>
                    </div>
                    </div>
                    </div>--%>
                    <div class="ResultsMessage">
                        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                    </div>

                    <asp:Panel ID="pnlAllFashion" runat="server" Visible="false">
                        <div class="plioo" style="width: 100%; border-bottom-color: #337ab7; margin-left: 0px;">
                            Male Fashion
       <%--<asp:Button ID="btnViewAll" Style="float: right" UseSubmitBehavior="false" Text="View All" class="btn btn-primary" runat="server" OnClick="btnViewAll_Click" />--%>
                        </div>

                        <div class="text-center">
                            <asp:ListView runat="server" ID="lvFashionListPreview" GroupItemCount="3" DataKeyNames="pkFashionID" OnPagePropertiesChanging="lvFashionListPreview_PagePropertiesChanging">
                                <LayoutTemplate>
                                    <table cellpadding="20" runat="server" cellspacing="50"
                                        id="tblProducts" style="margin-left: auto; margin-right: auto;" class="centerAt550">
                                        <tr runat="server" id="groupPlaceholder">
                                        </tr>
                                    </table>
                                    <asp:DataPager runat="server" ID="DataPager" PageSize="6">
                                        <Fields>
                                            <asp:NumericPagerField ButtonCount="10" PreviousPageText="Pre"
                                                NextPageText="Next" />
                                        </Fields>
                                    </asp:DataPager>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <span class="text-center" runat="server" id="productRow">
                                        <div runat="server" id="itemPlaceHolder"></div>
                                    </span>
                                </GroupTemplate>
                                <ItemTemplate>

                                    <a href='<%#"Fashion.aspx?ID=" + Eval("pkFashionID") %>' class="poliopup">
                                        <div style="width: 100%; max-width: 227px; display: inline-block;">
                                            <asp:Image runat="server" ID="ProductImage" src='<%# "Images/Fashions/" + Eval("txtFashionImage1Url") %>' alt="Alternate Text" class="img img-fluid" Style="width: 100%; max-width: 200px; height: 100%; max-height: 200px" />
                                            <h6 style="color: #999; padding-left: 5px; text-align: left; border-bottom: 1px solid #ccc; width: 80%; margin-left: 10%; padding-bottom: 8px;"><%# Eval("varFashionType") %></h6>
                                            <p style="padding-left: 25px; text-align: left; font-weight: bolder; color: #000"><%# Eval("varTitle") %></p>
                                            <p style="font-weight: lighter; text-align: left; color: #337ab7; padding-left: 25px; font-size: 20px">Rs: <%# Eval("varPrice", "{0:#0.00}") %></span></p>
                                        </div>
                                    </a>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </asp:Panel>


                    <asp:Panel ID="pnlFemaleFashion" runat="server" Visible="false">
                        <div class="plioo" style="width: 100%; border-bottom-color: #337ab7; margin-left: 0px;">
                            Female Fashion
       <%--<asp:Button ID="Button1" Style="float: right" UseSubmitBehavior="false" Text="View All" class="btn btn-primary" runat="server" OnClick="btnViewAll_Click" />--%>
                        </div>

                        <%--<div class="ResultsMessage">
        <asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="false"></asp:Label>
        </div>--%>
                        <div class="text-center">
                            <asp:ListView runat="server" ID="lvFemaleFashion" GroupItemCount="3" DataKeyNames="pkFashionID" OnPagePropertiesChanging="lvFemaleFashion_PagePropertiesChanging">
                                <LayoutTemplate>
                                    <table cellpadding="20" runat="server" cellspacing="50"
                                        id="tblProducts" style="margin-left: auto; margin-right: auto;" class="centerAt550">
                                        <tr runat="server" id="groupPlaceholder">
                                        </tr>
                                    </table>
                                    <asp:DataPager runat="server" ID="DataPager" PageSize="6">
                                        <Fields>
                                            <asp:NumericPagerField ButtonCount="10" PreviousPageText="Pre"
                                                NextPageText="Next" />
                                        </Fields>
                                    </asp:DataPager>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <span class="text-center" runat="server" id="productRow">
                                        <div runat="server" id="itemPlaceHolder"></div>
                                    </span>
                                </GroupTemplate>
                                <ItemTemplate>

                                    <a href='<%#"Fashion.aspx?ID=" + Eval("pkFashionID") %>' class="poliopup">
                                        <div style="width: 100%; max-width: 227px; display: inline-block;">
                                            <asp:Image runat="server" ID="ProductImage" src='<%# "Images/Fashions/" + Eval("txtFashionImage1Url") %>' alt="Alternate Text" class="img img-fluid" Style="width: 100%; max-width: 200px; height: 100%; max-height: 200px" />
                                            <h6 style="color: #999; padding-left: 5px; text-align: left; border-bottom: 1px solid #ccc; width: 80%; margin-left: 10%; padding-bottom: 8px;"><%# Eval("varFashionType") %></h6>
                                            <p style="padding-left: 25px; text-align: left; font-weight: bolder; color: #000"><%# Eval("varTitle") %></p>
                                            <p style="font-weight: lighter; text-align: left; color: #337ab7; padding-left: 25px; font-size: 20px">Rs: <%# Eval("varPrice", "{0:#0.00}") %></span></p>
                                        </div>
                                    </a>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </asp:Panel>


                    <asp:Panel ID="pnlChildFashion" runat="server" Visible="false">
                        <div class="plioo" style="width: 100%; border-bottom-color: #337ab7; margin-left: 0px;">
                            Childerns Fashion
       <%--<asp:Button ID="Button2" Style="float: right" UseSubmitBehavior="false" Text="View All" class="btn btn-primary" runat="server" OnClick="btnViewAll_Click" />--%>
                        </div>
                        <%--<div class="ResultsMessage">
        <asp:Label ID="Label2" runat="server" ForeColor="Red" Visible="false"></asp:Label>
        </div>--%>
                        <div class="text-center">
                            <asp:ListView runat="server" ID="lvChildFashion" GroupItemCount="3" DataKeyNames="pkFashionID" OnPagePropertiesChanging="lvChildFashion_PagePropertiesChanging">
                                <LayoutTemplate>
                                    <table cellpadding="20" runat="server" cellspacing="50"
                                        id="tblProducts" style="margin-left: auto; margin-right: auto;" class="centerAt550">
                                        <tr runat="server" id="groupPlaceholder">
                                        </tr>
                                    </table>
                                    <asp:DataPager runat="server" ID="DataPager" PageSize="6">
                                        <Fields>
                                            <asp:NumericPagerField ButtonCount="10" PreviousPageText="Pre"
                                                NextPageText="Next" />
                                        </Fields>
                                    </asp:DataPager>
                                </LayoutTemplate>
                                <GroupTemplate>
                                    <span class="text-center" runat="server" id="productRow">
                                        <div runat="server" id="itemPlaceHolder"></div>
                                    </span>
                                </GroupTemplate>
                                <ItemTemplate>

                                    <a href='<%#"Fashion.aspx?ID=" + Eval("pkFashionID") %>' class="poliopup">
                                        <div style="width: 100%; max-width: 227px; display: inline-block;">
                                            <asp:Image runat="server" ID="ProductImage" src='<%# "Images/Fashions/" + Eval("txtFashionImage1Url") %>' alt="Alternate Text" class="img img-fluid" Style="width: 100%; max-width: 200px; height: 100%; max-height: 200px" />
                                            <h6 style="color: #999; padding-left: 5px; text-align: left; border-bottom: 1px solid #ccc; width: 80%; margin-left: 10%; padding-bottom: 8px;"><%# Eval("varFashionType") %></h6>
                                            <p style="padding-left: 25px; text-align: left; font-weight: bolder; color: #000"><%# Eval("varTitle") %></p>
                                            <p style="font-weight: lighter; text-align: left; color: #337ab7; padding-left: 25px; font-size: 20px">Rs: <%# Eval("varPrice", "{0:#0.00}") %></span></p>
                                        </div>
                                    </a>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </asp:Panel>

                    <!--Post Page Code......-->

                    <asp:Panel ID="pnlFashionDetail" runat="server" Visible="true">
                        <div class="row  container-fluid">
                            <div class="col-12">
                                <div class="row container-fluid">
                                    <div class="plioo" style="margin-left: 0px;">
                                        <asp:Label runat="server" ID="pTitle" Text="TItle"></asp:Label>
                                        <button id="btnBack" type="button" style="float: right" class="btn btn-primary" runat="server" onserverclick="btnBack_Click">
                                            <span class="fa fa-angle-double-left"></span>
                                            View All
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">

                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 col-12" style="border: 1px solid #ccc;">

                                <div class="row" style="overflow: hidden; position: relative">
                                    <div class="content_809080" style="overflow: hidden;">
                                        <asp:Image runat="server" ImageUrl="../img/a3.png" ID="oploplopplopopliop" class="img img-responsive content_809080" Style="width: 100%; max-width: 500px;" alt="Alternate Text" />
                                    </div>
                                    <%-- <div class="contenet_custon_89568978458956 content_809080">
                                <asp:Image runat="server" id="PostImage1" ImageUrl="../data1/images/11.jpg" class="img img-responsive img-thumbnail oploiopyuy76u7" style="height:200px" alt="Alternate Text"/>
                                <%--<asp:Image runat="server" id="PostImage2" ImageUrl="../img/2123123123123123.png" class="img img-responsive img-thumbnail oploiopyuy76u7" style="height:200px" alt="Alternate Text" />--%>
                                    <%--<asp:Image runat="server" id="PostImage3" ImageUrl="../img/dawn-news-pakistan-tv-logo.png" class="img img-responsive img-thumbnail oploiopyuy76u7" style="height:200px" alt="Alternate Text"/>--%>
                                    <%--<img runat="server" src="../img/GEO Tez.png" class="img img-responsive img-thumbnail oploiopyuy76u7" alt="Alternate Text">--%>
                                    <%--</div>--%>
                                </div>

                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 col-12" style="padding: 20px;">

                                <div class="row">

                                    <h3 style="padding-left: 20px; font-weight: bolder">KEY FEATURES
                                    </h3>
                                    <p style="text-align: justify; padding-left: 20px;" runat="server" id="pFeatures">
                                        Features
                                    </p>
                                    <p></p>

                                    <h4 style="font-weight: bolder; padding-left: 20px; margin-top: 20px;">Size Guide
                                    </h4>
                                    <p style="padding: 20px; text-align: justify; padding-top: 0px;" runat="server" id="pSizeGuide">
                                        Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
                                    </p>
                                    <p>
                                    </p>
                                    <p></p>
                                    <p></p>
                                    <div class="text-center">
                                        <div>
                                            <b>Price:</b>
                                            <p class="text-center" runat="server" id="pPrice">
                                                00
                                            </p>
                                        </div>
                                        <button type="button" class="btn btn-lg btn-success disabled"><span class="fa fa-sellsy"></span>Buy Now</button>
                                        <p style="color: #f00">Out of Stock</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="plioo" style="width: 100%; border-bottom-color: #337ab7; margin-left: 0px;">
                            Info
        <asp:Button ID="btnLike" Style="float: right" CssClass="btn btn-primary" Text="Like" UseSubmitBehavior="false" runat="server" OnClick="btnLike_Click" />
                        </div>
                        <p runat="server" id="ptxtDetails" style="text-align: justify; padding: 20px;">Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.</p>

                        <div class="row">

                <div id="SC_TBlock_469242" class="SC_TBlock" style="text-align: center;">loading...</div>

                <script type="text/javascript">
                    (sc_adv_out = window.sc_adv_out || []).push({
                        id : "469242",
                        domain : "n.ads1-adnow.com"
                    });
                </script>

                <script type="text/javascript" src="//st-n.ads1-adnow.com/js/adv_out.js"></script>

            </div>

                        <div class="row" style="width: 100%; margin-left: 0.2%; overflow: hidden;">
                            <div class="row" style="width: 99.5%; margin-left: 0.2%;">
                                <div class="" style="border: 0px; margin-left: 0px; padding: 0px;">
                                    <div class="plioo" style="width: 100%; border-bottom-color: #337ab7; margin-left: 0px;">
                                        Comment
                                    </div>
                                </div>
                            </div>

                            <div class="" style="border: 0px; margin-left: 0px; padding: 0px;">
                                <div class="plioo" style="width: 100%; border-bottom-color: #337ab7; margin-left: 0px; border: 0px; box-shadow: none;">
                                    Follow us
                                    <button type="button" style="margin-left: 10px; background-color: #00a542; color: #fff;" class="btn btn-sm"><i class="	fa fa-envelope"></i>Follow Us</button>
                                    <button type="button" style="margin-left: 10px; background-color: #4267b2; color: #fff;" class="btn btn-sm"><i class="fa fa-facebook"></i>Like us</button>
                                    <button type="button" style="margin-left: 10px; background-color: #1b95e0; color: #fff;" class="btn btn-sm "><i class="fa fa-twitter-square"></i>Follow us</button>
                                    <button type="button" style="margin-left: 10px; background-color: #bd081c; color: #fff;" class="btn btn-sm "><i class="	fa fa-pinterest-p"></i>Follow us</button>
                                </div>
                            </div>
                            <div class="row container-fluid">
                                <p runat="server" id="pintNumberOfComments" style="font-size: 30px; padding: 5px;">
                                    1 Comment
                                </p>
                            </div>
                            <div class="row">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12" style="padding: 50px;">
                                    <div class="form-group">
                                        <label>Submit a Comment</label>
                                        <p style="font-size: 14px" class="text-dark">
                                            Your email address will not be published. Required fields are marked *
                                        </p>

                                        <div class="input-group" style="margin-bottom: 10px;">
                                            <span class="input-group-addon"><i class="fa fa-user-o"></i></span>
                                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name" MaxLength="150" required></asp:TextBox>
                                        </div>

                                        <div class="input-group" style="margin-bottom: 10px;">
                                            <span class="input-group-addon"><i class="fa fa-envelope-o"></i></span>
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email" TextMode="Email" MaxLength="255" required></asp:TextBox>
                                        </div>
                                        <asp:TextBox runat="server" CssClass="form-control textarea-custom" Rows="5" ID="txtComment" placeholder="Comment" Style="margin-bottom: 10px;" TextMode="MultiLine" MaxLength="500" required></asp:TextBox>
                                        <asp:Button runat="server" ID="btnClear" OnClick="btnClear_Click" Style="margin-left: 10px; color: #fff; background-color: #e30613" CssClass="btn btn-lg" Text="Clear" />
                                        <asp:Button runat="server" ID="btnFeedbackSubmit" OnClick="btnFeedbackSubmit_Click" Style="margin-left: 10px; color: #fff; background-color: #00a542" class="btn btn-lg" Text="Submit" />
                                    </div>
                                </div>
                            </div>
                            <asp:ListView runat="server" ID="lvFeedBack" DataKeyNames="pkFeedBackID">
                                <LayoutTemplate>
                                    <table cellpadding="2" runat="server" id="tblEmployees" border="0" style="width: 100%">
                                        <tr runat="server" id="itemPlaceholder">
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                                <ItemTemplate>
                                    <tr runat="server">
                                        <td>
                                            <div class="row container-fluid" style="border-bottom: 1px solid #ccc;">
                                                <br></br>
                                                <div class="col-xl-1 col-lg-1 col-md-1 col-sm-2 col-xs-2 col-2 text-right">
                                                    <img src="../img/31144ff4b7b475d719caaeeabfc2876e.png" class="img img-fluid" alt="Alternate Text" style="margin-left: 2%; width: 100%; max-width: 70px; min-width: 45px;" />
                                                </div>
                                                <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-8 col-8" style="margin-left: 10px;">
                                                    <div class="row container-fluid">
                                                        <b>
                                                            <asp:Label ID="lblName" runat="server"><%#Eval("varName") %></asp:Label>
                                                        </b>
                                                        <span style="font-size: 15px; margin-right: 10px;">
                                                            <asp:Label ID="lblDateAdded" runat="server">on <%#Eval("dteDateAdded", "{0:MMM dd, yyyy hh:mm tt}")%></asp:Label>
                                                            <%-- on 23rd October 2017 at 11:36 am--%>
                                                        </span>
                                                    </div>
                                                    <div class="row">
                                                        <p runat="server" id="pFeedback" style="font-size: 18px; padding: 16px;" class="text-dark">
                                                            <%#Eval("txtFeedback") %>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:ListView>

                        </div>
                    </asp:Panel>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
