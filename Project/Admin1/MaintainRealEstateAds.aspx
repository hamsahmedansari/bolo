<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1/BoloAdmin.Master" AutoEventWireup="true" CodeBehind="MaintainRealEstateAds.aspx.cs" Inherits="Bolo.Admin1.MaintainRealEstateAds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="Container">
        <div class="PageTitle">
            Estate Ads Request
        </div>
        <div class="GridViewContainer">
            <div class="GridView">

                 <asp:GridView ID="dgvEstate" runat="server" Width="100%" AllowPaging="True" AllowSorting="false" BackColor="White"
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"
                   OnRowDataBound="dgvEstate_RowDataBound" DataKeyNames="pkEstateAdID"  style="margin-left: 0px" OnPageIndexChanging="dgvEstate_PageIndexChanging" OnRowCommand="dgvEstate_RowCommand" OnRowCreated="dgvEstate_RowCreated"  >
                    <AlternatingRowStyle BackColor="Gainsboro" BorderStyle="Solid" 
            BorderWidth="1px" />

                <Columns>
                        <asp:BoundField DataField="pkEstateAdID" Visible ="False" HeaderText="pkEstateAdID" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                    <asp:Button ID="btnSelect" runat="server" CausesValidation="False" Height="35"
                        Text="Select" UseSubmitBehavior="False" Width="75" />
                    <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                </ItemTemplate>
                <ControlStyle Font-Bold="True" />
                <HeaderStyle Width="100px" HorizontalAlign="Center" />
            </asp:TemplateField>
                        <asp:BoundField DataField="varTitle" HeaderText="Estate Type" ReadOnly="true" SortExpression="varTitle"  ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                    
                    <asp:TemplateField HeaderText="Estate Location">
                            <ItemTemplate>
                            <asp:TextBox ID ="txtLocation" ReadOnly="true" TextMode="multiline" Rows="2" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtLocation") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                    <asp:BoundField DataField="intPrice" HeaderText="Estate Price" ReadOnly="true" SortExpression="intPrice"  ItemStyle-Width="150" DataFormatString="{0:#0.00}">
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>

                    <asp:TemplateField HeaderText="ImageUrl">
                            <ItemTemplate>
                            <asp:TextBox ID ="txtImageUrl" ReadOnly="true" TextMode="multiline" Rows="2" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtImageUrl") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                      
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                            <asp:TextBox ID ="txtDescription" ReadOnly="true" TextMode="multiline" Rows="2" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtDescription") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                       
                       <%-- <asp:BoundField DataField = "intLikesCounter" HeaderText = "Likes" ReadOnly="true" />--%>
                        <asp:BoundField DataField = "dteDateAdded" HeaderText = "Date Added" ReadOnly="true" DataFormatString="{0:D}" />
                        <%--<asp:CommandField ShowSelectButton="True" SelectText="Edit" ButtonType="Button" ControlStyle-Height="35" ControlStyle-Width="75" >
<ControlStyle Height="35px" Width="75px"></ControlStyle>
                        </asp:CommandField>--%>
                        <%--<asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnDelete" runat="server" CausesValidation="False" Height="35px"
                                    Text="Delete" UseSubmitBehavior="False" Width="75px"  OnClientClick="javascript:return confirm('Are you sure you want to permanently delete this Item?');"/>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                    </Columns>

                 <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>

            </div>
        </div>
        <table width="100%">
            <tr>
                <%--<td align="left"><asp:Button ID="btnNew" runat="server" Text="Add New" CssClass="CommandButton" OnClick="btnNew_Click" CausesValidation="False" Height="35px" /></td>--%>
                <td align="right"><asp:Button ID="btnDelete" runat="server" Text="Delete Record" OnClientClick="javascript:return confirm('Are you sure you want to permanently delete selected item(s)?');" CssClass="CommandButton" OnClick="btnDelete_Click" CausesValidation="False" Height="35px" /></td>
            </tr>
        </table>

    </div>
    <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    </div>
</asp:Content>
