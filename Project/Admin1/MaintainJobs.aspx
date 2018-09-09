<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1/BoloAdmin.Master" AutoEventWireup="true" CodeBehind="MaintainJobs.aspx.cs" Inherits="Bolo.Admin1.MaintainJobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="Container">

        <div class="PageTitle">
            Jobs List
        </div>
        <div class="GridViewContainer">
            <div class="GridView">
                <asp:GridView ID="dgvJobs" runat="server" Width="100%" AllowPaging="True" BackColor="White"
                  AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="pkJobID" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand" OnRowCreated="GridView1_RowCreated" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                    <AlternatingRowStyle BackColor="Gainsboro" BorderStyle="Solid" BorderWidth="1px" />




                    <FooterStyle BackColor="#5D7B9B" Font-Bold="true" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField  DataField="pkJobID" Visible ="False" HeaderText="pkJobID" ReadOnly="True"/>
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
                            <asp:TextBox ID ="txtJobImageUrl" ReadOnly="true" TextMode="multiline" Rows="2" runat="server"  MaxLength="255" ForeColor="Black" Width="300px" Text='<%# Bind("txtJobImageUrl") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Location">
                            <ItemTemplate>
                            <asp:TextBox ID ="varJobLocation" ReadOnly="true" TextMode="multiline" Rows="2" runat="server"  MaxLength="255" ForeColor="Black" Width="300px" Text='<%# Bind("varJobLocation") %>'></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:CommandField ShowSelectButton="True" SelectText="Edit" ButtonType="Button" ControlStyle-Height="35" ControlStyle-Width="75" >
<ControlStyle Height="35px" Width="75px"></ControlStyle>
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="true" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="true" ForeColor="White" />
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

        <asp:Panel ID="JobForm" runat="server" CssClass="Form" Width="60%" Visible="false" >
            <table>
                <tr>
                    <td class="ColumnLabel">Image:</td>
                    <td class="ColumnInput">
                      <asp:FileUpload ID="FileUploadJobsImage" runat="server" Width="300px" />
                        &nbsp;
                   <%-- </td>--%>
                    <asp:RegularExpressionValidator ID="RegExValFileUploadFileType" runat="server"
                        ControlToValidate="FileUploadJobsImage" ForeColor="Red"
                        ErrorMessage="*Only .jpg,.png,.jpeg,.gif Files are allowed" Font-Bold="True"
                        Font-Size="Medium"
                        ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="ColumnLabel">Job Location:</td>
                    <td class="ColumnInput">
                        <span class="RequiredFieldStar">
                        <asp:TextBox ID="txtJobsLocation" runat="server" Width="300px" TextMode ="MultiLine" MaxLength="255" Rows="3"></asp:TextBox> 
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
             <asp:HiddenField ID="hfJobsID" runat="server" />
        </asp:Panel>

    </div>

    <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    </div>
</asp:Content>
