<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1/BoloAdmin.Master" AutoEventWireup="true" CodeBehind="MaintainBloodDonation.aspx.cs" Inherits="Bolo.Admin1.MaintainBloodDonation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">

    <div class="PageTitle">
        Blood Donation List
    </div>

    <div class="GridViewContainer">

        <div class="GridView">
            <asp:GridView ID="dgvBloodDonation" runat="server" Width="100%" AllowPaging="true" AllowSorting="false" BackColor="White"
                AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanging="dgvBloodDonation_SelectedIndexChanging" OnPageIndexChanging="dgvBloodDonation_PageIndexChanging"
                OnRowDataBound="dgvBloodDonation_RowDataBound" DataKeyNames="pkBloodDonationID" OnRowCommand="dgvBloodDonation_RowCommand" OnRowCreated="dgvBloodDonation_RowCreated" sytle="margin-left:0px">
                <AlternatingRowStyle BackColor="Gainsboro" BorderStyle="Solid" BorderWidth="1px" />
                <Columns>

                    <asp:BoundField DataField="pkBloodDonationID" Visible="false" HeaderText="pkBloodDonationID" ReadOnly="true" />
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:Button ID="btnSelect" runat="server" CausesValidation="false" Height="35"
                                Text="Select" UseSubmitBehavior="false" Width="75" />
                            <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                        </ItemTemplate>
                        <ControlStyle Font-Bold="true" />
                        <HeaderStyle Width="100px" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="varName" HeaderText="Name" ReadOnly="true" SortExpression="BloodDonation" ItemStyle-Width="150">
                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="varCity" HeaderText="City" ReadOnly="true" ItemStyle-Width="150px" />
                    <asp:BoundField DataField="varArea" HeaderText="Area" ReadOnly="true"  ItemStyle-Width="150px" />
                    <asp:BoundField DataField="varContactNumber" HeaderText="Contact Number" ReadOnly="true"  ItemStyle-Width="150px" />
                    <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <asp:TextBox ID="txtAddress" ReadOnly="true" TextMode="MultiLine" Rows="2" runat="server" MaxLength="250" ForeColor="Black" Text='<%# Bind("txtAddress") %>' ></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="varBloodGroup" HeaderText="Blood Group" ReadOnly="true" ItemStyle-Width="150px" />
                    <asp:BoundField DataField="dteTimeOfDonation" HeaderText="Donation Time" DataFormatString="{0:MM/dd/yyyy}" ReadOnly="true" ItemStyle-Width="150px"/>
               <asp:CommandField ShowSelectButton="True" SelectText="Edit" ButtonType="Button" ControlStyle-Height="35" ControlStyle-Width="75" >
<ControlStyle Height="35px" Width="75px"></ControlStyle>
                        </asp:CommandField>
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
            <td align="left">
                <asp:Button ID="btnNew" runat="server" Text="Add New" CssClass="CommandButton" OnClick="btnNew_Click" CausesValidation="false" Height="35px" />
            </td>
            <td align="right">
                <asp:Button ID="btnDelete" runat="server" Text="Delete Record" OnClientClick="javascript:return confirm('Are you sure you want to permanently delete selected item(s)?');" CssClass="CommandButton" OnClick="btnDelete_Click" CausesValidation="False" Height="35px" />
            </td>
        </tr>
    </table>
    <asp:Panel ID="BloodDonationForm" runat="server" CssClass="Form" Width="60%" Visible="false">
        <table>
            <tr>
                <td class="ColumnLabel">Name:</td>
                <td class="ColumnInput">
                    <asp:TextBox ID="txtName" runat="server" MaxLength="250" Width="200px"></asp:TextBox>
                    <span class="RequiredFieldStar">*</span>
                   
                </td>
            </tr>
            <tr>
                <td class="ColumnLabel">City</td>
                <td class="ColumnInput">
                    <span class="RequiredFieldStar">
                    <asp:TextBox ID="txtCity" runat="server" MaxLength="250" Width="200px"></asp:TextBox>
                *</span>&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="ColumnLabel">Area</td>
                <td class="ColumnInput">
                    <span class="RequiredFieldStar">
                        <asp:TextBox ID="txtArea" runat="server" MaxLength="250" Width="200px"></asp:TextBox>
                    *</span>&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="ColumnLabel">Contact Number</td>
                <td class="ColumnInput">
                    <span class="RequiredFieldStar">
                        <asp:TextBox ID="txtContactNumber" runat="server" MaxLength="250" Width="200px"></asp:TextBox>
                    *</span>&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="ColumnLabel">Address</td>
                <td class="ColumnInput">
                    <span class="RequiredFieldStar">
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="2" Width="200px"></asp:TextBox> 
                    *</span>&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="ColumnLabel">Blood Group</td>
                <td class="ColumnInput">
                    <span class="RequiredFieldStar">
                        <asp:TextBox ID="txtBloodGroup" runat="server" MaxLength="50" Width="200px"></asp:TextBox>
                    </span>
                </td>
            </tr>
            <tr>
                <td class="ColumnLabel">Donation Date</td>
                <td class="ColumnInput">
                    <span>
                        <input id="dteDonationTime" runat="server" type="date" style="width:200px"/>
                    </span>
                </td>
            </tr>
            <tr>
                 <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td><asp:Button ID="btnCancel" CssClass="CommandButton" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="False" Height="35px" /></td>
                    <td align ="right"><asp:Button ID="btnSave"  CssClass="CommandButton" runat="server" Text="Save" OnClick="btnSave_Click" Height="35px"/></td>
                </tr>
        </table>
            <asp:HiddenField ID="hfBloodDonationID" runat="server" />
    </asp:Panel>

    <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    </div>
</asp:Content>
