<%@ Page Title="" Language="C#" MasterPageFile="~/UserChild.master" AutoEventWireup="true" CodeBehind="BlogNews.aspx.cs" Inherits="Bolo.BlogNews" %>
<asp:Content ID="head" ContentPlaceHolderID="headchild" runat="server">
    <meta property='og:title' id="meta1" runat="server"/>
    <meta property='og:type' content='article' />
    <meta property='og:image' id="meta3" runat="server" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="OtherContent" runat="server">
   <%-- <script type="text/javascript">
        var x = document.getElementById("lblDescription");
        for (var i = x.length; i <= 20; i++) {
            x.appendChild = "</span>";
        }
    </script>--%>    
    <div class="col-xl-6 col-md-6 col-sm-10 col-xs-12 col-10">
        <div class="col-12 text-center">
            
        </div>
        </div>
     <!--All News Page-->
    <asp:Panel runat="server" ID="pnlAllNews" Visible="false">
        <div class="col-xl-6 col-md-6 col-sm-10 col-xs-12 col-10">
        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="plioo">
                       <span> Blogs </span>
                <asp:Button ID="btnViewAll" Style="float: right" UseSubmitBehavior="false" Text="View All" class="btn btn-primary" runat="server" OnClick="btnViewAll_Click" />
                        
                        <asp:Panel runat="server" ID="pnlSearch" DefaultButton="btnSearch" style="float:right; width:460px">
                        <div class="input-group custom_active oplioupoil" style="width:initial !important">
                            <input id="txtSearch" type="text" class="form-control" placeholder="Search" name="txtSearch" runat="server">
                    <div class="input-group-btn">
                            <asp:Button ID="btnSearch" Text="Search" class="form-control" runat="server" OnClick="btnSearch_Click"/>
                    </div>                            
                        </div>                           
                    </asp:Panel>
                    </div>
                    <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                    </div>
                </div>
                <div class="row" style="width: 100%;margin-left: 0.2%;">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12">

                        <asp:ListView runat="server" ID="lvBlogPreviewList" GroupItemCount="3" DataKeyNames="pkNewsID" OnPagePropertiesChanging="lvBlogPreviewList_PagePropertiesChanging">
                            <LayoutTemplate>
                                <table runat="server" cellpadding="20" cellspacing="50"
                                    id="tblProducts" style="margin-left:auto; margin-right:auto;"
                                    class="centerAt550">
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
                                <span  runat="server" id="productRow">
                                    <div runat="server" id="itemPlaceholder"></div>
                                </span>
                            </GroupTemplate>
                            <ItemTemplate>
                                <!--single post-->
                        <div class="text-center col-sm-6" style="border:1px solid #ccc;padding:10px; margin-top:2px;">
                            <asp:Label runat="server" style="color:#999" Text='<%# Eval("dteNewsDate","{0:MM-dd-yyyy}")%>' ></asp:Label>
                                <div class="text-center">
                                <asp:Image runat="server" ID="ProductImage" src='<%# "Images/News/" + Eval("txtNewsImage") %>' alt="Alternate Text" style="width:100%;MAX-WIDTH:280PX;max-height:230px;height:100%;"/>
                            </div>
                            <div style="border-bottom:2px solid #999; font-size:19px; height:54px; overflow:hidden;">
                            <p>
                              <%# Eval("txtNewsTitle") %>
                            </p>
                            </div>
                           <div style="height:50px; overflow:hidden;">
                            <p style="text-align:justify;font-size:12px;"> 
                            <asp:Literal runat="server" ID="lblDesciption" Text='<%# Eval(("varNewsChannelName")) %>'>
                            </asp:Literal>
                            </p>
                           </div>
                            <div style="text-align:center">
                                <a href='<%# "BlogNews.aspx?ID=" + Eval("pkNewsID") %>' rel="bookmark" class="post-thumbnail tie-appear">
                                <button style="margin-top:5px" type="button" class="btn btn-lg btn-danger">
                                    Read Full Article
                                </button></a>
                            </div>
                        </div>
                        <!--single post-->
                            </ItemTemplate>
                        </asp:ListView>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </asp:Panel>
    <!--All News Page End-->

    <!--Post Page-->
    <asp:Panel runat="server" ID="pnlNewsDetails" Visible="false">
        <div class="col-xl-6 col-md-6 col-sm-10 col-xs-12 col-10">
        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="plioo">
                        <!--date--> 
                        <p runat="server" id="pDate" style="font-size:14px; color:#999;">Date of publish</p>
                        <button id="btnBack" style="float:right" class="btn btn-primary" runat="server" onserverclick="btnBack_ServerClick"> 
                        <span class="fa fa-angle-double-left"></span>
                        View All
                        </button>
                        <!--title-->
                        <h3 runat="server" id="pTitle">Tittle of Blog</h3>
                    </div>
                </div>

                <div class="row" style=" font-size:20px;   width: 100%;    margin-left: 0.2%;padding:20px;text-align:justify">
                    <!--Image-->
                    <asp:Image runat="server" ID="pImage" ImageUrl="../img/a6.jpg" class="img img-thumbnail img-responsive center-block" style="width:100%;max-width:300px;" alt="Alternate Text"/>
                    <!--Description-->
                    <div class="text-center">
                    <asp:Literal runat="server" id="pDescription">
                        Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
                        Placerat suscipit, orci nisl iaculis eros, a tincidunt nisi odio eget lorem nulla condimentum tempor mattis ut vitae feugiat augue cras ut metus a risus iaculis scelerisque eu ac ante.
                        Fusce non varius purus aenean nec magna felis fusce vestibulum velit mollis odio sollicitudin lacinia aliquam posuere, sapien elementum lobortis tincidunt, turpis dui ornare nisl, sollicitudin interdum turpis nunc eget.
                        Sem nulla eu ultricies orci praesent id augue nec lorem pretium congue sit amet ac nunc fusce iaculis lorem eu diam hendrerit at mattis purus dignissim vivamus mauris tellus, fringilla.
                        Vel dapibus a, blandit quis erat vivamus elementum aliquam luctus etiam fringilla pretium sem vitae sodales mauris id nulla est praesent laoreet, metus vel auctor aliquam, eros purus vulputate leo.
                    </asp:Literal>
                    </div> 
                </div>
            </div>
        </div>

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

        <div class="row container-fluid" style="      margin-left: 0.2%;overflow:hidden;width:100%;">
            <div class="row" style="    width: 99.5%;    margin-left: 0.2%;">
                <div class="" style="border:0px;margin-left: 0px;padding: 0px;">
                    <div class="plioo" style="width: 100%;border-bottom-color:#337ab7;margin-left: 0px;">
                        Comment
        <asp:Button ID="btnLike" Style="float: right" CssClass="btn btn-primary" Text="Like" UseSubmitBehavior="false" runat="server" OnClick="btnLike_Click" />
                    </div>
                </div>
            </div>

            <div class="" style="border:0px;margin-left: 0px;padding: 0px;">
                <div class="plioo" style="width: 100%;border-bottom-color:#337ab7;margin-left: 0px;border:0px;box-shadow:none;">
                    Follow us
                    <a href="https://www.facebook.com/BoloPak" style="margin-left:10px;background-color:#4267b2;color:#fff;" class="btn btn-sm"> <i class="	fa fa-facebook"></i> Like us</a>
                   <a href="https://www.instagram.com/bolo.pakistan/" style="margin-left:10px;background-color:#d10869;color:#fff;" class="btn btn-sm"> <i class="	fa fa-instagram"></i> Follow</a>
                   <a href="https://twitter.com/BOLO_PAK" style="margin-left:10px;background-color:#1da1f2;color:#fff;" class="btn btn-sm"> <i class="	fa fa-twitter"></i> Follow </a>
                   <a href="https://www.youtube.com/channel/UC482MMH7DXOXYE5D8QgDcfQ" style="margin-left:10px;background-color:#ff0000;color:#fff;" class="btn btn-sm"> <i class="	fa fa-youtube"></i> Subscribe</a>
                </div>
            </div>

            <div class="row container-fluid">
                <p runat="server" id="pintNumberOfComments" style="font-size: 30px; padding: 5px;">
                    1 Comment
                </p>
            </div> 

            <%--<div class="row container-fluid" style="border-bottom:1px solid #ccc;">
                <div class="col-xl-1 col-lg-1 col-md-1 col-sm-2 col-xs-2 col-2 text-right">
                    <img src="../img/31144ff4b7b475d719caaeeabfc2876e.png" class="img img-fluid" alt="Alternate Text" style="margin-left:2%;width:100%; max-width:70px;min-width:45px;">
            </div>

                <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-2 col-2 text-right">
                    <button type="button" style="margin-left:10px;color:#fff;background-color:#00a542" class="btn btn-md"> <i class="	fa fa-mail-reply	"></i>  Relpy</button>
                </div>
            </div>--%>

            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12" style="padding:50px;">
                    <div class="form-group">
                            <div class="form-group">
                                                <label>Submit a Comment</label>
                                                <p style="font-size: 14px" class="text-dark">
                                                    Your email address will not be published. Required fields are marked *
                                                </p>

                                                <div class="input-group" style="margin-bottom: 10px;">
                                                    <span class="input-group-addon"><i class="fa fa-user-o"></i></span>
                                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name" MaxLength="150"></asp:TextBox>
                                                </div>

                                                <div class="input-group" style="margin-bottom: 10px;">
                                                    <span class="input-group-addon"><i class="fa fa-envelope-o"></i></span>
                                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email" TextMode="Email" MaxLength="255"></asp:TextBox>
                                                </div>
                                                <asp:TextBox runat="server" CssClass="form-control textarea-custom" Rows="5" ID="txtComment" placeholder="Comment" Style="margin-bottom: 10px;" TextMode="MultiLine" MaxLength="500"></asp:TextBox>
                                                <asp:Button runat="server" ID="btnClear" OnClick="btnClear_Click" UseSubmitBehavior="false" Style="margin-left: 10px; color: #fff; background-color: #e30613" CssClass="btn btn-lg" Text="Clear" />
                                                <asp:Button runat="server" ID="btnFeedbackSubmit" OnClick="btnFeedbackSubmit_Click" Style="margin-left: 10px; color: #fff; background-color: #00a542" class="btn btn-lg" Text="Submit" />
                    </div>
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
    <!--Post Page End-->
</asp:Content>
