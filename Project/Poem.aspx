<%@ Page Title="" Language="C#" MasterPageFile="~/UserChild.master" AutoEventWireup="true" CodeBehind="Poem.aspx.cs" Inherits="Bolo.Poem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="OtherContent" runat="server">
    <div class="col-xl-6 col-md-6 col-sm-10 col-xs-12 col-10">
        

        <div class="row" style="width:100%; margin-left:0.2%;">
           <div class="col-sm-12">
               <div class="plioo" style="border: 0px; margin-left: 0px; padding: 0px; width: 100% !important;box-shadow:none !important;">
                   <asp:Panel ID="PanelAllPoems" runat="server" Visible="false">
                       <div class="row container-fluid">
                           <div class="col-12">
                               <div class="row container-fluid">
                                   <div class="plioo" style="height:100px; margin-left:initial;">
                                       Poems
                                       
                                       <asp:Panel ID="pnlSearch" runat="server" DefaultButton="kk">


                                           <div class="form-group">
                                           <div class="input-group" style="width:100%; float:right;">
                                               <input id="txtSearch" type="text" class="form-control" placeholder="Search" name="txtSearch" runat="server" required />
                                               <div class="input-group-btn">
                                                   <asp:Button ID="kk" Text="Search" CssClass="form-control" runat="server" OnClick="btnSearch_Click" />
                                               </div>
                                           </div>
                                       </div>
 

                                       </asp:Panel>

                                                                         </div>

                               </div>
                           </div>
                       </div>
                       <div class="plioo" style="width:100%; border-bottom-color:#337ab7; margin-left:0px;">
                           All Poems
                           <asp:Button ID="btnViewAll" Style="float:right" UseSubmitBehavior="false" Text="View All" CssClass="btn btn-primary" runat="server" OnClick="btnViewAll_Click" />
                       </div>
                       <div class="ResultsMessage">
                           <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                       </div>
                       <div class="text-center">
                           <asp:ListView runat="server" ID="lvPoemListPreview" GroupItemCount="3" DataKeyNames="pkPoemID" OnPagePropertiesChanging="lvPoemListPreview_PagePropertiesChanging">
                               <LayoutTemplate>
                                   <table cellpadding="20" runat="server" cellspacing="50"
                                       id="tblProducts" style="margin-left:auto; margin-right:auto;" class="centerAt550">
                                       <tr runat="server" id="groupPlaceholder">

                                       </tr>
                                   </table>
                                   <asp:DataPager runat="server" ID="DataPager" PageSize="15">
                                       <Fields>
                                           <asp:NumericPagerField ButtonCount="10" PreviousPageText="Pre"
                                                NextPageText="Next" />
                                       </Fields>
                                   </asp:DataPager>
                               </LayoutTemplate>
                               <GroupTemplate>
                                   <span class="text-center" runat="server" id="productRow">
                                       <div runat="server" id="itemPlaceHolder">

                                       </div>
                                   </span>
                               </GroupTemplate>
                               <ItemTemplate>
                                   <a href='<%#"Poem.aspx?ID=" + Eval("pkPoemID") %>' rel="bookmark" class="post-thumbnail tie-appear"> 
                                       <div class="qwdertyji" style="overflow:hidden;width:150px;">
                                           <div style="width:100%;max-width:200px;position:relative;overflow:hidden">
                                               <asp:Image runat="server" ID="ProductImage" src='<%#"Images/Poems/" + Eval("txtPoemImage") %>' AlternateText="Alternate Text"  style="width:100%;max-width:200px; height:100%;max-height:200px" />
                                               <div class="asodjajsd" style="height:200px;min-height:200px;">
                                                   <span class="glyphicon glyphicon-play-circle" style="line-height:4;"></span>

                                               </div>
                                           </div>
                                           <div class="row text-left container-fluid text-primary">
                                               <span style="font-size:15px;text-align:left"><%#Eval("varPoemName")%></span>
                                               <p style="text-align:left; font-size:10px;">
                                                   <b>Likes</b> <span><%# Eval("intLikesCounter") %></span><br />
                                                   <b>Downloads</b> <span><%# Eval("intDownloadsCounter") %></span>
                                               </p>
                                           </div>
                                       </div>
                                   </a>
                               </ItemTemplate>
                           </asp:ListView>
                       </div>
                   </asp:Panel>

                   <asp:Panel ID="pnlPoemDetail" runat="server">
                       <div class="row text-center">
                           <div class="plioo text-left" style="width:100%;border-bottom-color:#337ab7;margin-left:0px;">
                               <asp:Label runat="server" ID="pTitle" Text="ptitle"></asp:Label>
                               <button id="btnBack" style="float:right" class="btn btn-primary" runat="server" onserverclick="btnBack_Click">
                                   <span class="fa fa-angle-double-left"></span>
                                   View All
                               </button>
                           </div>
                           <div class="row">
                               <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-xs-12 col-12">
                                   <!--Cartoon Banner Image -->
                                   <asp:Image runat="server" ID="imgPoster" ImageUrl="../img/Hollow.in.the.Land-1512812350417.jpg" class="img img-responsive" alt="Alternate Text" style="width:400px; height:500px;"/>

                               </div>
                               <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-xs-12 col-12 text-center" style="font-size:15px;">
                                  
                                  <div class="row">
                                       <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12 opopopopliopo">
                                           <b class="text-dark text-center" style="text-align:left;padding-left:16px;">Story Line</b>
                                       </div>
                                       <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12 text-left">
                                           <p runat="server" id="pDetails" class="opopoplopopoplo" style="text-align:justify;padding:35px;">
                                                Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
                                           Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
                                           </p>
                                       </div>
                                   </div>
                               </div>
                           </div>
                            
                       </div>
                       <div class="plioo text-left" style="width:100%;border-bottom-color:#337ab7;margin-left:0px;margin-top:10px;">
                           Watch Online
                           <asp:Button ID="btnLike" style="float:right;"   CssClass="btn btn-primary" UseSubmitBehavior="false" Text="Download" runat="server" OnClick="btnLike_Click" />

                           

                       </div>
                       <div class="row container-fluid">
             <asp:Button ID="btnDownLoad" CssClass="btn btn-primary hidden" UseSubmitBehavior="false" Text="Download" runat="server" OnClick="btnDownLoad_Click" />
                           
                                                <div class="embed-responsive embed-responsive-16by9" style="margin-bottom:10px;">
                                                    <!--Trailer-->
                                                    <iframe runat="server" id="vidwatch" src="https://www.youtube.com/embed/mevO4I0f5lg" frameborder="0" gesture="media" allow="encrypted-media"></iframe>
                                                </div>

                       </div>
                       <br />
                       <div class="row">

                <div id="SC_TBlock_469242" class="SC_TBlock" style="text-align: center;">loading...</div>

                <script type="text/javascript">
                    (sc_adv_out = window.sc_adv_out || []).push({
                        id: "469242",
                        domain: "n.ads1-adnow.com"
                    });
                </script>

                <script type="text/javascript" src="//st-n.ads1-adnow.com/js/adv_out.js"></script>

            </div>
                       <div class="row" style="width:100%;margin-left:0.2%;overflow:hidden;">
                           <div class="row" style="width:99.5%;margin-left:0.2%;">
                               <div style="border:0px;margin-left:0px;padding:0px;">
                                   <div class="plioo" style="width:100%; border-bottom-color:#337ab7;margin-left:0px;">
                                       Comment
                                   </div>

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
                           <p runat="server" id="pintNumberOfComments" style="font-size:30px;padding:5px;">
                               1 Comment
                           </p>
                       </div>
                       <div class="row">
                           <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12" style="padding:50px;">
                               <div class="form-group">
                                   <label>Submit a Comment</label>
                                   <p style="font-size:14px;" class="text-dardk">
                                       Your email address will not be published. Required fields are marked *
                                   </p>
                                   <div class="input-group" style="margin-bottom:10px;">
                                       <span class="input-group-addon"><i class="fa fa-user-o"></i></span>
                                       <asp:TextBox ID="txtName" runat="server" CssClass="form-control" plceholder="Name" MaxLength="150"  type="text"></asp:TextBox>
                                   </div>
                                   <div class="input-group" style="margin-bottom:10px;">
                                       <span class="input-group-addon"><i class="fa fa-envelope-o"></i></span>
                                       <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email" TextMode="Email" MaxLength="255"  type="text"></asp:TextBox>
                                   </div>
                                   <asp:TextBox runat="server" CssClass="form-control textarea-custom" Rows="5" ID="txtComment" placeholder="Comment" Style="margin-bottom:10px;" tye="text" TextMode="MultiLine" MaxLength="500" ></asp:TextBox>
                                   <asp:Button  runat="server" ID="btnClear" OnClick="btnClear_Click" UseSubmitBehavior="false" style="margin-left:10px; color:#fff; background-color:#e30613" CssClass="btn btn-lg" Text="Clear"/>
                                   <asp:Button  runat="server" ID="btnFeedbackSubmit" OnClick="btnFeedbackSubmit_Click" UseSubmitBehavior="false" style="margin-left:10px; color:#fff; background-color:#00a542" class="btn btn-lg" Text="Submit"/>
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
                   </asp:Panel>
               </div>
           </div>
           
        </div>
    </div>

   
</asp:Content>


