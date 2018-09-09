<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1/BoloAdmin.Master" AutoEventWireup="true" CodeBehind="MaintainJobAds.aspx.cs" Inherits="Bolo.Admin1.MaintainJobAds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="Container">
        <div class="PageTitle">
            Job Ads Requests
        </div>
        <div class="GridViewContainer">
            <div class="GridView">
                <asp:GridView ID="dgvJobAds" runat="server" Width="100%" AllowPaging="true" BackColor="White"
                     AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="pkPostedJobID" OnPageIndexChanging="dgvJobAds_PageIndexChanging" OnRowCommand="dgvJobAds_RowCommand" OnRowCreated="dgvJobAds_RowCreated" OnRowDataBound="dgvJobAds_RowDataBound">
                    <AlternatingRowStyle BackColor="Gainsboro" BorderStyle="Solid" BorderWidth="1px" />
                    <FooterStyle BackColor="#5D7B9B" Font-Bold="true" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />

                    <Columns>
                        <asp:BoundField DataField="pkPostedJobID" Visible="false" HeaderText="pkPostedJobID" ReadOnly="true" />
                        <asp:TemplateField HeaderText="Select">
                            <ItemTemplate>
                                <asp:Button ID="btnSelect" runat="server" CausesValidation="false" Height="35" Text="Select"
                                     UseSubmitBehavior="false" Width="75" />
                                <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                            </ItemTemplate>
                            <ControlStyle Font-Bold="true" />
                            <HeaderStyle Width="100px" HorizontalAlign="Center" />
                        </asp:TemplateField>

                        <asp:BoundField DataField="varName" HeaderText="Name" ReadOnly="true" ItemStyle-Width="200px" ItemStyle-Wrap="false"/>
                        <asp:BoundField DataField="varEmail" HeaderText="Email" ReadOnly="true"  ItemStyle-Width="200px" ItemStyle-Wrap="false" />
                        <asp:BoundField DataField="varContactNo" HeaderText="Contact No" ReadOnly="true"  ItemStyle-Width="100px" ItemStyle-Wrap="false" />
                        <asp:TemplateField HeaderText="txtAddress">
                            <ItemTemplate>
                                <asp:TextBox ID="txtAddress" ReadOnly="true" TextMode="MultiLine" Rows="2" runat="server" MaxLength="255" ForeColor="Black" Width="200px" Text='<%#Bind("txtAddress")%>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:TextBox ID="txtDescription" ReadOnly="true" TextMode="MultiLine" Rows="2" runat="server" MaxLength="255" ForeColor="Black" Width="200px" Text='<%#Bind("txtDescription") %>' ></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="true" ForeColor="#333333" />
                    <PagerStyle  BackColor="#284775" ForeColor="White" HorizontalAlign="Center"/>
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="true" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
            </div>
        </div>

        <table width="100%">
            <tr>
                <td align="right"><asp:Button ID="btnDelete" runat="server" Text="Delete Record" OnClientClick="javascript:return confirm('Are you sure you want to permanently delete selected item(s)?');" CssClass="CommandButton" OnClick="btnDelete_Click" CausesValidation="False" Height="35px" /></td>
            </tr>
        </table>
    </div>
    <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    </div>
</asp:Content>
