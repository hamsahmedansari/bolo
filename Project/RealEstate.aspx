<%@ Page Title="" Language="C#" MasterPageFile="~/UserChild.master" AutoEventWireup="true" CodeBehind="RealEstate.aspx.cs" Inherits="Bolo.RealEstate" %>
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
            <div class="col-12">
                <div class="row">
                    <div class="plioo" style="height:70px;">

                        Real Estate

                        <button type="button" class="btn btn-lg btn-success" style="float:right;" data-toggle="modal" data-target="#myModal"> <span class="	fa fa-sellsy"></span> Submit your Ads</button>
                        <div id="myModal" class="modal fade" role="dialog" style="display: none;">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">×</button>
                                        <h4 class="modal-title text-center">Place your Ads </h4>
                                    </div>
                                    <div class="modal-body">

                                        <div class="form-group">

                                            <label style="font-size:14px;">
                                                Tittle
                                            </label>
                                            <%--<input type="text" name="name" value="" class="form-control">--%>
                                            <asp:TextBox ID="txtEstateTitle" runat="server" CssClass="form-control" type="text" required="true"></asp:TextBox> 
                                            <label style="font-size:14px;">
                                                Location
                                            </label>
                                            <%--<input type="text" name="name" value="" class="form-control">--%>
                                            <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control" type="text" required="true"></asp:TextBox> 
                                            <label style="font-size:14px;">
                                                Price
                                            </label>
                                           <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" type="text" MaxLength="15" required="true" onkeypress="if ( isNaN(this.value + String.fromCharCode(event.keyCode)))return false;"></asp:TextBox> 
                                            <label style="font-size:14px;">
                                                Select Image
                                            </label>
                                            <%--<input type="file" name="name" value="" class="">--%>
                                            <asp:FileUpload ID="FileUploadEstateImage" runat="server" type="file" required="true" CssClass="form-control" />
                                            <label style="font-size:14px;">
                                                Description
                                            </label>
                                           <%-- <textarea class="form-control" style="resize:none;">   
                                            </textarea> --%>
                                            <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" style="resize:none;" TextMode="MultiLine" required="true"></asp:TextBox>
                                        </div>

                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal" runat="server" onserverclick="btn_ClearClick">Close</button>
                                        <button type="submit" class="btn btn-success" runat="server" onserverclick="btn_submitClick">Submit</button>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>


                </div>



            </div>

            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12">

                <div class="row text-center">

                    <div class="plioo text-left" style="width: 100%;border-bottom-color:#337ab7;margin-left: 0px;">
                        Apartments On Sell <%--<button type="button" id="testing_9099090" style="float:right" class="btn btn-primary">View All</button>--%>   <%--   runat="server"  onserverclick ="btn_ViewAllApartments" --%>
                    </div>
                    <div class="text-center">
                    <asp:Panel ID="PanelApartments"  runat="server" CssClass="height_set">
                        <asp:ListView ID="lvApartments" runat="server" GroupItemCount="3" DataKeyNames="pkEstateID" OnPagePropertiesChanging="lvApartments_PagePropertiesChanging">
                            <LayoutTemplate>
                                <table cellpadding="20" runat="server" cellspacing="50" id="tblAptments" style="height:320px">
                                    <tr runat="server" id="groupPlaceholder">

                                    </tr>
                                </table>
                                <asp:DataPager runat="server" ID="DataPager" PageSize="6">
                                    <Fields>
                                        <asp:NumericPagerField ButtonCount="3"
                                             PreviousPageText="<--"
                                             NextPageText="-->" />
                                    </Fields>
                                </asp:DataPager>
                            </LayoutTemplate>
                            <GroupTemplate>
                                <span class="text-center" runat="server" id="productRow">
                                    <div runat="server" id="itemPlaceholder">

                                    </div>

                                </span>
                            </GroupTemplate>
                            <ItemTemplate>
                                <%--<td>--%>
                                <%--<div valing="top" align="center" style="width:100px;" runat="server">--%>
                                    <a href="#" rel="bookmark" class="post-thumbnail tie-appear">

                        <div class="qwdertyji custom_hover_for_Real_estate_ind" style="overflow:hidden;width: 150px;" data-toggle="modal" data-target="#myModalPost">


                            <div style="width:100%; max-width:200px;position:relative;overflow:hidden">
                                <asp:Image ID="ApartmentImage" runat="server" AlternateText='<%#Eval("varEstateType") %>' ToolTip='<%# Eval("varEstateType") %>'
                                    ImageUrl='<%#"Images/Estates/" + Eval("txtEstateImageUrl") %>' CssClass="img img-fluid custom_img_0980_test" style="width:100%; max-width:200px; height:100%; max-height:200px"/>
                                <%--<img src="../img/House-Sale.jpg" alt="Alternate Text" class="img img-fluid" style="width: 100%; max-width: 200px; height:100%;max-height:200px">--%>
                            </div>


                            <div class="row text-left container-fluid text-primary">
                                <span style="font-size:30px;text-align:left"><b><asp:Label ID="lblApartTitle" runat="server" Text='<%#Eval("varEstateType") %>'  ></asp:Label></b></span>
                                <p style="text-align:left" ;="" font-size:="" 12px;="">
                                     <b>Location</b> <span><asp:Label ID="lblApartCity" runat="server"  CssClass="Real_estate_cit" Text='<%#Eval("varEstateCity") %>' ></asp:Label></span><br>
                                    <b>Price</b> <span><asp:Label ID="lblApartPrice" runat="server" CssClass="Real_estate_pr" Text = '<%#Eval("varEstatePrice", "{0:#0.00}") %>'></asp:Label></span><br />
                                <span><asp:Label ID="lblApartLocation" CssClass="Real_estate_loc cutom_hidden_for_real_estate" runat="server" Text='<%#Eval("txtEstateLocation") %>'></asp:Label></span><br />
                                   <span><asp:Label ID="lblApartBedrooms" CssClass="Real_estate_bed cutom_hidden_for_real_estate" runat="server" Text='<%#Eval("intEstateBedrooms") %>'></asp:Label></span><br />
                                    <span><asp:Label ID="lblApartBathrooms"  CssClass="Real_estate_bat  cutom_hidden_for_real_estate" runat="server" Text='<%#Eval("intEstateBathRooms") %>'  ></asp:Label></span>
                                   <span><asp:Label ID="lblApartArea" runat="server"  CssClass="Real_estate_Area  cutom_hidden_for_real_estate" Text='<%#Eval("varEstateArea") %>' ></asp:Label></span>
                                    <span><asp:Label ID="lblApartAreaUnit" runat="server"  CssClass="Real_estate_Area_unt  cutom_hidden_for_real_estate" Text='<%#Eval("varEstateAreaUnit") %>'></asp:Label></span>
                                    <span><asp:Label ID="lblApartDesc" runat="server"  CssClass="Real_estate_dec  cutom_hidden_for_real_estate" Text='<%#Eval("txtEstateDescription") %>' ></asp:Label></span>
                                 
                                </p>
                            </div>

                        </div>


                    </a>
                                <%--</div>--%>
                            </ItemTemplate>
                        </asp:ListView>
                    </asp:Panel>
                    </div>

                </div>
               
                <div class="row text-center">

                    <div class="plioo text-left" style="width: 100%;border-bottom-color:#337ab7;margin-left: 0px;">
                        House on Sell<%--<button type="button" style="float:right" class="btn btn-primary">View All</button>--%>
                    </div>
                    
                    <asp:Panel ID="PanelHouse" runat="server" CssClass="height_set">
                        <asp:ListView ID="lvHouse" runat="server" GroupItemCount="3" DataKeyNames="pkEstateID" OnPagePropertiesChanging="lvHouse_PagePropertiesChanging" >
                            <LayoutTemplate>
                                <table cellpadding="20" runat="server" cellspacing="50" id="tblHouse" style="height:320px">
                                    <tr runat="server" id="groupPlaceholder">

                                    </tr>
                                </table>
                                <asp:DataPager runat="server" ID="DataPager" PageSize="6">
                                    
                                    <Fields>
                                        <asp:NumericPagerField ButtonCount="3"
                                             PreviousPageText="<--"
                                             NextPageText="-->" />
                                    </Fields>
                              
                                </asp:DataPager>
                            </LayoutTemplate>
                            <GroupTemplate>
                                <span runat="server" id="productRow" class="text-center">
                                    <div runat="server" id="itemPlaceholder">

                                    </div>

                                </span>
                            </GroupTemplate>
                            <ItemTemplate>
                                <%--<div valing="top" align="center" style="width:100px;" runat="server">--%>
                                    <a href="#" rel="bookmark" class="post-thumbnail tie-appear">

                        <div class="qwdertyji custom_hover_for_Real_estate_ind" style="overflow:hidden;width: 150px;" data-toggle="modal" data-target="#myModalPost">

                            <div style="width:100%; max-width:200px;position:relative;overflow:hidden">
                                <asp:Image ID="ApartmentImage" runat="server" AlternateText='<%#Eval("varEstateType") %>' ToolTip='<%# Eval("varEstateType") %>'
                                    ImageUrl='<%#"Images/Estates/" + Eval("txtEstateImageUrl") %>' CssClass="img img-fluid custom_img_0980_test" style="width:100%; max-width:200px; height:100%; max-height:200px" />
                                <%--<img src="../img/House-Sale.jpg" alt="Alternate Text" class="img img-fluid" style="width: 100%; max-width: 200px; height:100%;max-height:200px">--%>
                            </div>


                            <div class="row text-left container-fluid text-primary">
                                <span style="font-size:30px;text-align:left"><b><asp:Label ID="lblApartTitle" runat="server" Text='<%#Eval("varEstateType") %>'  ></asp:Label></b></span>
                                <p style="text-align:left" ;="" font-size:="" 12px;="">
                                    <b>Location</b> <span><asp:Label ID="lblApartCity" runat="server"  CssClass="Real_estate_cit" Text='<%#Eval("varEstateCity") %>' ></asp:Label></span><br>
                                    <b>Price</b> <span><asp:Label ID="lblApartPrice" runat="server" CssClass="Real_estate_pr" Text = '<%#Eval("varEstatePrice", "{0:#0.00}") %>'></asp:Label></span><br />
                                <span><asp:Label ID="lblApartLocation" CssClass="Real_estate_loc cutom_hidden_for_real_estate" runat="server" Text='<%#Eval("txtEstateLocation") %>'></asp:Label></span><br />
                                   <span><asp:Label ID="lblApartBedrooms" CssClass="Real_estate_bed cutom_hidden_for_real_estate" runat="server" Text='<%#Eval("intEstateBedrooms") %>'></asp:Label></span><br />
                                    <span><asp:Label ID="lblApartBathrooms"  CssClass="Real_estate_bat  cutom_hidden_for_real_estate" runat="server" Text='<%#Eval("intEstateBathRooms") %>'  ></asp:Label></span>
                                   <span><asp:Label ID="lblApartArea" runat="server"  CssClass="Real_estate_Area  cutom_hidden_for_real_estate" Text='<%#Eval("varEstateArea") %>' ></asp:Label></span>
                                    <span><asp:Label ID="lblApartAreaUnit" runat="server"  CssClass="Real_estate_Area_unt  cutom_hidden_for_real_estate" Text='<%#Eval("varEstateAreaUnit") %>'></asp:Label></span>
                                    <span><asp:Label ID="lblApartDesc" runat="server"  CssClass="Real_estate_dec  cutom_hidden_for_real_estate" Text='<%#Eval("txtEstateDescription") %>' ></asp:Label></span>
                                 </p>
                            </div>

                        </div>


                    </a>
                                <%--</div>--%>
                            </ItemTemplate>
                        </asp:ListView>
                    </asp:Panel>
                  
                </div>

                <div class="row text-center">

                    <div class="plioo text-left" style="width: 100%;border-bottom-color:#337ab7;margin-left: 0px;">
                        Plot's On Sell
                       <%-- <button type="button" style="float:right" class="btn btn-primary">View All</button>--%>
                    </div>
                    <asp:Panel ID="PanelPlot" runat="server" CssClass="height_set">
                        <asp:ListView ID="lvPlot" runat="server" GroupItemCount="3" DataKeyNames="pkEstateID" OnPagePropertiesChanging="lvPlot_PagePropertiesChanging" >
                            <LayoutTemplate>
                                <table cellpadding="20" runat="server" cellspacing="50" id="tblPlot" style="height:320px">
                                    <tr runat="server" id="groupPlaceholder">

                                    </tr>
                                </table>
                                <asp:DataPager runat="server" ID="DataPager" PageSize="6">
                                     <Fields>
                                        <asp:NumericPagerField ButtonCount="3"
                                             PreviousPageText="<--"
                                             NextPageText="-->" />
                                    </Fields>
                                </asp:DataPager>
                            </LayoutTemplate>
                            <GroupTemplate>
                                <span runat="server" id="productRow" class="text-center">
                                    <div runat="server" id="itemPlaceholder">

                                    </div>

                                </span>
                            </GroupTemplate>
                            <ItemTemplate>
                                <%--<div valing="top" align="center" style="width:100px;" runat="server">--%>
                                    <a href="#">

                        <div class="qwdertyji custom_hover_for_Real_estate_ind" style="overflow:hidden;width: 150px;" data-toggle="modal" data-target="#myModalPost">


                            <div style="width:100%; max-width:200px;position:relative;overflow:hidden">
                                <asp:Image ID="ApartmentImage" runat="server" AlternateText='<%#Eval("varEstateType") %>' ToolTip='<%# Eval("varEstateType") %>'
                                    ImageUrl='<%#"Images/Estates/" + Eval("txtEstateImageUrl") %>' CssClass="img img-fluid custom_img_0980_test" style="width:100%; max-width:200px; height:100%; max-height:200px" />
                                <%--<img src="../img/House-Sale.jpg" alt="Alternate Text" class="img img-fluid" style="width: 100%; max-width: 200px; height:100%;max-height:200px">--%>
                            </div>


                            <div class="row text-left container-fluid text-primary">
                                <span style="font-size:30px;text-align:left"><b><asp:Label ID="lblApartTitle" runat="server" Text='<%#Eval("varEstateType") %>'  ></asp:Label></b></span>
                               <p style="text-align:left" ;="" font-size:="" 12px;="">
                                    <b>Location</b> <span><asp:Label ID="lblApartCity" runat="server"  CssClass="Real_estate_cit" Text='<%#Eval("varEstateCity") %>' ></asp:Label></span><br>
                                    <b>Price</b> <span><asp:Label ID="lblApartPrice" runat="server" CssClass="Real_estate_pr" Text = '<%#Eval("varEstatePrice", "{0:#0.00}") %>'></asp:Label></span><br />
                                <span><asp:Label ID="lblApartLocation" CssClass="Real_estate_loc cutom_hidden_for_real_estate" runat="server" Text='<%#Eval("txtEstateLocation") %>'></asp:Label></span><br />
                                   <span><asp:Label ID="lblApartBedrooms" CssClass="Real_estate_bed cutom_hidden_for_real_estate" runat="server" Text='<%#Eval("intEstateBedrooms") %>'></asp:Label></span><br />
                                    <span><asp:Label ID="lblApartBathrooms"  CssClass="Real_estate_bat  cutom_hidden_for_real_estate" runat="server" Text='<%#Eval("intEstateBathRooms") %>'  ></asp:Label></span>
                                   <span><asp:Label ID="lblApartArea" runat="server"  CssClass="Real_estate_Area  cutom_hidden_for_real_estate" Text='<%#Eval("varEstateArea") %>' ></asp:Label></span>
                                    <span><asp:Label ID="lblApartAreaUnit" runat="server"  CssClass="Real_estate_Area_unt  cutom_hidden_for_real_estate" Text='<%#Eval("varEstateAreaUnit") %>'></asp:Label></span>
                                    <span><asp:Label ID="lblApartDesc" runat="server"  CssClass="Real_estate_dec  cutom_hidden_for_real_estate" Text='<%#Eval("txtEstateDescription") %>' ></asp:Label></span>
                                 </p>
                            </div>

                        </div>


                    </a>
                                <%--</div>--%>
                            </ItemTemplate>
                        </asp:ListView>
                    </asp:Panel>

                 
                </div>

            </div>
                         

            <div id="myModalPost" class="modal fade" tabindex="-1" role="dialog">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                       <%-- <button type="button" class="close" data-dismiss="modal">×</button>--%>
                                        <h4 class="modal-title text-center">Details</h4>
                                    </div>
                                 <div class="text-center">
                                  <h3 id="asdbnasmnd">
                                        
                                    </h3>
                                </div>
                                <div>

                                </div>
                                <div class="modal-body">
                                    <img src="#" class="img-responsive ramdom_img_jobs" />
                                <hr />

                                    <div class="contanier-fluid">
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <label>
                                                Location
                                            </label><br />
                                            <label class="set_real_location text-center" style="font-weight:lighter">
                                                Location
                                            </label>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <label>
                                                City
                                            </label><br />
                                            <label class="set_real_city text-center" style="font-weight:lighter">
                                                Location
                                            </label>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <label>
                                                Price
                                            </label><br />
                                            <label class="set_real_Price text-center" style="font-weight:lighter">
                                                Location
                                            </label>

                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <label>
                                                Bedroom
                                            </label><br />
                                            <label class="set_real_Bedroom text-center" style="font-weight:lighter">
                                                Location
                                            </label>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <label>
                                                Bedroom
                                            </label><br />
                                            <label class="set_real_Bedroom text-center" style="font-weight:lighter">
                                                Location
                                            </label>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <label>
                                                Bathroom
                                            </label><br />
                                            <label class="set_real_Bathroom text-center" style="font-weight:lighter">
                                                Bathroom
                                            </label>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <label>
                                                Area
                                            </label><br />
                                            <label class="set_real_Area text-center" style="font-weight:lighter">
                                                Location
                                            </label>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <label>
                                                Area Unit
                                            </label><br />
                                            <label class="set_real_area_unit text-center" style="font-weight:lighter">
                                                Location
                                            </label>
                                        </div>
                                        <hr />
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <label>
                                                Description
                                            </label><br />
                                            <label class="set_real_dec text-center" style="font-weight:lighter">
                                                Location
                                            </label>
                                        </div>
                                    </div>
                                </div>                
                                <hr />
                                    <div class="modal-footer " style="border:0px !important;">
<div class="text-center">
                                            <button type="button" class="btn btn-default" data-dismiss="modal" runat="server" onserverclick="btn_ClearClick">Close</button>

</div>                                       
                                    </div>
                            </div>
                        </div>
                    </div>
        </div>

    </div>
</asp:Content>
