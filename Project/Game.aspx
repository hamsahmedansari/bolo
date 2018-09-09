<%@ Page Title="" Language="C#" MasterPageFile="UserChild.master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Game.aspx.cs" Inherits="Bolo.Game" %>

<asp:Content ID="Content1" ContentPlaceHolderID="OtherContent" runat="server">
    <div class="col-xl-6 col-md-6 col-sm-10 col-xs-12 col-10">

        <div class="col-12 text-center">
            <img src="img/720x90.png" class="img img-fluid" style="max-width: 720px; width: 100%; margin-top: 20px; margin-bottom: 10px;" alt="">
        </div>
       

        <div class="row" style="width: 100%; margin-left: 0.2%;">
            <div class="col-sm-12">
                <div class="plioo" style="border: 0px; box-shadow: 1px 1px 2px #A5A3A3; margin-left: 0px; padding: 0px; width: 100% !important;">
                    <asp:Panel ID="pnlAllGame" runat="server" Visible="false">
                        <div class="row container-fluid">
                            <div class="col-12">
                                <div class="row container-fluid">
                                    <div class="plioo" style="height: 100px; margin-left: initial;">
                                        Game
                                        <asp:Panel ID="pnlSearch" runat="server" DefaultButton="kk">
                                             <div class="form-group">
                                <div class="input-group" style="width: 100%; float: right;">
                                <input id="txtSearch" type="text" class="form-control" placeholder="Search" name="txtSearch" runat="server" required>
                                <div class="input-group-btn">
                                    <asp:Button ID="kk" Text="Search" class="form-control" runat="server" OnClick="btnSearch_Click" />
                                </div>
                            </div>
                        </div>

                                        </asp:Panel>
                               
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="plioo" style="width: 100%; border-bottom-color: #337ab7; margin-left: 0px;">
                            All Game
                <asp:Button ID="btnViewAll" Style="float: right" UseSubmitBehavior="false" Text="View All" class="btn btn-primary" runat="server" OnClick="btnViewAll_Click" />
                        </div>
                        <div class="ResultsMessage">
                            <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                        </div>

                        <asp:ListView runat="server" ID="lvGameListPreview" GroupItemCount="3" DataKeyNames="pkGameID" OnPagePropertiesChanging="lvGameListPreview_PagePropertiesChanging">
                            <LayoutTemplate>
                                <table cellpadding="20" runat="server" cellspacing="50"
                                    id="tblProducts" style="margin-left: auto; margin-right: auto;" class="centerAt550">
                                    <tr runat="server" id="groupPlaceholder">
                                    </tr>
                                </table>
                                <asp:DataPager runat="server" ID="DataPager"
                                    PageSize="9">
                                    <Fields>
                                        <asp:NumericPagerField ButtonCount="10"
                                            PreviousPageText="Pre"
                                            NextPageText="Next" />
                                    </Fields>
                                </asp:DataPager>
                            </LayoutTemplate>
                            <GroupTemplate>
                                <tr runat="server" id="productRow"
                                    style="height: 80px;">
                                    <td runat="server" id="itemPlaceholder"></td>
                                </tr>
                            </GroupTemplate>
                            <ItemTemplate>
                                <td valign="top" align="center" style="max-width: 100%; height: auto; padding: 5px;" runat="server" class="img displayBlockAt550">
                                    <a href='<%#"Game.aspx?ID=" + Eval("pkGameID") %>' rel="bookmark" class="post-thumbnail tie-appear">
                                        <asp:Image ID="ProductImage" runat="server" ToolTip='<% #Eval("varGameName")%>'
                                            ImageUrl='<%#"/Images/Games/" + Eval("txtImageLink") %>' CssClass="img img-thumbnail custom_img" Width="200" Height="200" />
                                    </a>
                                    <br />
                                        <asp:Label runat="server" ID="txtgameName" Text='<% #Bind("varGameName")%>' style="font-size:12px"></asp:Label><br />
                                </td>
                                
                            </ItemTemplate>
                        </asp:ListView>
                    </asp:Panel>
                    <!--Post Page Code Start-->
                    <asp:Panel ID="pnlGameDetail" runat="server" Visible="true">
                        <div class="row  container-fluid">
                            <div class="col-12">
                                <div class="row container-fluid">
                                    <div class="plioo" style="margin-left: 0px;">
                                        <span>Game</span>
                                        <button id="btnBack" style="float: right" class="btn btn-primary" runat="server" onserverclick="btnBack_Click">
                                            <span class="fa fa-angle-double-left"></span>
                                            View All
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="width: 100%; margin-left: 0.2%;">

                            <div class="plioo" style="border: 0px; box-shadow: 0px 1px 2px #A5A3A3; margin-left: 0px; padding: 0px;">

                                <div class="plioo" style="width: 100%; border-bottom-color: #337ab7; margin-left: 0px;">
                                    <asp:Label ID="lblGameName" runat="server" Text="kala"></asp:Label>
                                </div>
                                <div class="row container-fluid">
                                    <div class="col-12 text-center">

                                        <asp:Image ID="imgBanner" runat="server" class="img img-fluid" ImageUrl="/img/adobe-photoshop-cs4.svg" Width="80%" />
                                    </div>
                                </div>
                                <div class="row container-fluid" style="margin-top: 20px;">

                                    <div class="col-12">

                                        <div class="plioo" style="width: 100%; border-bottom-color: #337ab7; margin-left: 0px;">
                                            Info
                            <asp:Button ID="btnLike" Style="float: right" CssClass="btn btn-primary" Text="Like" UseSubmitBehavior="false" runat="server" OnClick="btnLike_Click" />
                                        </div>
                                        <p runat="server" id="ptxtDetails" style="text-align: justify; padding: 20px;">Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.</p>
                                    </div>

                                </div>

                                <div class="row container-fluid" style="margin-top: 20px;">

                                    <div class="col-12">
                                        <div class="plioo" style="width: 100%; border-bottom-color: #337ab7; margin-left: 0px;">
                                            Download
                                        </div>
                                        <div class="row" style="margin-top: 10px; margin-bottom: 10px;">
                                            <div class="col-12 text-center">
                                                <img src="../img/300x250.png" class="img img-fluid" style="max-width: 300px; width: 100%;" alt="">
                                            </div>
                                        </div>
                                        <div class="btn-group-lg" style="text-align: center; margin-bottom: 10px;">
                                            <asp:Button ID="btnDownLoad" CssClass="btn btn-primary" UseSubmitBehavior="false" Text="Download" runat="server" OnClick="btnDownLoad_Click" />
                                        </div>
                                        <div class="row" style="margin-top: 10px; margin-bottom: 10px;">
                                            <div class="col-12 text-center">
                                                <img src="../img/300x250.png" class="img img-fluid" style="max-width: 300px; width: 100%;" alt="">
                                            </div>
                                        </div>
                                    </div>
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

                                    <asp:ListView runat="server" ID="lvFeedback" DataKeyNames="pkFeedbackID">
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
                            </div>
                        </div>
                    </asp:Panel>
                    <br />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
