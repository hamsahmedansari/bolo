<%@ Page Title="" Language="C#" MasterPageFile="~/UserChild.master" AutoEventWireup="true" CodeBehind="Gems.aspx.cs" Inherits="Bolo.Gems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="OtherContent" runat="server">
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
                <a href="#" class="close alert_box_close" aria-label="close" style="/* font-size:20px; */font-size: 30px;">×</a>
                <strong>Thank You!</strong> Your Form Has Been Submitted Successfully.
            </div>
        </div>
    </div>
    </asp:Panel> 
    <div class="col-xl-6 col-md-6 col-sm-10 col-xs-12 col-10">
        <div class="col-12 text-center">
        </div>
        <div class="row">
            
            <div class="plioo" style="border:0px; margin-left:0px; padding:0px; width:100% !important;box-shadow:none;">
               
                <asp:Panel ID="pnlAllGems" runat="server" Visible="false">
                     <div class="col-12">
                <div class="row">
                    <div class="plioo">
                        Gems
                    </div>
                </div>
            </div>
                    <div class="ResultsMessage">
                        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                    </div>
                    <div class="text-center">
                        <asp:ListView runat="server" ID="lvGemsListPreview" GroupItemCount="3" DataKeyNames="pkGemID" OnPagePropertiesChanging="lvGemsListPreview_PagePropertiesChanging">
                            <LayoutTemplate>
                                <table cellpadding="20" runat="server" cellspacing="50" id="tblProducts"
                                    style="margin-left:auto; margin-right:auto;" class="centerAt550">
                                    <tr runat="server" id="groupPlaceholder">

                                    </tr>
                                </table>
                                 <asp:DataPager runat="server" ID="DataPager" PageSize="15">
                                    <Fields>
                                        <asp:NumericPagerField ButtonCount="10" PreviousPageText="Pre" 
                                            NextPageText="Next"/>
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
                                <a href='<%#"Gems.aspx?ID=" + Eval("pkGemID")%>' rel="bookmark" class="post-thumbnail tie-appear">

                        <div class="qwdertyji" style="overflow:hidden;width: 150px;">


                            <div style="width:100%; max-width:200px;position:relative;overflow:hidden">

                                <asp:Image runat="server" ID="ProductImage" src='<%#"Images/Gems/" + Eval("txtImage") %>' alt="Alternate Text" class="img img-fluid img-reponsive" style="width: 100%;max-width: 200px;height:100%;max-height:200px"/>

                                 <div class="asodjajsd" style="height:200px;min-height:200px;">
        <span class="glyphicon glyphicon-play-circle" style="    line-height: 4;"></span>
        </div>
                            </div>


                            <div class="row text-left container-fluid text-primary">
                                <span style="font-size:25px;text-align:left"><asp:Label ID="lblTitle" runat="server" Text='<%#Eval("varName")%>'></asp:Label></span>
                                <p style="text-align:left; font-size:12px;">
                                    <b>Price</b>  <asp:Label ID="lblPrice" runat="server" Text='<%#Eval("varPrice","{0:#0.}")%>'></asp:Label>
                                   
                                </p>
                            </div>

                        </div>


                    </a>
                            </ItemTemplate>
                        </asp:ListView>

                    </div>
                </asp:Panel>

                <!--Post Page Code -->
                <asp:Panel ID="pnlGemsDetail" runat="server" Visible="true">
                     <div class="col-12">
                <div class="">
                    <div class="plioo" style="margin-left:0px;width:100%;">
                        Gems

                        <asp:Button ID="btnBack" Style="float: right" UseSubmitBehavior="false" Text=" View ALL" class="btn btn-primary" runat="server" OnClick="btnBack_Click" /> 

                    </div>

                </div>
            </div>
                      
        <div class="row">
         
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12">
                <div class=" text-center">

                    <div class="plioo text-left " style="border-bottom-color:#337ab7;margin-left:0px;width:100%;">
                        <%--Tittle--%>
                        <asp:Label runat="server" ID="pTitle" Text="ptitle" ></asp:Label>
                        <button type="button" id="btnRequest" data-toggle="modal" data-target="#myModal"
                            runat="server" class="btn btn-danger " style="float:right">
                            BUY NO  1000 $
                        </button>
                    </div>
                   <%-- pop_up_data_for_GemsOrder pStone_Price  CssClass="ptitle_Stone"--%>
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12">
                            <asp:Image runat="server" ID="imgPoster" ImageUrl="../img/Hollow.in.the.Land-151218123504217.jpg" class="img img-thumbnail" alt="Alternate Text" />
                       </div>
                    </div>
                </div>

                <div class="plioo text-left" style="width: 100%;border-bottom-color:#337ab7;margin-left: 0px;margin-top:10px;">
                    Description
                </div>
                <div class="row container-fluid ">

                    <p runat="server" id="pDetails" style="padding:20px;text-align:justify;">
                        Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
                        Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
                    </p>

                </div>



                <!-- Modal -->
                <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header text-center">
                                <h4 class="modal-title">Buy <span id="txtStoneName_col" runat="server"></span> Now</h4>
                            </div>
                            <div class="modal-body">

                                <div class="form-group">
                                    <label>Name</label>
                                    <asp:TextBox ID="txtNameGem" runat="server" type="text" class="form-control" required />
                                </div>

                                <div class="form-group">
                                    <label>Email</label>
                                    <asp:TextBox ID="txtEmailGem" runat="server" type="email" class="form-control" required />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="* Email Should be in Proper Format" ForeColor="Red" ControlToValidate="txtEmailGem" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>

                                <div class="form-group">
                                    <label>Contact no</label>
                                    <asp:TextBox ID="txtContactNo" runat="server" type="text" class="form-control" onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode)))return false;" required/>
                                </div>

                                <div class="form-group">
                                    <label>Stone Name</label>
                                    <asp:TextBox ID="txtStoneName" runat="server" ReadOnly="true" type="text"  class="form-control "/>
                                </div>
                                <div class="form-group">
                                    <label>Stone Price</label>
                                    <asp:TextBox ID="txtStonePrice" runat="server" ReadOnly="true" type="text" disabled class="form-control "/>
                                </div>
                                <%--Stone_Price  Stone_Name--%>
                            </div>
                            <div class="modal-footer text-center">
                                <div style="text-align:center;">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>

                                    <button type="submit" class="btn btn-success" id="btnSubmit" runat="server" onserverclick="btnSubmit_Click">Buy now</button>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                
            
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

                <div class="row container-fluid" style="      margin-left: 0.2%;overflow:hidden;width:100%;">

                    <div class="" style="width: 100%;">

                        <div class="" style="border:0px;margin-left: 0px;padding: 0px;">

                            <div class="plioo" style="width: 100%;border-bottom-color:#337ab7;margin-left: 0px;">
                                Comment
                            </div>
                        </div>

                    </div>
                      <div class="row container-fluid">
                <p runat="server" id="pintNumberOfComments" style="font-size: 30px; padding: 5px;">
                    1 Comment
                </p>
    </div>
                    <div class="" style="border:0px;margin-left: 0px;padding: 0px;">

                        <div class="plioo" style="width: 100%;border-bottom-color:#337ab7;margin-left: 0px;border:0px;box-shadow:none;">
                            Follow us
                            <button type="button" style="margin-left:10px;background-color:#00a542;color:#fff;" class="btn btn-sm"> <i class="	fa fa-envelope"></i> Follow Us</button>
                            <button type="button" style="margin-left:10px;background-color:#4267b2;color:#fff;" class="btn btn-sm"> <i class="	fa fa-facebook"></i> Like us</button>
                            <button type="button" style="margin-left:10px;background-color:#1b95e0;color:#fff;" class="btn btn-sm "> <i class="	fa fa-twitter-square"></i> Follow us</button>
                            <button type="button" style="margin-left:10px;background-color:#bd081c;color:#fff;" class="btn btn-sm "> <i class="		fa fa-pinterest-p"></i> Follow us</button>
                        </div>




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
                                                    <asp:TextBox ID="txtName" runat="server" type="text" CssClass="form-control" placeholder="* Name" MaxLength="150" required></asp:TextBox>
                                                </div>

                                                <div class="input-group" style="margin-bottom: 10px;">
                                                    <span class="input-group-addon"><i class="fa fa-envelope-o"></i></span>
                                                    <asp:TextBox ID="txtEmail" runat="server" type="Email" CssClass="form-control" placeholder="* Email" TextMode="Email" MaxLength="255" required></asp:TextBox>
                                                </div>
                                                <asp:TextBox runat="server" CssClass="form-control textarea-custom" Rows="5" ID="txtComment" placeholder="* Comment" Style="margin-bottom: 10px;" TextMode="MultiLine" MaxLength="500" required></asp:TextBox>
                                                <%--<asp:Button runat="server" ID="btnClear" OnClick="btnClear_Click" Style="margin-left: 10px; color: #fff; background-color: #e30613" CssClass="btn btn-lg" Text="Clear" />--%>
                                                <%--<asp:Button runat="server" ID="btnFeedbackSubmit" OnClick="btnFeedbackSubmit_Click" Style="margin-left: 10px; color: #fff; background-color: #00a542" class="btn btn-lg" Text="Submit" />--%>
                                                <button type="button" style="margin-left:10px;color:#fff;background-color:#e30613" class="btn btn-lg" runat="server" onserverclick="btnFeedbackClear_Click"> <i class="	fa fa-close	"></i>  Clear</button>
                                                <button type="Submit" style="margin-left:10px;color:#fff;background-color:#00a542" class="btn btn-lg" runat="server" onserverclick="btnFeedbackSubmit_Click"> <i class="fa fa-cloud	"></i>  Submit</button>
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
            </div>
        </div>

                </asp:Panel>
            </div>

         


        </div>






    </div>
</asp:Content>
