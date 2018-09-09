<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1/BoloAdmin.Master" AutoEventWireup="true" CodeBehind="MaintainIstikara.aspx.cs" Inherits="Bolo.Admin1.MaintainIstikara" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
     <div class="Container">
        <div class="PageTitle">
            Istikara List
             </div>

          <div class="GridViewContainer">
                <div class="GridView">

                      <asp:GridView ID="dgvIstikara" runat="server" Width="100%" AllowPaging="true" AllowSorting="false" BackColor="White"
                       DataKeyNames="pkIstikaraID"   AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="dgvIstikara_PageIndexChanging" OnRowCommand="dgvIstikara_RowCommand" OnRowCreated="dgvIstikara_RowCreated" OnRowDataBound="dgvIstikara_RowDataBound" OnSelectedIndexChanging="dgvIstikara_SelectedIndexChanging" >
                        <AlternatingRowStyle BackColor="Gainsboro" BorderWidth="1px" BorderStyle="Solid" />

                          <Columns>
                       <asp:BoundField DataField="pkIstikaraID" HeaderText="pkIstikaraID" Visible="False" SortExpression="pkIstikaraID"  />

                <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                    <asp:Button ID="btnSelect" runat="server" CausesValidation="False" Height="35"
                        Text="Select" UseSubmitBehavior="False" Width="75" />
                    <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                </ItemTemplate>
                <ControlStyle Font-Bold="True" />
                <HeaderStyle Width="100px" HorizontalAlign="Center" />
            </asp:TemplateField>                                           
               
                 <asp:TemplateField HeaderText="Address">
                <ItemTemplate>
                        <asp:TextBox ID ="txtAddress" ReadOnly="true" TextMode="multiline" Rows="3" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtAddress") %>'></asp:TextBox>
                </ItemTemplate>
                     </asp:TemplateField>
               
                              <asp:BoundField DataField="varCountry" HeaderText="Country" ReadOnly="true" SortExpression="varCountry" >
                </asp:BoundField>
                              <asp:BoundField DataField="varCity" HeaderText="City" ReadOnly="true" SortExpression="varCity">
                </asp:BoundField>
                              <asp:BoundField DataField="varEmail" HeaderText="Email" ReadOnly="true" SortExpression="varEmail" ItemStyle-Width="100px" ItemStyle-Wrap="false" >
                </asp:BoundField>
                              <asp:BoundField DataField="varContactNumber" HeaderText="Contact Number" ReadOnly="true" SortExpression="varContactNumber">
                </asp:BoundField>
                              <asp:BoundField DataField="varTopic" HeaderText="Topic" ReadOnly="true" SortExpression="varTopic">
                </asp:BoundField>
                              <asp:BoundField DataField="varPatientName" HeaderText="Patient Name" ReadOnly="true" SortExpression="varPatientName" ItemStyle-Width="200px" ItemStyle-Wrap="false" >
                </asp:BoundField>
                              <asp:BoundField DataField="varPatientMotherName" HeaderText="Patient's Mother Name" ReadOnly="true" SortExpression="varPatientMotherName">
                </asp:BoundField>
      <asp:TemplateField HeaderText="Patient Problem">
                <ItemTemplate>
                        <asp:TextBox ID ="txtPatientProblem" ReadOnly="true" TextMode="multiline" Rows="3" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtPatientProblem") %>'></asp:TextBox>
                </ItemTemplate>
                     </asp:TemplateField>

                <asp:BoundField DataField="varStatus" HeaderText="Status" ReadOnly="true" SortExpression="varStatus"/>  <%--{0:MM/dd/yyyy}--%>
                
                           
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
                <%--<td align="left"><asp:Button ID="btnNew" runat="server" Text="New News" CssClass="CommandButton" OnClick="btnNew_Click" CausesValidation="False" Height="35px" /></td>--%>
                <td align="right"><asp:Button ID="btnDelete" runat="server" Text="Delete" OnClientClick="javascript:return confirm('Are you sure you want to permanently delete selected item(s)?');" CssClass="CommandButton" OnClick="btnDelete_Click" CausesValidation="False" Height="35px" /></td>
            </tr>
        </table>
         <asp:Panel ID="IstikaraForm" runat="server" CssClass="Form" Width="60%" Visible="false">
            <table>
                <tr>
                    <td class="ColumnLabel">Status:</td>
                    <td class="ColumnInput">
                        <asp:TextBox ID="txtStatus" runat="server" MaxLength="150" Width="200px"></asp:TextBox>
                        <span class="RequiredFieldStar">*</span></td>
                </tr>
               <%-- <tr>
                    <td class="ColumnLabel">Description:</td>
                    <td class="ColumnInput">
                        <span class = "RequiredFieldStar">
                        <asp:TextBox ID="txtDescription" runat="server" MaxLength="255" Rows="2" TextMode="MultiLine" Width="200px"></asp:TextBox>
                        *</span>&nbsp;&nbsp; 
                    </td>
                </tr>--%>              
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td><asp:Button ID="btnCancel" CssClass="CommandButton" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="False" Height="35px" /></td>
                    <td align ="right"><asp:Button ID="btnSave"  CssClass="CommandButton" runat="server" Text="Save" OnClick="btnSave_Click" Height="35px"/></td>
                </tr>
             </table>
            <asp:HiddenField ID="hfIstikaraID" runat="server" />
       </asp:Panel>  
         </div>
     <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    </div>
</asp:Content>
