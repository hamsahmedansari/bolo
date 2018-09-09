<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1/BoloAdmin.Master" AutoEventWireup="true" CodeBehind="MaintainResume.aspx.cs" Inherits="Bolo.Admin1.MaintainResume" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="PageTitle">
        Resume List
    </div>
    <div class="GridViewContainer">
        <div class="GridView">
            <asp:GridView ID="dgvResume" runat="server" Width="100%" AllowPaging="true" AllowSorting="false" BackColor="White"
               AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="dgvResume_PageIndexChanging"
                 OnRowDataBound="dgvResume_RowDataBound" DataKeyNames="pkCVID" style="margin-left:0px;">
                <Columns>
                    <asp:BoundField DataField="pkCVID" Visible="false" HeaderText="pkCVID" ReadOnly="true" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnSelect" runat="server" CausesValidation="false" Height="35"
                                Text="Select" UseSubmitBehavior="false" Width="75" />
                            <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                        </ItemTemplate>
                        <ControlStyle Font-Bold="true" />
                        <HeaderStyle Width="100px" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="varName" HeaderText="Name" ReadOnly="true" SortExpression="ResumeList" ItemStyle-Width="150">
                    <ItemStyle Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="varEmail" HeaderText="Email" ReadOnly="true" ItemStyle-Width="150px" />
                    <asp:BoundField DataField="varContactNo" HeaderText="Contact Number" ReadOnly="true" ItemStyle-Width="150px" />
                    <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <asp:TextBox ID="txtAddress" ReadOnly="true" TextMode="MultiLine" Rows="2" runat="server" MaxLength="250" ForeColor="Black" Text='<%# Bind("txtAddress") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="txtCVImageUrl" HeaderText="Image" ReadOnly="true" ItemStyle-Width="150px" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
        </div>
    </div>
            <div align="right">
                <asp:Button ID="btnDelete" runat="server" Text="Delete Record" OnClientClick="javascript:return confirm('Are you sure you want to permanently delete selected item(s)?');" CssClass="CommandButton" OnClick="btnDelete_Click" CausesValidation="False" Height="35px" />
            </div>
            <asp:HiddenField ID="hfCVID" runat="server" />
    <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    </div>
</asp:Content>
