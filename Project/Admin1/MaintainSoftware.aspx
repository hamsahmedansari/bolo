<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1/BoloAdmin.Master" AutoEventWireup="true" CodeBehind="MaintainSoftware.aspx.cs" Inherits="Bolo.Admin1.MaintainSoftware" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
     <div class = "Container">
           <div class="PageTitle">
            Softwares List
        </div>

          <div class="GridViewContainer">

               <div class="GridView">
                   
                  <asp:GridView ID="dgvSoftwars" runat="server" Width="100%" AllowPaging="True" AllowSorting="false" BackColor="White"
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"
                    DataKeyNames="pkSoftwareID"  style="margin-left: 0px" OnPageIndexChanging="dgvSoftwars_PageIndexChanging" OnRowCommand="dgvSoftwars_RowCommand" OnRowCreated="dgvSoftwars_RowCreated" OnRowDataBound="dgvSoftwars_RowDataBound" OnSelectedIndexChanging="dgvSoftwars_SelectedIndexChanging">
                    <AlternatingRowStyle BackColor="Gainsboro" BorderStyle="Solid" 
            BorderWidth="1px" />
         <Columns>
              
                <asp:BoundField DataField="pkSoftwareID" HeaderText="Software ID" Visible ="false" ></asp:BoundField>

               <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                    <asp:Button ID="btnSelect" runat="server" CausesValidation="False" Height="35"
                        Text="Select" UseSubmitBehavior="False" Width="75" />
                    <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                </ItemTemplate>
                <ControlStyle Font-Bold="True" />
                <HeaderStyle Width="100px" HorizontalAlign="Center" />
            </asp:TemplateField>
             
                <asp:BoundField DataField="varSoftwareType" HeaderText="Type" ItemStyle-Width="150px" ItemStyle-Wrap="false"
                ReadOnly="True" SortExpression="varSoftwareType"/>
                <asp:BoundField DataField="varSoftwareName" HeaderText="Name" ReadOnly="true" SortExpression="varSoftwareName" ItemStyle-Width="200px" ItemStyle-Wrap="false" >
                <HeaderStyle Width="200px" />
                <ItemStyle Width="200px" />
                </asp:BoundField>
                 <asp:TemplateField HeaderText="Image Path">
                <ItemTemplate>
                        <asp:TextBox ID ="txtSoftwareImage" ReadOnly="true" TextMode="multiline" Rows="3" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtSoftwareImage") %>'></asp:TextBox>
                </ItemTemplate>
                     </asp:TemplateField>
               <asp:BoundField DataField="varSoftwareVersion" HeaderText="Version" ReadOnly="true" SortExpression="varSoftwareVersion"  />
             
               <asp:TemplateField HeaderText="Description">
                <ItemTemplate>
                        <asp:TextBox ID ="txtDescription" ReadOnly="true" TextMode="multiline" Rows="3" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtDescription") %>'></asp:TextBox>
                </ItemTemplate>
                     </asp:TemplateField>
                 <asp:TemplateField HeaderText="Download Link">
                <ItemTemplate>
                        <asp:TextBox ID ="txtDownloadLink" ReadOnly="true" TextMode="multiline" Rows="3" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtDownloadLink") %>'></asp:TextBox>
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

          <asp:Panel ID="SoftwareForm" runat="server" CssClass="Form" Width="46%" Visible="false">
            <table style="width: 513px">
                 <tr>
                    <td class="ColumnLabel">Category:</td>
                    <td class="ColumnInput">
                        <asp:DropDownList ID="DropDownListSoftwareCategory" runat="server" Width="200px">
                                <asp:ListItem Value="-1">Select </asp:ListItem>

              <asp:ListItem>Accounting</asp:ListItem>
                                <asp:ListItem >Antivirus</asp:ListItem>
                                <asp:ListItem >CD / DVD Tools</asp:ListItem>
                                <asp:ListItem >Compression Tools</asp:ListItem>
                                <asp:ListItem >Database &amp; Reports</asp:ListItem>
                                <asp:ListItem >Dialer</asp:ListItem>
                                <asp:ListItem >Education</asp:ListItem>
                                <asp:ListItem>Graphics</asp:ListItem>
                                <asp:ListItem>Internet Tools</asp:ListItem>
                                <asp:ListItem>Microsoft</asp:ListItem>
                                <asp:ListItem >Admin Tools</asp:ListItem>
                                <asp:ListItem >MsOffice</asp:ListItem>
                                <asp:ListItem >Visual Studio</asp:ListItem>
                                <asp:ListItem >Windows Installer</asp:ListItem>
                                <asp:ListItem >Windows Setup</asp:ListItem>
                                <asp:ListItem >Mobile Tools</asp:ListItem>
                                <asp:ListItem >Multimedia</asp:ListItem>
                                <asp:ListItem >CD / DVD Utility</asp:ListItem>
                                <asp:ListItem >Codec</asp:ListItem>
                                <asp:ListItem >Convertors</asp:ListItem>
                                <asp:ListItem >Network Tools</asp:ListItem>
                                <asp:ListItem >Operating Systems</asp:ListItem>
                                <asp:ListItem >Linux</asp:ListItem>
                                <asp:ListItem >PDF Reader &amp; Writer</asp:ListItem>
                                <asp:ListItem >Project Management</asp:ListItem>
                                <asp:ListItem >System Tools</asp:ListItem>
                                <asp:ListItem >Authoring tools</asp:ListItem>
                                <asp:ListItem >DM Collection</asp:ListItem>
                                <asp:ListItem >Google Stuff</asp:ListItem>
                                <asp:ListItem >Setup Creaters</asp:ListItem>
                                <asp:ListItem >Utilities</asp:ListItem>
                                <asp:ListItem>Windows Ulities</asp:ListItem>
                                <asp:ListItem >Virtual Machine Tools</asp:ListItem>
                                <asp:ListItem >Web / App / Software Development</asp:ListItem>

                            </asp:DropDownList>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Name:</td>
                    <td class="ColumnInput">
                       <asp:TextBox ID="txtSoftwareName" runat="server" Width="300px" Height="40px" TextMode="MultiLine"></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
                  <tr>
                    <td class="ColumnLabel">Image:</td>
                    <td class="ColumnInput">
                        <asp:FileUpload ID="FileUploadSoftwareImage" runat="server" Width="300px" /> 
                        &nbsp;<%--</td>--%><asp:RegularExpressionValidator ID="RegExValFileUploadFileType" runat="server"
                        ControlToValidate="FileUploadSoftwareImage" ForeColor="Red"
                        ErrorMessage="*Only .jpg,.png,.jpeg,.gif Files are allowed" Font-Bold="True"
                        Font-Size="Medium"
                        ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="ColumnLabel">Version:</td>
                    <td class="ColumnInput">
                        <asp:TextBox ID="txtSoftwareVersion" runat="server" MaxLength="150" Width="300px"></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
              
                 <tr>
                    <td class="ColumnLabel">Description:</td>
                    <td class="ColumnInput">
                        <asp:TextBox ID="txtDescription" runat="server" MaxLength="150" Width="300px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Download Link:</td>
                    <td class="ColumnInput">
                        <span class = "RequiredFieldStar">
                        <asp:TextBox ID="txtDownloadLink" runat="server" MaxLength="255" Rows="2" Height="50px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                        *</span>&nbsp;&nbsp; 
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
            <asp:HiddenField ID="hfSoftwareID" runat="server" />
       </asp:Panel>

         </div>
     <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    </div>
</asp:Content>
