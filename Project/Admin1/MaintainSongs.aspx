<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1/BoloAdmin.Master" AutoEventWireup="true" CodeBehind="MaintainSongs.aspx.cs" Inherits="Bolo.Admin1.MaintainSongs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="Container">
        <div class="PageTitle">
            Songs List
        </div>

        <div class="GridViewContainer"> 

            <div class="GridView">
                 <asp:GridView ID="dgvSongs" runat="server" Width="100%" AllowPaging="True" AllowSorting="false" BackColor="White"
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"
                    DataKeyNames="pkSongID"  style="margin-left: 0px" OnPageIndexChanging="dgvSongs_PageIndexChanging" OnRowCommand="dgvSongs_RowCommand" OnRowCreated="dgvSongs_RowCreated" OnRowDataBound="dgvSongs_RowDataBound" OnSelectedIndexChanging="dgvSongs_SelectedIndexChanging">
                    <AlternatingRowStyle BackColor="Gainsboro" BorderStyle="Solid" 
            BorderWidth="1px" />

                     <Columns>
                       <asp:BoundField DataField="pkSongID" HeaderText="pkSongID" 
                Visible="False" SortExpression="pkSongID"  />

                <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                    <asp:Button ID="btnSelect" runat="server" CausesValidation="False" Height="35"
                        Text="Select" UseSubmitBehavior="False" Width="75" />
                    <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                </ItemTemplate>
                <ControlStyle Font-Bold="True" />
                <HeaderStyle Width="100px" HorizontalAlign="Center" />
            </asp:TemplateField>                                           

                <asp:BoundField DataField="varSongType" HeaderText="Category" 
                ReadOnly="True" SortExpression="varSongType"/>
                <asp:BoundField DataField="varSongName" HeaderText="Song Name" ReadOnly="true" SortExpression="varSongName" ItemStyle-Width="250px" ItemStyle-Wrap="false" >
                <HeaderStyle Width="200px" />
                <ItemStyle Width="200px" />
                </asp:BoundField>
                 <asp:TemplateField HeaderText="Description">
                <ItemTemplate>
                        <asp:TextBox ID ="txtSongDescription" ReadOnly="true" TextMode="multiline" Rows="3" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtSongDescription") %>'></asp:TextBox>
                </ItemTemplate>
                     </asp:TemplateField>

                         <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                        <asp:TextBox ID ="txtSongImage" ReadOnly="true" TextMode="multiline" Rows="3" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtSongImage") %>'></asp:TextBox>
                </ItemTemplate>
                     </asp:TemplateField>
                          <asp:BoundField DataField="varSingerName" HeaderText="Singer" ReadOnly="true" SortExpression="varSingerName"  />
                <asp:BoundField DataField="varSongAlbum" HeaderText="Song Album" ReadOnly="true" SortExpression="varSongAlbum"  />
                
                <asp:TemplateField HeaderText="Cast">
                <ItemTemplate>
                        <asp:TextBox ID ="varSongCast" ReadOnly="true" TextMode="multiline" Rows="3" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("varSongCast") %>'></asp:TextBox>
                </ItemTemplate>
                    </asp:TemplateField>
                         
                         <asp:BoundField DataField="varMusicDirector" HeaderText="Song Director" ReadOnly="true" SortExpression="varMusicDirector"  />

                         <asp:BoundField DataField="varLyricist" HeaderText="Lyricist" ReadOnly="true" SortExpression="varLyricist"  />

                          <asp:TemplateField HeaderText="Download Link">
                <ItemTemplate>
                        <asp:TextBox ID ="txtDownloadLink" ReadOnly="true" TextMode="multiline" Rows="3" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtDownloadLink") %>'></asp:TextBox>
                </ItemTemplate>
                     </asp:TemplateField>

                <asp:BoundField DataField="dteSongReleaseDate" HeaderText="Release Date" ReadOnly="true" SortExpression="dteSongReleaseDate" DataFormatString="{0:MM/dd/yyyy}" />  <%--{0:MM/dd/yyyy}--%>                                        
                            
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

        <asp:Panel ID="SongForm" runat="server" CssClass="Form" Width="32%" Visible="false">
            <table>
                 <tr>
                    <td class="ColumnLabel">Category:</td>
                    <td class="ColumnInput">
                        <asp:DropDownList ID="DropDownListSongCategory" runat="server" Width="200px">
                                <asp:ListItem Value="-1">Select </asp:ListItem>
                                <asp:ListItem>Hollywood</asp:ListItem>
                                <asp:ListItem>Bollywood</asp:ListItem>
                            </asp:DropDownList>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Song Name:</td>
                    <td class="ColumnInput">
                      <asp:TextBox ID="txtSongName" runat="server" Width="300px"></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
                 <tr>
                    <td class="ColumnLabel">Description:</td>
                    <td class="ColumnInput">
                        <asp:TextBox ID="txtSongDescription" runat="server" MaxLength="150" Width="300px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
                  <tr>
                    <td class="ColumnLabel">Image:</td>
                    <td class="ColumnInput">
                        <asp:FileUpload ID="FileUploadSongImage" runat="server" Width="300px" />
                        &nbsp;<%--</td>--%><asp:RegularExpressionValidator ID="RegExValFileUploadFileType" runat="server"
                        ControlToValidate="FileUploadSongImage" ForeColor="Red"
                        ErrorMessage="*Only .jpg,.png,.jpeg,.gif Files are allowed" Font-Bold="True"
                        Font-Size="Medium"
                        ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                 <tr>
                    <td class="ColumnLabel">Singer Name:</td>
                    <td class="ColumnInput">
                        <asp:TextBox ID="txtSingerName" runat="server" Width="300px" ></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>

                <tr>
                    <td class="ColumnLabel">Song Album:</td>
                    <td class="ColumnInput">
                        <asp:TextBox ID="txtSongAlbum" runat="server" Width="300px" ></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>

                 <tr>
                    <td class="ColumnLabel">Cast:</td>
                    <td class="ColumnInput">
                        <asp:TextBox ID="txtSongCast" runat="server" MaxLength="150" Width="300px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Music Director:</td>
                    <td class="ColumnInput">
                        <asp:TextBox ID="txtSongDirector" runat="server" Width="300px" ></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Lyricist:</td>
                    <td class="ColumnInput">
                        <asp:TextBox ID="txtLyricist" runat="server" Width="300px" ></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
                
                 <tr>
                    <td class="ColumnLabel">Download Link:</td>
                    <td class="ColumnInput">
                        <asp:TextBox ID="txtDownloadLink" runat="server" MaxLength="150" Width="300px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
                 <tr>
                    <td class="ColumnLabel">Release Date:</td>
                    <td class="ColumnInput">
                      <input type="date" runat="server" id="ClnReleaseDate" name="ClnReleaseDate"/>
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
            <asp:HiddenField ID="hfSongID" runat="server" />
       </asp:Panel>
    </div>
    <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false" ></asp:Label>
    </div>
</asp:Content>
