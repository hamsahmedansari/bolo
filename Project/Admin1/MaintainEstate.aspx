<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1/BoloAdmin.Master" AutoEventWireup="true" CodeBehind="MaintainEstate.aspx.cs" Inherits="Bolo.Admin1.MaintainEstate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
<div class="Container">

    <div class="PageTitle">
        Estates List
    </div>

    <div class="GridViewContainer">
        <div class="GridView">
            <asp:GridView ID="dgvEstate" runat="server" Width="100%" AllowPaging="True" AllowSorting="false" BackColor="White"
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"
                   OnRowDataBound="dgvEstate_RowDataBound" DataKeyNames="pkEstateID"  style="margin-left: 0px" OnPageIndexChanging="dgvEstate_PageIndexChanging" OnRowCommand="dgvEstate_RowCommand" OnRowCreated="dgvEstate_RowCreated" OnSelectedIndexChanging="dgvEstate_SelectedIndexChanging" >
                    <AlternatingRowStyle BackColor="Gainsboro" BorderStyle="Solid" 
            BorderWidth="1px" />

                <Columns>
                        <asp:BoundField DataField="pkEstateID" Visible ="False" HeaderText="pkEstateID" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                    <asp:Button ID="btnSelect" runat="server" CausesValidation="False" Height="35"
                        Text="Select" UseSubmitBehavior="False" Width="75" />
                    <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                </ItemTemplate>
                <ControlStyle Font-Bold="True" />
                <HeaderStyle Width="100px" HorizontalAlign="Center" />
            </asp:TemplateField>
                        <asp:BoundField DataField="varEstateType" HeaderText="Estate Type" ReadOnly="true" SortExpression="varEstateType"  ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                    
                    <asp:TemplateField HeaderText="Estate Location">
                            <ItemTemplate>
                            <asp:TextBox ID ="txtEstateLocation" ReadOnly="true" TextMode="multiline" Rows="2" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtEstateLocation") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                    <asp:BoundField DataField="varEstatePrice" HeaderText="Estate Price" ReadOnly="true" SortExpression="varEstatePrice"  ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>

                    <asp:TemplateField HeaderText="ImageUrl">
                            <ItemTemplate>
                            <asp:TextBox ID ="txtEstateImageUrl" ReadOnly="true" TextMode="multiline" Rows="2" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtEstateImageUrl") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                                        
                    <asp:BoundField DataField="intEstateBedrooms" HeaderText="Bedrooms" ReadOnly="true" SortExpression="intEstateBedrooms"  ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                    <asp:BoundField DataField="intEstateBathRooms" HeaderText="BathRooms" ReadOnly="true" SortExpression="intEstateBathRooms"  ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                    <asp:BoundField DataField="varEstateCity" HeaderText="City" ReadOnly="true" SortExpression="varEstateCity"  ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                    <asp:BoundField DataField="varEstateArea" HeaderText="Area" ReadOnly="true" SortExpression="varEstateArea"  ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
          <asp:BoundField DataField="varEstateAreaUnit" HeaderText="Area Unit" ReadOnly="true" SortExpression="varEstateAreaUnit"  ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                            <asp:TextBox ID ="txtEstateDescription" ReadOnly="true" TextMode="multiline" Rows="2" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtEstateDescription") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                       
                       <%-- <asp:BoundField DataField = "intLikesCounter" HeaderText = "Likes" ReadOnly="true" />
                        <asp:BoundField DataField = "dteDateAdded" HeaderText = "Date Added" ReadOnly="true" DataFormatString="{0:D}" />--%>
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

   <asp:Panel ID="EstateForm" runat="server" CssClass="Form" Width="46%" Visible="false">
            <table style="width: 527px">
                 <tr>
                    <td class="ColumnLabel">Type:</td>
                    <td class="ColumnInput" style="width: 407px">
                        <asp:DropDownList ID="DropDownListEstateType" runat="server" Width="200px">
                                <asp:ListItem Value="-1">Select </asp:ListItem>
                                <asp:ListItem>House</asp:ListItem>
                                <asp:ListItem>Apartment</asp:ListItem>
                                <asp:ListItem>Plot</asp:ListItem>
                            </asp:DropDownList>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
               
                <tr>
                    <td class="ColumnLabel">Location:</td>
                    <td class="ColumnInput" style="width: 407px">
                        <span class = "RequiredFieldStar">
                        <asp:TextBox ID="txtEstateLocation" runat="server" MaxLength="255" Rows="2" TextMode="MultiLine" Width="300px" Height="50px"></asp:TextBox>
                        *</span>&nbsp;&nbsp; 
                    </td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Price:</td>
                    <td class="ColumnInput" style="width: 407px">
                        <span class = "RequiredFieldStar">
                        <asp:TextBox ID="txtEstatePrice" runat="server"  Width="300px"></asp:TextBox>
                        *</span>&nbsp;&nbsp; 
                    </td>
                </tr>
               
                <tr>
                    <td class="ColumnLabel">Image:</td>
                    <td class="ColumnInput" style="width: 407px">
                        <asp:FileUpload ID="FileUploadEstateImage" runat="server" Width="300px" />&nbsp
                       <%-- </td>
                    <td class="ColumnLabel">--%>
                        <asp:RegularExpressionValidator ID="RegExValFileUploadFileType" runat="server"
                        ControlToValidate="FileUploadEstateImage" ForeColor="Red"
                        ErrorMessage="*Only .jpg,.png,.jpeg,.gif Files are allowed" Font-Bold="True"
                        Font-Size="Medium"
                        ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
               
                <tr>
                    <td class="ColumnLabel">Bedrooms:</td>
                    <td class="ColumnInput" style="width: 407px">
                        <span class = "RequiredFieldStar">
                        <asp:TextBox ID="txtEstateBedrooms" runat="server"  Width="300px"></asp:TextBox>
                        *</span>&nbsp;&nbsp; 
                    </td>
                </tr>
                <tr>
                    <td class="ColumnLabel">BathRooms:</td>
                    <td class="ColumnInput" style="width: 407px">
                        <span class = "RequiredFieldStar">
                        <asp:TextBox ID="txtEstateBathRooms" runat="server"  Width="300px"></asp:TextBox>
                        *</span>&nbsp;&nbsp; 
                    </td>
                </tr>
                <tr>
                    <td class="ColumnLabel">City:</td>
                    <td class="ColumnInput" style="width: 407px">
                        <span class = "RequiredFieldStar">
                        <asp:TextBox ID="txtEstateCity" runat="server"  Width="300px"></asp:TextBox>
                        *</span>&nbsp;&nbsp; 
                    </td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Area:</td>
                    <td class="ColumnInput" style="width: 407px">
                        <span class = "RequiredFieldStar">
                        <asp:TextBox ID="txtEstateArea" runat="server" MaxLength="255" Rows="2" TextMode="MultiLine" Width="300px" Height="50px"></asp:TextBox>
                        *</span>&nbsp;&nbsp; 
                    </td>
                </tr>
                <tr>
                    <td class="ColumnLabel">AreaUnit:</td>
                    <td class="ColumnInput" style="width: 407px">
                        <span class = "RequiredFieldStar">
                        <asp:TextBox ID="txtEstateAreaUnit" runat="server"  Width="300px"></asp:TextBox>
                        *</span>&nbsp;&nbsp; 
                    </td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Description:</td>
                    <td class="ColumnInput" style="width: 407px">
                        <span class = "RequiredFieldStar">
                        <asp:TextBox ID="txtEstateDescription" runat="server" MaxLength="255" Rows="2" TextMode="MultiLine" Width="300px" Height="50px"></asp:TextBox>
                        *</span>&nbsp;&nbsp; 
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td><asp:Button ID="btnCancel" CssClass="CommandButton" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="False" Height="35px" /></td>
                    <td align ="right" style="width: 407px"><asp:Button ID="btnSave"  CssClass="CommandButton" runat="server" Text="Save" OnClick="btnSave_Click" Height="35px"/></td>
                </tr>
             </table>
            <asp:HiddenField ID="hfEstateID" runat="server" />
       </asp:Panel>

</div>
    <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    </div>

</asp:Content>
