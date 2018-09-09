<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1/BoloAdmin.Master" AutoEventWireup="true" CodeBehind="MaintainRecipes.aspx.cs" Inherits="Bolo.Admin1.MaintainRecipes" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="Container">
        <div class="PageTitle">
            Recipe List
        </div>
        <div class="GridViewContainer">
            <div class="GridView">

                <asp:GridView ID="dgvRecipe" runat="server" Width="100%" AllowPaging="True" AllowSorting="false" BackColor="White"
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"
                   OnRowDataBound="dgvGame_RowDataBound" DataKeyNames="pkRecipieID"  style="margin-left: 0px" OnPageIndexChanging="dgvRecipe_PageIndexChanging" OnRowCommand="dgvRecipe_RowCommand" OnRowCreated="dgvRecipe_RowCreated" OnSelectedIndexChanging="dgvRecipe_SelectedIndexChanging">
                    <AlternatingRowStyle BackColor="Gainsboro" BorderStyle="Solid" 
            BorderWidth="1px" />

                     <Columns>
                        <asp:BoundField DataField="pkRecipieID" Visible ="False" HeaderText="pkRecipieID" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                    <asp:Button ID="btnSelect" runat="server" CausesValidation="False" Height="35"
                        Text="Select" UseSubmitBehavior="False" Width="75" />
                    <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                </ItemTemplate>
                <ControlStyle Font-Bold="True" />
                <HeaderStyle Width="100px" HorizontalAlign="Center" />
            </asp:TemplateField>
                        
                          <asp:BoundField DataField="varRecipeCategory" HeaderText="Type" ReadOnly="true" SortExpression="varRecipeCategory" ItemStyle-Width="250px" ItemStyle-Wrap="false">
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>

                         <asp:BoundField DataField="varRecipieName" HeaderText="Recipie Name" ReadOnly="true" SortExpression="varRecipieName"  ItemStyle-Width="250px" ItemStyle-Wrap="false">
<ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Ingredients">
                            <ItemTemplate>
                            <asp:TextBox ID ="txtRecipieIngredients" ReadOnly="true" TextMode="multiline" Rows="2" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtRecipieIngredients") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Recipie Method">
                            <ItemTemplate>
                            <asp:TextBox ID ="txtRecipieMethod" ReadOnly="true" TextMode="multiline" Rows="2" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtRecipieMethod") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Image1 Path">
                            <ItemTemplate>
                            <asp:TextBox ID ="txtRecipieImage1" ReadOnly="true" TextMode="multiline" Rows="2" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtRecipieImage1") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                         <%-- <asp:TemplateField HeaderText="Image2 Path">
                            <ItemTemplate>
                            <asp:TextBox ID ="txtRecipieImage2" ReadOnly="true" TextMode="multiline" Rows="2" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtRecipieImage2") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                          <asp:TemplateField HeaderText="Image3 Path">
                            <ItemTemplate>
                            <asp:TextBox ID ="txtRecipieImage3" ReadOnly="true" TextMode="multiline" Rows="2" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtRecipieImage3") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>--%>

<%--                        <asp:BoundField DataField = "intLikesCounter" HeaderText = "Likes" ReadOnly="true" />
                        <asp:BoundField DataField = "dteDateAdded" HeaderText = "Date Added" ReadOnly="true" DataFormatString="{0:D}" />--%>
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
                <td align="left"><asp:Button ID="btnNew" runat="server" Text="Add New" CssClass="CommandButton" OnClick="btnNew_Click" CausesValidation="False" Height="35px" /></td>
                <td align="right"><asp:Button ID="btnDelete" runat="server" Text="Delete Record" OnClientClick="javascript:return confirm('Are you sure you want to permanently delete selected item(s)?');" CssClass="CommandButton" OnClick="btnDelete_Click" CausesValidation="False" Height="35px" /></td>
            </tr>
        </table>

        <asp:Panel ID="RecipeForm" runat="server" CssClass="Form" Width="45%" Visible="false">
            <table style="width: 465px">
                 <tr>
                    <td class="ColumnLabel">Type:</td>
                    <td class="ColumnInput">
                        <asp:DropDownList ID="DropDownListRecipeCategory" runat="server" Width="200px">
                                <asp:ListItem Value="-1">Select </asp:ListItem>
                                <asp:ListItem>Traditional</asp:ListItem>
                                <asp:ListItem>Fast Food</asp:ListItem>
                                <asp:ListItem>Chinese</asp:ListItem>
                            </asp:DropDownList>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>

                <tr>
                    <td class="ColumnLabel">Name:</td>
                    <td class="ColumnInput">
                        <asp:TextBox ID="txtRecipeName" runat="server" MaxLength="150" Width="300px"></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Ingredients:</td>
                    <td class="ColumnInput">
                        <span class = "RequiredFieldStar">
                        <asp:TextBox ID="txtRecipieIngredients" runat="server" MaxLength="2000" Rows="2" TextMode="MultiLine" Width="300px" Height="70"></asp:TextBox>
                        *</span>&nbsp;&nbsp; 
                    </td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Recipie Method:</td>
                    <td class="ColumnInput">
                        <span class = "RequiredFieldStar">
                        <asp:TextBox ID="txtRecipieMethod" runat="server" MaxLength="2000" Rows="2" TextMode="MultiLine" Width="300px" Height="70"></asp:TextBox>
                        *</span>&nbsp;&nbsp; 
                    </td>
                </tr>

                <tr>
                    <td class="ColumnLabel">Image 1:</td>
                    <td class="ColumnInput">
                        <asp:FileUpload ID="FileUploadRecipeImage1" runat="server" Width="300px" />
                        &nbsp;<%--</td>--%><asp:RegularExpressionValidator ID="RegExValFileUploadFileType" runat="server"
                        ControlToValidate="FileUploadRecipeImage1" ForeColor="Red"
                        ErrorMessage="*Only .jpg,.png,.jpeg,.gif Files are allowed" Font-Bold="True"
                        Font-Size="Medium"
                        ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <%--  <tr>
                    <td class="ColumnLabel">Image 2:</td>
                    <td class="ColumnInput">
                        <asp:FileUpload ID="FileUploadRecipeImage2" runat="server" Width="300px" />
                        &nbsp;</td>
                </tr>
                  <tr>
                    <td class="ColumnLabel">Image 3:</td>
                    <td class="ColumnInput">
                        <asp:FileUpload ID="FileUploadRecipeImage3" runat="server" Width="300px" />
                        &nbsp;</td>
                </tr>--%>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td><asp:Button ID="btnCancel" CssClass="CommandButton" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="False" Height="35px" /></td>
                    <td align ="right"><asp:Button ID="btnSave"  CssClass="CommandButton" runat="server" Text="Save" OnClick="btnSave_Click" Height="35px"/></td>
                </tr>
             </table>
            <asp:HiddenField ID="hfRecipeID" runat="server" />
       </asp:Panel>  
    </div>
     <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    </div>
</asp:Content>
