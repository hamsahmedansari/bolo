<%@ Page Title="" Language="C#" MasterPageFile="~/UserChild.master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="Bolo.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="OtherContent" runat="server">
    <div class="col-xl-6 col-md-6 col-sm-10 col-xs-12 col-10">

        <div class="col-12 text-center">


        </div>
        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="plioo">

                        Top Student News


                    </div>
                </div>

            </div>

            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12">
                <div class="row text-center">              
                    <asp:Panel ID="PanelStudent" runat="server">
                        <asp:ListView ID="lvStudentPreview" runat="server" GroupItemCount="3" DataKeyNames="pkStudentPostID" OnPagePropertiesChanging="lvStudentPreview_PagePropertiesChanging" >
                            <LayoutTemplate>
                                <table cellpadding="20" runat="server" cellspacing="50" id="tblAdms" style="height:320px;width:100%">
                                    <tr runat="server" id="groupPlaceholder">

                                    </tr>
                                </table>
                                
                                <asp:DataPager runat="server" ID="DataPager"
                                    PageSize="12">
                                    <Fields>
                                        <asp:NumericPagerField ButtonCount="10"
                                            PreviousPageText="Pre"
                                            NextPageText="Next" />
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
                                        <asp:Image ID="PostImage" runat="server" AlternateText='<%#Bind("varLocation") %>' ToolTip='<%#Eval("varLocation")%>'
                                         ImageUrl='<%#"/Images/Student/" + Eval("txtStudentPostImageUrl") %>' class="img img-fluid custom_img_90909090909090" data-toggle="modal" data-target="#myModal" style=" width: 100%; max-width: 200px;  height:100%;max-height:200px"/>
                                </div>
                                            </div>
                                    
                                    </a>
                                    <br />
                                </td>
                               
                            </ItemTemplate>
                        </asp:ListView>
                    </asp:Panel>
  <%--                  <a href="#">

                        <div class="qwdertyji" style="overflow:hidden;width: 150px;margin-top:10px; border:2px solid #ccc;">


                            <div style="width:100%; max-width:200px;position:relative;overflow:hidden">

                                <img src="../img/House-Sale.jpg" alt="Alternate Text" class="img img-fluid custom_img_90909090909090" data-toggle="modal" data-target="#myModal" style="
    width: 100%;
    max-width: 200px;
    height:100%;max-height:200px
">
                            </div>
                        </div>
                    </a>

                    <a href="#">

                        <div class="qwdertyji" style="overflow:hidden;width: 150px;margin-top:10px; border:2px solid #ccc;">


                            <div style="width:100%; max-width:200px;position:relative;overflow:hidden">

                                <img src="../img/House-Sale.jpg" alt="Alternate Text" class="img img-fluid custom_img_90909090909090" data-toggle="modal" data-target="#myModal" style="
    width: 100%;
    max-width: 200px;
    height:100%;max-height:200px
">
                            </div>
                        </div>
                    </a>

                    <a href="#">

                        <div class="qwdertyji" style="overflow:hidden;width: 150px;margin-top:10px; border:2px solid #ccc;">


                            <div style="width:100%; max-width:200px;position:relative;overflow:hidden">

                                <img src="../img/House-Sale.jpg" alt="Alternate Text" class="img img-fluid custom_img_90909090909090" data-toggle="modal" data-target="#myModal" style="
    width: 100%;
    max-width: 200px;
    height:100%;max-height:200px
">
                            </div>
                        </div>
                    </a>

                    <a href="#">

                        <div class="qwdertyji" style="overflow:hidden;width: 150px;margin-top:10px; border:2px solid #ccc;">


                            <div style="width:100%; max-width:200px;position:relative;overflow:hidden">

                                <img src="../img/House-Sale.jpg" alt="Alternate Text" class="img img-fluid custom_img_90909090909090" data-toggle="modal" data-target="#myModal" style="
    width: 100%;
    max-width: 200px;
    height:100%;max-height:200px
">
                            </div>
                        </div>
                    </a>

                    <a href="#">

                        <div class="qwdertyji" style="overflow:hidden;width: 150px;margin-top:10px; border:2px solid #ccc;">


                            <div style="width:100%; max-width:200px;position:relative;overflow:hidden">

                                <img src="../img/House-Sale.jpg" alt="Alternate Text" class="img img-fluid custom_img_90909090909090" data-toggle="modal" data-target="#myModal" style="
    width: 100%;
    max-width: 200px;
    height:100%;max-height:200px
">
                            </div>
                        </div>
                    </a>

                    <a href="#">

                        <div class="qwdertyji" style="overflow:hidden;width: 150px;margin-top:10px; border:2px solid #ccc;">


                            <div style="width:100%; max-width:200px;position:relative;overflow:hidden">

                                <img src="../img/House-Sale.jpg" alt="Alternate Text" class="img img-fluid custom_img_90909090909090" data-toggle="modal" data-target="#myModal" style="
    width: 100%;
    max-width: 200px;
    height:100%;max-height:200px
">
                            </div>
                        </div>
                    </a>

                    <a href="#">

                        <div class="qwdertyji" style="overflow:hidden;width: 150px;margin-top:10px; border:2px solid #ccc;">


                            <div style="width:100%; max-width:200px;position:relative;overflow:hidden">

                                <img src="../img/House-Sale.jpg" alt="Alternate Text" class="img img-fluid custom_img_90909090909090" data-toggle="modal" data-target="#myModal" style="
    width: 100%;
    max-width: 200px;
    height:100%;max-height:200px
">
                            </div>
                        </div>
                    </a>

                    <a href="#">

                        <div class="qwdertyji" style="overflow:hidden;width: 150px;margin-top:10px; border:2px solid #ccc;">


                            <div style="width:100%; max-width:200px;position:relative;overflow:hidden">

                                <img src="../img/House-Sale.jpg" alt="Alternate Text" class="img img-fluid custom_img_90909090909090" data-toggle="modal" data-target="#myModal" style="
    width: 100%;
    max-width: 200px;
    height:100%;max-height:200px
">
                            </div>
                        </div>
                    </a>

                    <a href="#">

                        <div class="qwdertyji" style="overflow:hidden;width: 150px;margin-top:10px; border:2px solid #ccc;">


                            <div style="width:100%; max-width:200px;position:relative;overflow:hidden">

                                <img src="../img/House-Sale.jpg" alt="Alternate Text" class="img img-fluid custom_img_90909090909090" data-toggle="modal" data-target="#myModal" style="
    width: 100%;
    max-width: 200px;
    height:100%;max-height:200px
">
                            </div>

                        </div>
                    </a>

                    <a href="#">

                        <div class="qwdertyji" style="overflow:hidden;width: 150px;margin-top:10px; border:2px solid #ccc;">


                            <div style="width:100%; max-width:200px;position:relative;overflow:hidden">

                                <img src="../img/a27.jpg" alt="Alternate Text" class="img img-fluid custom_img_90909090909090" data-toggle="modal" data-target="#myModal" style="
    width: 100%;
    max-width: 200px;
    height:100%;max-height:200px
">
                            </div>

                        </div>
                    </a>--%>

                 <div id="myModal" class="modal fade" tabindex="-1" role="dialog">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
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

   

</asp:Content>
