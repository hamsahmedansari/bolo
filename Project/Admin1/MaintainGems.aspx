﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1/BoloAdmin.Master" AutoEventWireup="true" CodeBehind="MaintainGems.aspx.cs" Inherits="Bolo.Admin1.MaintainGems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
     <div class="PageTitle">
        Gems List
    </div>
    <div class="GridViewContainer">
        <div class="GridView">
            <asp:GridView ID="dgvGems" runat="server"  Width="100%" AllowPaging="true" AllowSorting="false" BackColor="White"
                  DataKeyNames="pkGemID" AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None" sytle="margin-left:0px"
                OnPageIndexChanging="dgvGems_PageIndexChanging" OnRowCommand="dgvGems_RowCommand" OnRowCreated="dgvGems_RowCreated" OnRowDataBound="dgvGems_RowDataBound"
               OnRowDeleted="dgvGems_RowDeleted" OnSelectedIndexChanging="dgvGems_SelectedIndexChanging">
                 <%--OnPageIndexChanging="dgvFashion_PageIndexChanging" OnRowCommand="dgvFashion_RowCommand" OnRowCreated="dgvFashion_RowCreated" 
                OnRowDataBound="dgvFashion_RowDataBound" OnRowDeleted="dgvFashion_RowDeleted" OnSelectedIndexChanging="dgvFashion_SelectedIndexChanging"--%> 
                <AlternatingRowStyle BackColor="Gainsboro" BorderStyle="Solid" BorderWidth="1px" />
            <Columns>
              <asp:BoundField DataField="pkGemID" Visible="false" HeaderText="pkGemID" ReadOnly="true" />
                 <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:Button ID="btnSelect" runat="server" CausesValidation="false" Height="35"
                                Text="Select" UseSubmitBehavior="false" Width="75" />
                            <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                        </ItemTemplate>
                        <ControlStyle Font-Bold="true" />
                        <HeaderStyle Width="100px" HorizontalAlign="Center" />
                    </asp:TemplateField>
                <asp:BoundField DataField="varName" HeaderText="Gem Name" ReadOnly="true" SortExpression="Gem" ItemStyle-Width="150">
                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="varPrice" HeaderText="Price" ReadOnly="true" ItemStyle-Width="150px" />
                 <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:TextBox ID="txtImage" ReadOnly="true" TextMode="MultiLine" Rows="2" runat="server" MaxLength="250" ForeColor="Black" Text='<%# Bind("txtImage") %>' ></asp:TextBox>
                        </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Description">
                        <ItemTemplate>
                            <asp:TextBox ID="txtDescription" ReadOnly="true" TextMode="MultiLine" Rows="2" runat="server" MaxLength="250" ForeColor="Black" Text='<%# Bind("txtDescription") %>' ></asp:TextBox>
                        </ItemTemplate>
                </asp:TemplateField>
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
    <asp:Panel ID="GemForm" runat="server" CssClass="Form" Width="48%" Visible="false">
    <table>
        <tr>
            <td class="ColumnLabel">Name:</td>
            <td class="ColumnInput">
              <asp:TextBox ID="txtName" runat="server" MaxLength="250" Width="300px"></asp:TextBox>
              <span class="RequiredFieldStar">*</span>
            </td>
        </tr>
        <tr>
            <td class="ColumnLabel">Price:</td>
            <td class="ColumnInput">
              <asp:TextBox ID="txtPrice" runat="server" MaxLength="250" Width="300px"></asp:TextBox>
              <span class="RequiredFieldStar">*</span>
            </td>
        </tr>
        <tr>
            <td class="ColumnLabel">Image:</td>
            <td class="ColumnInput">
              <asp:FileUpload ID="txtImage" runat="server" Width="200px"></asp:FileUpload>
              <span class="RequiredFieldStar">*</span>
            <%--</td>
            <td class="ColumnLabel">--%>
                        <asp:RegularExpressionValidator ID="RegExValFileUploadFileType" runat="server"
                        ControlToValidate="txtImage" ForeColor="Red"
                        ErrorMessage="*Only .jpg,.png,.jpeg,.gif Files are allowed" Font-Bold="True"
                        Font-Size="Medium"
                        ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                    </td>
        </tr>
        <tr>
            <td class="ColumnLabel">Description:</td>
            <td class="ColumnInput">
              <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="2" Width="300px"></asp:TextBox>
              <span class="RequiredFieldStar">*</span>
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
    <asp:HiddenField ID="hfGemID" runat="server" />
    </asp:Panel>
    <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    </div>
</asp:Content>
