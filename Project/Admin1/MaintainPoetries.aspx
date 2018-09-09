<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1/BoloAdmin.Master" AutoEventWireup="true" CodeBehind="MaintainPoetries.aspx.cs" Inherits="Bolo.Admin1.MaintainPoetries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">

     <div class = "Container">
           <div class="PageTitle">
            Poetries List
        </div>

          <div class="GridViewContainer">

               <div class="GridView">
                      
                  <asp:GridView ID="dgvPoetries" runat="server" Width="100%" AllowPaging="True" AllowSorting="false" BackColor="White"
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"
                    DataKeyNames="pkPoetryID"  style="margin-left: 0px" OnPageIndexChanging="dgvPoetries_PageIndexChanging" OnRowCommand="dgvPoetries_RowCommand" OnRowCreated="dgvPoetries_RowCreated" OnRowDataBound="dgvPoetries_RowDataBound" OnSelectedIndexChanging="dgvPoetries_SelectedIndexChanging">
                    <AlternatingRowStyle BackColor="Gainsboro" BorderStyle="Solid" 
            BorderWidth="1px" />

                       <Columns>

                <asp:BoundField DataField="pkPoetryID" HeaderText="PoetryID" Visible="false"> 
                   </asp:BoundField>
                   
                <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                    <asp:Button ID="btnSelect" runat="server" CausesValidation="False" Height="35"
                        Text="Select" UseSubmitBehavior="False" Width="75" />
                    <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                </ItemTemplate>
                <ControlStyle Font-Bold="True" />
                <HeaderStyle Width="100px" HorizontalAlign="Center" />
            </asp:TemplateField>
                
                <asp:BoundField DataField="varPoetryCategory" HeaderText="Category" ReadOnly="true" SortExpression="varPoetryCategory" ItemStyle-Width="200px" ItemStyle-Wrap="false" />
                <asp:BoundField DataField="varPoetName" HeaderText="Poet Name" ReadOnly="true" SortExpression="varPoetName" ItemStyle-Width="200px" ItemStyle-Wrap="false"/>
                <asp:TemplateField HeaderText="Image" ItemStyle-Width="250px" ItemStyle-Wrap="false">
                    <ItemTemplate>
                    <asp:TextBox ID ="txtPoetryImage" ReadOnly="true" TextMode="multiline" Rows="3" runat="server" MaxLength="355"
                         ForeColor="Black" Text='<%# Bind("txtPoetryImage") %>' Width="250px"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                             <asp:TemplateField HeaderText="Description" ItemStyle-Width="250px" ItemStyle-Wrap="false">
                    <ItemTemplate>
                    <asp:TextBox ID="txtDescription" ReadOnly="true" TextMode="MultiLine" Rows="3"  runat="server" MaxLength="355" ForeColor="Black"
                         Text='<%# Bind("txtDescription") %>' Width="250px"></asp:TextBox>
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
                <td align="left"><asp:Button ID="btnNew" runat="server" Text="Add New" CssClass="CommandButton" OnClick="btnNew_Click" CausesValidation="False" Height="35px" /></td>
                <td align="right"><asp:Button ID="btnDelete" runat="server" Text="Delete Record" OnClientClick="javascript:return confirm('Are you sure you want to permanently delete selected item(s)?');" CssClass="CommandButton" OnClick="btnDelete_Click" CausesValidation="False" Height="35px" /></td>
            </tr>
        </table>

          <asp:Panel ID="PoetriesForm" runat="server" CssClass="Form" Width="47%" Visible="false">
            <table>
                 <tr>
                    <td class="ColumnLabel">Category:</td>
                    <td class="ColumnInput">
                        <asp:DropDownList ID="DropDownListCategory" runat="server" Width="200px">
                                <asp:ListItem Value="-1">Select </asp:ListItem>                            
                                <asp:ListItem Value="Romantic">Romantic</asp:ListItem>
                                <asp:ListItem Value="Sad">Sad</asp:ListItem>
                            </asp:DropDownList>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Name:</td>
                    <td class="ColumnInput">
                      <asp:TextBox ID="txtPoetName" runat="server" Width="250px"></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
                  <tr>
                    <td class="ColumnLabel">Image:</td>
                    <td class="ColumnInput">
                        <asp:FileUpload ID="FileUploadPoetry" runat="server" Width="300px" />
                        &nbsp;<%--</td>--%>
                        <asp:RegularExpressionValidator ID="RegExValFileUploadFileType" runat="server"
                        ControlToValidate="FileUploadPoetry" ForeColor="Red"
                        ErrorMessage="*Only .jpg,.png,.jpeg,.gif Files are allowed" Font-Bold="True"
                        Font-Size="Medium"
                        ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="ColumnLabel">Description:</td>
                    <td class="ColumnInput">
                        <asp:TextBox ID="txtDescription" runat="server" MaxLength="150" Width="200px" TextMode="MultiLine"></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
                
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td><asp:Button ID="btnCancel" CssClass="CommandButton" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="False" Height="35px" /></td>
                    <td align ="right"><asp:Button ID="btnSave"  CssClass="CommandButton" runat="server" Text="Save" OnClick="btnSave_Click" Height="35px"/></td>
                </tr>
             </table>
            <asp:HiddenField ID="hfPoetryID" runat="server" />
       </asp:Panel>

         </div>
     <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    </div>
</asp:Content>
