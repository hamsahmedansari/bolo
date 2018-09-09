<%@ Page Title="" Language="C#" MasterPageFile="~/UserChild.master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Bolo.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="OtherContent" runat="server">
    <script src="Scripts/BoloTv.js">
    </script>
   
    <div style="margin-bottom: 10px;" class="col-xl-6 col-md-6 col-sm-10 col-xs-12 col-10">

        <div class="embed-responsive embed-responsive-16by9">
            <iframe  id="iFrame" class="cus_iframe" runat="server"  name="iFrame" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen=""></iframe>
        </div>
        <br />
        <div class="row container-fluid">
            <div class="row container-fluid">
                <div class="col-12" style="padding: 10px">
                    <div class="row container-fluid" style="border-bottom: 1px solid #ccc; padding-bottom: 7px;">
                        <img src="#" runat="server" class="img img-fluid cus_img" id="infoImage" alt="" style="display: inline-block; width: 100%; max-width: 40px;">
                        <p style="display: inline-block; font-size: 20px;" id="infoHeading" class="ChannelNameSetter">
                             News
                        </p>
                    </div>
                    <div class="row container-fluid">
                        <p style="padding: 10px;font-size:25px;font-weight: bold; " id="infoText">Live Strem</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row text-center" style="margin-bottom: 10px; margin-top: 10px;">
            <asp:Panel ID="PanelLiveTv" runat="server">
                <div class="ResultsMessage">
                    <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                </div>
                <div class="text-center">
                    <asp:ListView runat="server" ID="lvLiveTvListPreview" GroupItemCount="3" DataKeyNames="pkLiveTvID">
                        <LayoutTemplate>
                            <table cellpadding="20" runat="server" cellspacing="50"
                                id="tblProducts" style="margin-left: auto; margin-right: auto;" class="centerAt550">
                                <tr runat="server" id="groupPlaceholder">
                                </tr>
                            </table>
                            <%-- <asp:DataPager runat="server" ID="DataPager" PageSize="15">
                                       <Fields>
                                           <asp:NumericPagerField ButtonCount="10" PreviousPageText="Pre"
                                                NextPageText="Next" />
                                       </Fields>
                                   </asp:DataPager>--%>
                        </LayoutTemplate>
                        <GroupTemplate>
                            <span class="text-center" runat="server" id="productRow">
                                <div runat="server" id="itemPlaceHolder">
                                </div>
                            </span>
                        </GroupTemplate>
                        <ItemTemplate>
                            <div class="col-xl-3 col-md-3 col-sm-3 col-xs-4 col-3">
                                <%-- <a href="<%#"News.aspx?ID=" + Eval("pkLiveTvID") %>">--%>
                                <a href='#'>
                                
                                          <div class="SetTvChannel">
                                            <asp:Image runat="server" ID="ProductImage" src='<%#"Images/LiveTv/" + Eval("txtTvImage") %>' ToolTip='<%#Eval("varTvName") %>' alt='<%#Eval("txtEmbedLink") %>' CssClass="news_icon setImage img img-fluid"/>
                                            <span> <asp:Label ID="ChannelName" runat="server" style="display:none" Text='<%#Eval("varTvName") %>' CssClass="ChanelName"></asp:Label></span>
                                        </div>
                                   
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </asp:Panel>

         
        </div>

        <div class="row" style="margin-bottom: 10px;margin-top:30px;">
            <div class="col-12 text-center hidden-sm hidden-xs">
                <script data-cfasync=false src="//s.ato.mx/p.js#id=4078838&size=300x250"></script>
            </div>
        </div>

    </div>
</asp:Content>
