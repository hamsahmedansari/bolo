<%@ Page Language="C#" MasterPageFile= "BoloAdmin.Master" AutoEventWireup="true" CodeBehind="MaintainGame.aspx.cs" Inherits="Bolo.MaintainGame" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" Runat="Server">
    <div class = "Container">

        <div class="PageTitle">
            Games List
        </div>
        

         <div class="GridViewContainer">

            <div class="GridView">
                <asp:GridView ID="dgvGame" runat="server" Width="100%" AllowPaging="True" AllowSorting="false" BackColor="White"
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanging="dgvGame_SelectedIndexChanging" OnPageIndexChanging="dgvGame_PageIndexChanging"
                   OnRowDataBound="dgvGame_RowDataBound" DataKeyNames="pkGameID" OnRowCommand="dgvGame_RowCommand" OnRowCreated="dgvGame_RowCreated" style="margin-left: 0px">
                    <AlternatingRowStyle BackColor="Gainsboro" BorderStyle="Solid" 
            BorderWidth="1px" />
                    <Columns>
                        <asp:BoundField DataField="pkGameID" Visible ="False" HeaderText="pkGameID" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                    <asp:Button ID="btnSelect" runat="server" CausesValidation="False" Height="35"
                        Text="Select" UseSubmitBehavior="False" Width="75" />
                    <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                </ItemTemplate>
                <ControlStyle Font-Bold="True" />
                <HeaderStyle Width="100px" HorizontalAlign="Center" />
            </asp:TemplateField>
                        <asp:BoundField DataField="varGameName" HeaderText="Game" ReadOnly="true" SortExpression="Game"  ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                            <asp:TextBox ID ="txtDescription" ReadOnly="true" TextMode="multiline" Rows="2" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("varDescription") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Image Path">
                            <ItemTemplate>
                            <asp:TextBox ID ="txtGameImage" ReadOnly="true" TextMode="multiline" Rows="2" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtImageLink") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField = "intLikesCounter" HeaderText = "Likes" ReadOnly="true" />
                        <asp:BoundField DataField = "dteDateAdded" HeaderText = "Date Added" ReadOnly="true" DataFormatString="{0:D}" />
                        <asp:CommandField ShowSelectButton="True" SelectText="Edit" ButtonType="Button" ControlStyle-Height="35" ControlStyle-Width="75" >
<ControlStyle Height="35px" Width="75px"></ControlStyle>
                        </asp:CommandField>
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
                <td align="left"><asp:Button ID="btnNew" runat="server" Text="Add New" CssClass="CommandButton" OnClick="btnNew_Click" CausesValidation="False" Height="35px" /></td>
                <td align="right"><asp:Button ID="btnDelete" runat="server" Text="Delete Record" OnClientClick="javascript:return confirm('Are you sure you want to permanently delete selected item(s)?');" CssClass="CommandButton" OnClick="btnDelete_Click" CausesValidation="False" Height="35px" /></td>
            </tr>
        </table>
        
        <asp:Panel ID="GameForm" runat="server" CssClass="Form" Width="60%" Visible="false">
            <table>
                <tr>
                    <td class="ColumnLabel">Name:</td>
                    <td class="ColumnInput">
                        <asp:TextBox ID="txtName" runat="server" MaxLength="150" Width="200px"></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Description:</td>
                    <td class="ColumnInput">
                        <span class = "RequiredFieldStar">
                        <asp:TextBox ID="txtDescription" runat="server" MaxLength="255" Rows="2" TextMode="MultiLine" Width="200px"></asp:TextBox>
                        *</span>&nbsp;&nbsp; 
                    </td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Image:</td>
                    <td class="ColumnInput">
                        <asp:FileUpload ID="FileUploadGameImage" runat="server" Width="300px" />
                        &nbsp;<%--</td>--%>
                   <%-- <td class="ColumnLabel">--%>
                        <asp:RegularExpressionValidator ID="RegExValFileUploadFileType" runat="server"
                        ControlToValidate="FileUploadGameImage" ForeColor="Red"
                        ErrorMessage="*Only .jpg,.png,.jpeg,.gif Files are allowed" Font-Bold="True"
                        Font-Size="Medium"
                        ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Category</td>
                    <td class="DropDownInput" align="left">
                        <asp:DropDownList ID="ddlCategory" runat="server"  Width="202px">
                            <asp:ListItem Selected="True">Featured</asp:ListItem>
                            <asp:ListItem>Arcade</asp:ListItem>
                            <asp:ListItem>Latest</asp:ListItem>
                        </asp:DropDownList>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Download Link:</td>
                    <td class="ColumnInput">
                        <span class = "RequiredFieldStar">
                        <asp:TextBox ID="txtDownloadLink" runat="server" MaxLength="255" Rows="2" TextMode="MultiLine" Width="200px"></asp:TextBox>
                        </span>&nbsp;&nbsp; 
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
            <asp:HiddenField ID="hfGameID" runat="server" />
       </asp:Panel>  
     
        <%--<asp:ObjectDataSource ID="ItemInventoryLocationsGridDS" runat="server" SelectMethod="getItemInventoryLocations"
            TypeName="MMS.MMSSystem">
            <SelectParameters>
                <asp:ControlParameter ControlID="itemList" Name="itemID" PropertyName="SelectedValue"
                    Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>--%>
 
    </div>

    <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    </div>
    
    
</asp:Content>
