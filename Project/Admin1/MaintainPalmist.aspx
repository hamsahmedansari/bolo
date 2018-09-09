<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1/BoloAdmin.Master" AutoEventWireup="true" CodeBehind="MaintainPalmist.aspx.cs" Inherits="Bolo.Admin1.MaintainPalmist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="Container">

        <div class="PageTitle">
            Palmist List
        </div>
        <div class="GridViewContainer">
            <div class="GridView">

                <asp:GridView ID="dgvPalm" runat="server"  Width="100%"
                     AllowPaging="true" AllowSorting="false" BackColor="White" 
    DataKeyNames="pkPalmID"  AutoGenerateColumns="false" OnPageIndexChanging="dgvPalm_PageIndexChanging" OnRowCommand="dgvPalm_RowCommand" OnRowCreated="dgvPalm_RowCreated" OnRowDataBound="dgvPalm_RowDataBound" OnSelectedIndexChanging="dgvPalm_SelectedIndexChanging">    
    <AlternatingRowStyle BackColor="Gainsboro" BorderStyle="Solid" BorderWidth="1px" />

 <Columns>
<asp:BoundField DataField="pkPalmID" Visible="false" HeaderText="pkPalmID" ReadOnly="true" />
    <asp:TemplateField HeaderText="Select">
    <ItemTemplate>
 <asp:Button ID="btnSelect" runat="server" CausesValidation="false" Height="35"
 Text="Select" UseSubmitBehavior="false" Width="75" />
 <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
    </ItemTemplate>
 <ControlStyle Font-Bold="true" />
 <HeaderStyle Width="100px" HorizontalAlign="Center" />
    </asp:TemplateField>
        <asp:BoundField DataField="varFullName" HeaderText="Name" ReadOnly="true" SortExpression="Name" ItemStyle-Width="150" ItemStyle-Wrap="false" >
</asp:BoundField>

<asp:BoundField DataField="dteDateOfBirth" HeaderText="Date Of Birth" ReadOnly="true" ItemStyle-Width="150px" />
<asp:BoundField DataField="varFatherName" HeaderText="Father Name" ReadOnly="true" ItemStyle-Width="150px" />
<asp:BoundField DataField="dteFatherDateOfBirth" HeaderText="Father's Date of Birth" ReadOnly="true" ItemStyle-Width="150px" />
<asp:BoundField DataField="varMotherName" HeaderText="Mother Name" ReadOnly="true" ItemStyle-Width="150px" />
     <asp:BoundField DataField="dteMotherDateOfBirth" HeaderText="Mother's Date of Birth" ReadOnly="true" ItemStyle-Width="150px" />
     <asp:BoundField DataField="varEmail" HeaderText="Email" ReadOnly="true" ItemStyle-Width="150px" ItemStyle-Wrap="false" />
      <asp:BoundField DataField="varContactNumber" HeaderText="Contact Number" ReadOnly="true" ItemStyle-Width="150px" />

<asp:TemplateField HeaderText="Left Hand Image">
<ItemTemplate>
<asp:TextBox ID="txtLeftHandImage" ReadOnly="true" TextMode="MultiLine" Rows="2" runat="server" ForeColor="Black" Text='<%# Bind("txtLeftHandImage") %>' ></asp:TextBox>
</ItemTemplate>
</asp:TemplateField>
     <asp:TemplateField HeaderText="Right Hand Image">
<ItemTemplate>
<asp:TextBox ID="txtRightHandImage" ReadOnly="true" TextMode="MultiLine" Rows="2" runat="server" ForeColor="Black" Text='<%# Bind("txtRightHandImage") %>' ></asp:TextBox>
</ItemTemplate>
</asp:TemplateField>
<asp:BoundField DataField="varStatus" HeaderText="Status" ReadOnly="true" ItemStyle-Width="150px" />
        <%--<asp:BoundField DataField = "dteDateAdded" HeaderText = "Date Added" ReadOnly="true" DataFormatString="{0:D}" />--%>
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
            <td align="left">
                <%--<asp:Button ID="btnNew" runat="server" Text="Add New" CssClass="CommandButton" OnClick="btnNew_Click" CausesValidation="false" Height="35px" Visible="false" />--%>
            </td>
            <td align="right">
                <asp:Button ID="btnDelete" runat="server" Text="Delete Record" OnClientClick="javascript:return confirm('Are you sure you want to permanently delete selected item(s)?');" CssClass="CommandButton" OnClick="btnDelete_Click" CausesValidation="False" Height="35px" />
            </td>
        </tr>
    </table>

        <asp:Panel ID="PalmistForm" runat="server" CssClass="Form" Width="60%" Visible="false">
        <table>
         <tr>
            <td class="ColumnLabel">Status:</td>
            <td class="ColumnInput">
              <asp:TextBox ID="txtStatus" runat="server" MaxLength="250" Width="200px"></asp:TextBox>
              <span class="RequiredFieldStar">*</span>
            </td>
         </tr>
         <tr>
           <td><asp:Button ID="btnCancel" CssClass="CommandButton" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="False" Height="35px" /></td>
           <td align ="right"><asp:Button ID="btnSave"  CssClass="CommandButton" runat="server" Text="Save" OnClick="btnSave_Click" Height="35px"/></td>
        </tr>
        </table>
    </asp:Panel>
    <asp:HiddenField ID="hfPalmID" runat="server" />
    </div>
     <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    </div>
</asp:Content>
