﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1/BoloAdmin.Master" AutoEventWireup="true" CodeBehind="MaintainLiveTv.aspx.cs" Inherits="Bolo.Admin1.MaintainLiveTv" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="Container">
        <div class="PageTitle">
            Live Tv List
        </div>
        <div class="GridViewContainer">
            <div class="GridView">
               
                <asp:GridView  ID="dgvLiveTv" runat="server" Width="100%" AllowPaging="true" AllowSorting="false" BackColor="White"
                       DataKeyNames="pkLiveTvID"   AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="dgvLiveTv_PageIndexChanging" OnRowCommand="dgvLiveTv_RowCommand" OnRowCreated="dgvLiveTv_RowCreated" OnRowDataBound="dgvLiveTv_RowDataBound" OnSelectedIndexChanging="dgvLiveTv_SelectedIndexChanging">
                     <AlternatingRowStyle BackColor="Gainsboro" BorderWidth="1px" BorderStyle="Solid" />

                    <Columns>
                       <asp:BoundField DataField="pkLiveTvID" HeaderText="pkLiveTvID" Visible="False" SortExpression="pkLiveTvID"  />

                <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                    <asp:Button ID="btnSelect" runat="server" CausesValidation="False" Height="35"
                        Text="Select" UseSubmitBehavior="False" Width="75" />
                    <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                </ItemTemplate>
                <ControlStyle Font-Bold="True" />
                <HeaderStyle Width="100px" HorizontalAlign="Center" />
            </asp:TemplateField>                                           

                <asp:BoundField DataField="varTvName" HeaderText="Channel Name" ReadOnly="true" SortExpression="varTvName" ItemStyle-Width="250px" ItemStyle-Wrap="false" >
                <HeaderStyle Width="200px" />
                <ItemStyle Width="200px" />
                </asp:BoundField>               

                <asp:TemplateField HeaderText="Tv Image">
                <ItemTemplate>
                        <asp:TextBox ID ="txtTvImage" ReadOnly="true" TextMode="multiline" Width="250px" Rows="3" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtTvImage") %>'></asp:TextBox>
                </ItemTemplate>
                    </asp:TemplateField>

            <asp:TemplateField HeaderText="Embed Link">
                <ItemTemplate>
                        <asp:TextBox ID ="txtEmbedLink" ReadOnly="true" TextMode="multiline" Rows="3" Width="250px" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtEmbedLink") %>'></asp:TextBox>
                </ItemTemplate>
                     </asp:TemplateField>
                <%--<asp:BoundField DataField="dteNewsDate" HeaderText="News Date" ReadOnly="true" SortExpression="dteNewsDate" DataFormatString="{0:MM/dd/yyyy}" />--%>  <%--{0:MM/dd/yyyy}--%>
                
                           
                            <asp:CommandField ShowSelectButton="True" SelectText="Edit" ButtonType="Button" ControlStyle-Height="35" ControlStyle-Width="75" >
                <ControlStyle Height="35px" Width="75px"></ControlStyle>   
                                 </asp:CommandField>          
                    </Columns>

                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <EditRowStyle BackColor="#999999" />
                     <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                     <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
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
        <asp:Panel ID="LiveTvForm" runat="server" CssClass="Form" Width="55%" Visible="false">
            <table style="width: 503px">
                
                <tr>
                    <td class="ColumnLabel">Name:</td>
                    <td class="ColumnInput">
                      <asp:TextBox ID="txtChannelName" runat="server" Width="250px"></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>                              
                 
                  <tr>
                    <td class="ColumnLabel">Image:</td>
                    <td class="ColumnInput">
                        <asp:FileUpload ID="FileUploadTvImage" runat="server" Width="300px" />
                        &nbsp;<%--</td>--%><asp:RegularExpressionValidator ID="RegExValFileUploadFileType" runat="server"
                        ControlToValidate="FileUploadTvImage" ForeColor="Red"
                        ErrorMessage="*Only .jpg,.png,.jpeg,.gif Files are allowed" Font-Bold="True"
                        Font-Size="Medium"
                        ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Embed Link:</td>
                    <td class="ColumnInput">
                        <asp:TextBox ID="txtEmbedLink" runat="server" MaxLength="200" Width="250px" Height="50px" TextMode="MultiLine"></asp:TextBox>
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
            <asp:HiddenField ID="hfNewsID" runat="server" />
       </asp:Panel>
        </div>
     <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    </div>

</asp:Content>
