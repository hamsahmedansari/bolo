<%@ Page Title="" Language="C#" MasterPageFile="~/UserChild.master" AutoEventWireup="true" CodeBehind="Poetry.aspx.cs" Inherits="Bolo.Poetry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="OtherContent" runat="server">
    <div class="col-xl-6 col-md-6 col-sm-10 col-xs-12 col-10">

        <div class="col-12 text-center">


        </div>
        <div class="row">
            <div class="col-12">
                <div class="row">
                    <div class="plioo" style="    height: 110px;">

                        Shair o shairy
                        <asp:Button ID="btnViewAll" Style="float:right;height:30px;" UseSubmitBehavior="false" Text="View All" class="btn btn-primary" runat="server" OnClick="btnViewAll_Click" Visible="false" />
                        <div class="form-group" style="margin-top:20px">
                            <asp:Panel ID="PanelSearch" runat="server" DefaultButton="kk">
                                <%--<asp:UpdatePanel ID="UpdatePnl" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>--%>
                            <div class="input-group" style="width:50%; float:right;">
                               <asp:TextBox ID="txtSearch" type="text" CssClass="form-control" placeholder="Search" name="txtSearch" runat="server"/>
                                <%--<input id="txtSearch" type="text" class="form-control" placeholder="Search" name="txtSearch" runat="server" required />--%>
                                <div class="input-group-btn">
                        <asp:Button ID="kk" Text="Search" class="form-control" runat="server" OnClick="btnSearch_Click" /> <%----%>
                    </div>
                            </div>
                            <asp:DropDownList ID="DropDownListCategory" runat="server" CssClass="form-control" style="width:50%; float:right;">
                                <asp:ListItem Value="-1" Text="--View ALL--" ></asp:ListItem>
                                <asp:ListItem >Sad</asp:ListItem>
                                <asp:ListItem>Romantic</asp:ListItem>
                            </asp:DropDownList>
                                        <%--</ContentTemplate>
                                    </asp:UpdatePanel>--%>
                            </asp:Panel>

                        </div>


                    </div>


                </div>



            </div>




        </div>

        <div class="row" style="    width: 100%;    margin-left: 0.2%;">

            <div class="plioo" style="border:0px;box-shadow:0px 1px 2px #A5A3A3;margin-left: 0px;padding: 0px;">

                <div class="plioo" style="width: 100%;border-bottom-color:#337ab7;margin-left: 0px;">
                   Top  Shair o shairy
                    <p style="float:right;color:#ccc;">                       
                    </p>
                </div>
                
                <div class="row" style="    width: 100%;    margin-left: 0.2%;overflow:hidden;">

                    <asp:Panel ID="PanelPoetry" runat="server">
                        <asp:ListView ID="lvPoetries" runat="server" GroupItemCount="1" DataKeyNames="pkPoetryID" OnPagePropertiesChanging="lvPoetries_PagePropertiesChanging">
                            <LayoutTemplate>
                                <table cellpadding="20" runat="server" cellspacing="50" id="tblProducts"
                                    style="margin-left:auto; margin-right:auto" class="centerAt550">
                                    <tr runat="server" id="groupPlaceholder">

                                    </tr>
                                </table>
                                <asp:DataPager runat="server" ID="DataPager" PageSize="12">
                                    <Fields>
                                        <asp:NumericPagerField ButtonCount="10" PreviousPageText="Pre" NextPageText="Next"/>
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
                                 <div class="row container-fluid" style="border-bottom:1px solid #ccc;margin-top:20px;">


                        <div class="col-xl-1 col-lg-1 col-md-1 col-sm-2 col-xs-2 col-2 text-right">
                            <img src="../img/2123123123123123.png" class="img img-fluid" alt="Alternate Text" style="margin-left:2%;width:100%; max-width:70px;min-width:45px;"/>

                        </div>
                        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-8 col-8" style="margin-left:10px; text-align:left;">
                            <div class="row container-fluid">

                                <b>
                                    <%--Tittle of Shair o shairy--%>
                                    <asp:Label ID="lbltitle" runat="server" Text='<%#Eval("varPoetName")%>'></asp:Label>
                                </b>
                                <span style="font-size:15px;">
                                    <%--on 23rd October 2017 at 11:36 am--%>
                                     <%--<asp:Label ID="Label1" runat="server" Text='<%#Eval("varPoetName")%>'></asp:Label>--%>
                                </span>
                            </div>
                            <div class="row" style="margin-left:5px;">
                                <asp:Image runat="server" ID="ProductImage" src='<%#"Images/Poetries/" + Eval("txtPoetryImage") %>' alt="Alternate Text" class="img img-fluid img-reponsive" style="width:100%;max-width:500px;"/>
                                <%--<p id="pDescription" style="font-size:12px;padding: 16px;" class="text-dark">
                                    Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
                                </p>--%>
                            </div>
                            <div class="row">

                                <p id="pDescription" style="font-size:12px;padding: 16px;" class="text-dark">
                                    <asp:Label ID="txtDescription" runat="server" Text='<%#Eval("txtDescription")%>'></asp:Label>
                                    <%--Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.--%>
                                </p>
                            </div>
                        </div>

                    </div>
                            </ItemTemplate>
                        </asp:ListView>

                    </asp:Panel>
                    </div>
                   
                <%--
                    <div class="row container-fluid" style="border-bottom:1px solid #ccc;margin-top:20px;">


                        <div class="col-xl-1 col-lg-1 col-md-1 col-sm-2 col-xs-2 col-2 text-right">
                            <img src="../img/2123123123123123.png" class="img img-fluid" alt="Alternate Text" style="margin-left:2%;width:100%; max-width:70px;min-width:45px;" />

                        </div>
                        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-8 col-8" style="margin-left:10px;">
                            <div class="row container-fluid">

                                <b>
                                    Tittle of Shair o shairy
                                </b>
                                <span style="font-size:15px;">
                                    on 23rd October 2017 at 11:36 am
                                </span>


                            </div>
                            <div class="row">

                                <p style="font-size:12px;padding: 16px;" class="text-dark">
                                    Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
                                </p>

                            </div>
                        </div>

                    </div>
                    <div class="row container-fluid" style="border-bottom:1px solid #ccc;margin-top:20px;">


    <div class="col-xl-1 col-lg-1 col-md-1 col-sm-2 col-xs-2 col-2 text-right">
        <img src="../img/2123123123123123.png" class="img img-fluid" alt="Alternate Text" style="margin-left:2%;width:100%; max-width:70px;min-width:45px;">

    </div>
    <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-8 col-8" style="margin-left:10px;">
        <div class="row container-fluid">

            <b>
                Tittle of Shair o shairy
            </b>
            <span style="font-size:15px;">
                on 23rd October 2017 at 11:36 am
            </span>


        </div>
        <div class="row">

            <p style="font-size:12px;padding: 16px;" class="text-dark">
                Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
            </p>

        </div>
    </div>

    
</div><div class="row container-fluid" style="border-bottom:1px solid #ccc;margin-top:20px;">


    <div class="col-xl-1 col-lg-1 col-md-1 col-sm-2 col-xs-2 col-2 text-right">
        <img src="../img/2123123123123123.png" class="img img-fluid" alt="Alternate Text" style="margin-left:2%;width:100%; max-width:70px;min-width:45px;" />

    </div>
    <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-8 col-8" style="margin-left:10px;">
        <div class="row container-fluid">

            <b>
                Tittle of Shair o shairy
            </b>
            <span style="font-size:15px;">
                on 23rd October 2017 at 11:36 am
            </span>


        </div>
        <div class="row">

            <p style="font-size:12px;padding: 16px;" class="text-dark">
                Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
            </p>

        </div>
    </div>

   
</div><div class="row container-fluid" style="border-bottom:1px solid #ccc;margin-top:20px;">


    <div class="col-xl-1 col-lg-1 col-md-1 col-sm-2 col-xs-2 col-2 text-right">
        <img src="../img/2123123123123123.png" class="img img-fluid" alt="Alternate Text" style="margin-left:2%;width:100%; max-width:70px;min-width:45px;">

    </div>
    <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-8 col-8" style="margin-left:10px;">
        <div class="row container-fluid">

            <b>
                Tittle of Shair o shairy
            </b>
            <span style="font-size:15px;">
                on 23rd October 2017 at 11:36 am
            </span>


        </div>
        <div class="row">

            <p style="font-size:12px;padding: 16px;" class="text-dark">
                Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
            </p>

        </div>
    </div>

    
</div>
                    <div class="row container-fluid" style="border-bottom:1px solid #ccc;margin-top:20px;">


    <div class="col-xl-1 col-lg-1 col-md-1 col-sm-2 col-xs-2 col-2 text-right">
        <img src="../img/2123123123123123.png" class="img img-fluid" alt="Alternate Text" style="margin-left:2%;width:100%; max-width:70px;min-width:45px;">

    </div>
    <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-8 col-8" style="margin-left:10px;">
        <div class="row container-fluid">

            <b>
                Tittle of Shair o shairy
            </b>
            <span style="font-size:15px;">
                on 23rd October 2017 at 11:36 am
            </span>


        </div>
        <div class="row">

            <p style="font-size:12px;padding: 16px;" class="text-dark">
                Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
            </p>

        </div>
    </div>

    
</div><div class="row container-fluid" style="border-bottom:1px solid #ccc;margin-top:20px;">


    <div class="col-xl-1 col-lg-1 col-md-1 col-sm-2 col-xs-2 col-2 text-right">
        <img src="../img/2123123123123123.png" class="img img-fluid" alt="Alternate Text" style="margin-left:2%;width:100%; max-width:70px;min-width:45px;">

    </div>
    <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-8 col-8" style="margin-left:10px;">
        <div class="row container-fluid">

            <b>
                Tittle of Shair o shairy
            </b>
            <span style="font-size:15px;">
                on 23rd October 2017 at 11:36 am
            </span>


        </div>
        <div class="row">

            <p style="font-size:12px;padding: 16px;" class="text-dark">
                Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
            </p>

        </div>
    </div>

   
</div><div class="row container-fluid" style="border-bottom:1px solid #ccc;margin-top:20px;">


    <div class="col-xl-1 col-lg-1 col-md-1 col-sm-2 col-xs-2 col-2 text-right">
        <img src="../img/2123123123123123.png" class="img img-fluid" alt="Alternate Text" style="margin-left:2%;width:100%; max-width:70px;min-width:45px;">

    </div>
    <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-8 col-8" style="margin-left:10px;">
        <div class="row container-fluid">

            <b>
                Tittle of Shair o shairy
            </b>
            <span style="font-size:15px;">
                on 23rd October 2017 at 11:36 am
            </span>


        </div>
        <div class="row">

            <p style="font-size:12px;padding: 16px;" class="text-dark">
                Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
            </p>

        </div>
    </div>

    
</div><div class="row container-fluid" style="border-bottom:1px solid #ccc;margin-top:20px;">


    <div class="col-xl-1 col-lg-1 col-md-1 col-sm-2 col-xs-2 col-2 text-right">
        <img src="../img/2123123123123123.png" class="img img-fluid" alt="Alternate Text" style="margin-left:2%;width:100%; max-width:70px;min-width:45px;">

    </div>
    <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-8 col-8" style="margin-left:10px;">
        <div class="row container-fluid">

            <b>
                Tittle of Shair o shairy
            </b>
            <span style="font-size:15px;">
                on 23rd October 2017 at 11:36 am
            </span>


        </div>
        <div class="row">

            <p style="font-size:12px;padding: 16px;" class="text-dark">
                Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
            </p>

        </div>
    </div>

    
</div><div class="row container-fluid" style="border-bottom:1px solid #ccc;margin-top:20px;">


    <div class="col-xl-1 col-lg-1 col-md-1 col-sm-2 col-xs-2 col-2 text-right">
        <img src="../img/2123123123123123.png" class="img img-fluid" alt="Alternate Text" style="margin-left:2%;width:100%; max-width:70px;min-width:45px;">

    </div>
    <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-xs-8 col-8" style="margin-left:10px;">
        <div class="row container-fluid">

            <b>
                Tittle of Shair o shairy
            </b>
            <span style="font-size:15px;">
                on 23rd October 2017 at 11:36 am
            </span>


        </div>
        <div class="row">

            <p style="font-size:12px;padding: 16px;" class="text-dark">
                Tincidunt integer eu augue augue nunc elit dolor, luctus placerat scelerisque euismod, iaculis eu lacus nunc mi elit, vehicula ut laoreet ac, aliquam sit amet justo nunc tempor, metus vel.
                <img src="../img/a16.jpg" class="img img-responsive" style="width:100%;max-width:300px" alt="Alternate Text">
            </p>

        </div>
    </div>--%>
                </div>
            </div>
        </div>
</asp:Content>
