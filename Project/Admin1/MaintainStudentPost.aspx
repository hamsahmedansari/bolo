<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1/BoloAdmin.Master" AutoEventWireup="true" CodeBehind="MaintainStudentPost.aspx.cs" Inherits="Bolo.Admin1.MaintainStudentPost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class = "Container">
        <div class="PageTitle">
            Student Post List
        </div>
 <div class="GridViewContainer">
 <asp:GridView ID="dgvStudent" runat="server" Width="100%" AllowPaging="true" AllowSorting="false" BackColor="White"
      AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="pkStudentPostID"
      OnPageIndexChanging="dgvStudent_PageIndexChanging" OnRowDataBound="dgvStudent_RowDataBound" OnSelectedIndexChanging="dgvStudent_SelectedIndexChanging"> 
<AlternatingRowStyle BackColor="Gainsboro" BorderStyle="Solid" BorderWidth="1px" />
 <Columns>
    <asp:BoundField DataField="pkStudentPostID" Visible ="False" HeaderText="pkStudentPostID" ReadOnly="True" />
<asp:TemplateField HeaderText="Select">
    <ItemTemplate>
         <asp:Button ID="btnSelect" runat="server" CausesValidation="False" Height="35"
         Text="Select" UseSubmitBehavior="False" Width="75" />
         <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
    </ItemTemplate>
    <ControlStyle Font-Bold="True" />
    <HeaderStyle Width="100px" HorizontalAlign="Center" />
</asp:TemplateField>
     <asp:TemplateField HeaderText="Image">
        <ItemTemplate>
            <asp:TextBox ID ="txtStudentPostImageUrl" ReadOnly="true" TextMode="multiline" Rows="2" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtStudentPostImageUrl") %>'></asp:TextBox>
        </ItemTemplate>
    </asp:TemplateField>
     <asp:BoundField DataField="varLocation" HeaderText="Location" ReadOnly="true" SortExpression="Location"  ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
    </asp:BoundField>
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
    <table width="100%">
            <tr>
                <td align="left"><asp:Button ID="btnNew" runat="server" Text="Add New" CssClass="CommandButton" OnClick="btnNew_Click" CausesValidation="False" Height="35px" /></td>
                <td align="right"><asp:Button ID="btnDelete" runat="server" Text="Delete Record" OnClientClick="javascript:return confirm('Are you sure you want to permanently delete selected item(s)?');" CssClass="CommandButton" OnClick="btnDelete_Click" CausesValidation="False" Height="35px" /></td>
            </tr>
        </table>
<asp:Panel ID="StudentPostForm" runat="server" CssClass="Form" Width="50%" Visible="false">
    <table>
                <tr>
                    <td class="ColumnLabel">Location:</td>
                    <td class="ColumnInput">
                        <asp:TextBox ID="txtLocation" runat="server" MaxLength="150" Width="200px"></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Image:</td>
                    <td class="ColumnInput">
                        <asp:FileUpload ID="FileUploadGameImage" runat="server" Width="300px" />
                        &nbsp;<%--</td>--%><asp:RegularExpressionValidator ID="RegExValFileUploadFileType" runat="server"
                        ControlToValidate="FileUploadGameImage" ForeColor="Red"
                        ErrorMessage="*Only .jpg,.png,.jpeg,.gif Files are allowed" Font-Bold="True"
                        Font-Size="Medium"
                        ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Button ID="btnCancel" CssClass="CommandButton" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="False" Height="35px" /></td>
                    <td align ="right"><asp:Button ID="btnSave"  CssClass="CommandButton" runat="server" Text="Save" OnClick="btnSave_Click" Height="35px"/></td>
                </tr>
     </table>
    <asp:HiddenField ID="hfStudentPostID" runat="server" />
</asp:Panel>
            </div>
<div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    </div>
</asp:Content>
