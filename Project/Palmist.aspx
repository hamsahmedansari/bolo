<%@ Page Title="" Language="C#" MasterPageFile="~/UserChild.master" AutoEventWireup="true" CodeBehind="Palmist.aspx.cs" Inherits="Bolo.Palmist" %>

<asp:Content ID="head" runat="server" ContentPlaceHolderID="headchild">

    <meta  property="og:title" content="Palmist Online"/>
    <meta property='og:type' content='article' />
    <meta  property="og:image" content="https://bolo.com.pk/Images/News/NEWS155444021428.jpg"/>
</asp:Content>
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
    
    <asp:Panel runat="server" ID="PanelHath" Visible="true">
        <div class="alert_outer_box" style="position:fixed;width:100%;height:100%;top:0px;z-index:999;">
        <div style="position:absolute;width:100%;height:100%;background: rgba(0, 0, 0, 0.53);">
            <div class="alert  alert-dismissable" style="margin: auto;margin-top:  auto;margin-bottom:  auto;top: 44%;POSITION:  fixed;width:  100%;font-size:  30px;text-align:  center;border-radius: 0px;padding:  30px;">
                <img src="img/hath.jpg" class="img img-responsive"  style="width:100%"/>
            </div>
        </div>
    </div>
    </asp:Panel>
     <div class="col-xl-6 col-md-6 col-sm-10 col-xs-12 col-10">

        <div class="col-12 text-center">


        </div>

        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="plioo" style="">
                       Palmist
                    </div>
                </div>
            </div>           

            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12" style="
    border: 1px solid #ccc;
">
                <div class="row text-center">


                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12 " style="background-color:#5cb85c;color:#fff;">

                        <div class="row container-fluid">

                            <h3>

                                Palmist Online

                            </h3>
                        </div>

                        <p style="text-align:justify;padding:20px;">

                            Islam Mai Palm Reading Sakhti se Mana/Mamnnon hai According To Iclamic Teachings Palm Reading Is Stricly Forbidden in Islam

                        </p>


                    </div>



                </div>

            </div>
            <div class="row container-fluid">

                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12 bg-primary" style="margin-top:20px;">

                    <div class="row container-fluid text-center">

                        <h3>

                            Do you Know About Your Future........???


                        </h3>

                    </div>

                    <div style="margin-bottom:20px;">
                        <div class="form-group">
                            <label>Full Name</label>
                           <%-- <input class="form-control" type="text">--%>
                            <asp:TextBox ID="txtFullName" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label> Date Of Birth</label>
                            <input class="form-control" type="date" id="dtDOB" runat="server" min="2017-01-02" max="3000-01-02"/>
                        </div>
                        <div class="form-group">
                            <label>Father Name</label>
                           <%-- <input class="form-control" type="text">--%>
                        <asp:TextBox ID="txtFatherName" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Father Date Of Birth</label>
                            <input class="form-control" type="date" id="dtFatherDob" runat="server" min="2017-01-02" max="3000-01-02"/>
                        </div>

                        <div class="form-group">
                            <label>Mother Name</label>
                           <%-- <input class="form-control" type="text">--%>
                            <asp:TextBox ID="txtMotherName" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Mother Date Of Birth</label>
                            <input class="form-control" type="date" id="dtMotherDob" runat="server" min="2017-01-02" max="3000-01-02" />
                        </div>
                        <div class="form-group">
                            <label> Email</label>
                           <%-- <input type="email" class="form-control">--%>
                              <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="* Email is not in Correct format" ControlToValidate="txtEmail" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">
                            <label> Contact no</label>
                          <%--  <input type="number" class="form-control">--%>
                            <asp:TextBox ID="txtContactNo" runat="server" MaxLength="15" Type="text" CssClass="form-control"  onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode)))return false;"></asp:TextBox>
                            <asp:Label runat="server" ID="lblInvalidContact" Visible="false" style="color:#8B0000!important">Please Enter a Valid Contact Number</asp:Label>
                        </div>

                        <div class="form-group">
                            <label> Left Hand <sup>Clear image</sup></label>
                           <%-- <input type="file" class="form-control">--%>
                            <asp:FileUpload ID="FileUploadLeftHand" runat="server" CssClass="form-control" accept=".png,.jpg,.jpeg,.gif" />
                            <asp:RegularExpressionValidator ID="RegExValFileUploadFileTypeLeft" runat="server"
                        ControlToValidate="FileUploadLeftHand" ForeColor="Red"
                        ErrorMessage="Only .jpg,.png,.jpeg,.gif Files are allowed" Font-Bold="True"
                        Font-Size="Medium"
                        ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                        </div>

                        <div class="form-group">
                            <label> Right Hand <sup>Clear image</sup></label>
                           <%-- <input type="file" class="form-control">--%>
                            <asp:FileUpload ID="FileUploadRightHand" runat="server" CssClass="form-control" accept=".png,.jpg,.jpeg,.gif" />
                             <asp:RegularExpressionValidator ID="RegExValFileUploadFileTypeRight" runat="server"
                        ControlToValidate="FileUploadRightHand" ForeColor="Red"
                        ErrorMessage="Only .jpg,.png,.jpeg,.gif Files are allowed" Font-Bold="True"
                        Font-Size="Medium"
                        ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                        </div>
                        <div style="text-align:center;">
                            <h6>
                                We Replay Within 24 hours
                            </h6>

                            <button type="button" class="btn btn-danger btn-lg text-center" runat="server" onserverclick="btnClear_Click"> <span class="fa fa-close	"></span> Clear</button>
                            <button type="submit" class="btn btn-success btn-lg text-center" runat="server" onserverclick="btnSubmit_Click"><span class="fa fa-male"></span> Submit</button>

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

            <div class="row " style="      margin-left: 0.2%;overflow:hidden;width:100%;margin-top:10px;">

                <asp:Panel ID="pnSocialDetail" runat="server" Visible="true">
                <div class="row" style="width: 99.5%;    margin-left: 0.2%;">

                    <div class="" style="border:0px;margin-left: 0px;padding: 0px;">

                        <div class="plioo" style="width: 100%;border-bottom-color:#337ab7;margin-left: 0px;">
                            Comment
                        </div>

                         </div>

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
               
                <div class="row container-fluid">

                    <p runat="server" id="printNumberOfComments" style="font-size:30px;padding:5px;">
                        1 Comment
                    </p>

                </div>            

                <div class="row">

                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12" style="padding:50px;">

                        <div class="form-group">
                            <div class="text-center">
                                <label>Submit a Comment</label>
                                <p style="font-size:14px" class="text-dark">
                                    Your email address will not be published. Required fields are marked *
                                </p>

                                <div class="input-group" style="margin-bottom:10px;">
                                    <span class="input-group-addon"><i class="fa fa-user-o"></i></span>
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name" MaxLength="150" required></asp:TextBox>
                                    <%--<input id="email" type="text" class="form-control" name="email" placeholder="Name">--%>
                                </div>

                                <div class="input-group" style="margin-bottom:10px;">
                                    <span class="input-group-addon"><i class="fa fa-envelope-o"></i></span>
                                    <asp:TextBox ID="txtEmailComment"  runat="server" CssClass="form-control" Type="Email" placeholder="Email" TextMode="Email" MaxLength="255" required></asp:TextBox>
                                    <%--<input id="email" type="text" class="form-control" name="email" placeholder="Email">--%>
                                </div>

                                <!--<div class="input-group" style="margin-bottom:10px;">
                                    <span class="input-group-addon"><i class="">Website</i></span>
                                    <input id="password" type="password" class="form-control" name="password" placeholder="Website">
                                </div>-->
                                <asp:TextBox runat="server" CssClass="form-control textarea-custom" Rows="5" ID="txtComment" placeholder="Comment" style="margin-bottom:10px;" TextMode="MultiLine" MaxLength="500" required></asp:TextBox>
                                <%--<textarea class="form-control textarea-custom" placeholder="Comment" rows="5" id="comment" style="margin-bottom:10px;"></textarea>--%>
                                <button type="button" style="margin-left:10px;color:#fff;background-color:#e30613" class="btn btn-lg" runat="server" onserverclick="btnFeedbackClear_Click"> <i class="	fa fa-close	"></i>  Clear</button>
                                <button type="Submit" style="margin-left:10px;color:#fff;background-color:#00a542" class="btn btn-lg" runat="server" onserverclick="btnFeedbackSubmit_Click"> <i class="		fa fa-cloud	"></i>  Submit</button>


                            </div>
                        </div>

                    </div>

                </div>
               
                    <asp:ListView ID="lvFeedback" runat="server" DataKeyNames="pkFeedbackID">
                        <LayoutTemplate>
                        <table cellpadding="2" runat="server" id="tblEmployees" border="0" style="width:100%">
                            <tr runat ="server" id="itemPlaceholder">

                            </tr>
                        </table>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <tr runat="server">
                                <td>
                                    <div class="row container-fluid" style="border-bottom:1px solid #ccc;">
                                        <br />
                                        <br />
                                            <div class="col-xl-1 col-lg-1 col-md-1 col-sm-1 col-xs-2 col-2 text-right">
                                                <img src="img/31144ff4b7b475d719caaeeabfc2876e.png" class="img img-fluid" alt="Alternate Text" style="margin-left:2%;width:100%; max-width:70px; min-width:45px"/>

                                            </div>
                                        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-8 col-8" style="margin-left:10px;">
                                            <div class="row container-fluid">
                                                <b>
                                                    <asp:Label ID="lblName" runat="server"><%#Eval("varName") %></asp:Label>
                                                </b>
                                                <span style="font-size:15px; margin-right:10px;" >
                                                    <asp:Label ID="lblDateAdded" runat="server">on<%#Eval("dteDateAdded", "{0:MM dd, yyyy hh:mm tt}") %></asp:Label>
                                                </span>

                                            </div>
                                            <div class="row">
                                                <p runat="server" id="pFeedback" style="font-size:18px; padding:16px;" class="text-dark">
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
</asp:Content>
