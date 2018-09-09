<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1/BoloAdmin.Master" AutoEventWireup="true" CodeBehind="MaintainRegisteredUsers.aspx.cs" Inherits="Bolo.Admin1.MaintainRegisteredUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <div class="Container">
        <div class="PageTitle">
            Registered Users
        </div>
        <div class="GridViewContainer">
            <div class="GridView">
 <div class="GridViewContainer">

               <div class="GridView">

                   <asp:GridView ID="dgvUsers" runat="server" Width="100%" AllowPaging="True" AllowSorting="false" BackColor="White"
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"
                    DataKeyNames="pkRegistrationID"  style="margin-left: 0px" OnPageIndexChanging="dgvUsers_PageIndexChanging" OnRowCommand="dgvUsers_RowCommand" OnRowCreated="dgvUsers_RowCreated" OnRowDataBound="dgvUsers_RowDataBound" PageSize="20">
                    <AlternatingRowStyle BackColor="Gainsboro" BorderStyle="Solid" 
            BorderWidth="1px" />

                        <Columns>
                       <asp:BoundField DataField="pkRegistrationID" HeaderText="RegistrationID" 
                Visible="False" SortExpression="pkRegistrationID"  />

                <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                    <asp:Button ID="btnSelect" runat="server" CausesValidation="False" Height="35"
                        Text="Select" UseSubmitBehavior="False" Width="75" />
                    <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                </ItemTemplate>
                <ControlStyle Font-Bold="True" />
                <HeaderStyle Width="100px" HorizontalAlign="Center" />
            </asp:TemplateField>                                           

                <asp:BoundField DataField="varFirstName" HeaderText="First Name" 
                ReadOnly="True" SortExpression="varFirstName"/>
                <asp:BoundField DataField="varLastName" HeaderText="varLastName" ReadOnly="true" SortExpression="varLastName">
                </asp:BoundField>
                 <asp:TemplateField HeaderText="Address">
                <ItemTemplate>
                        <asp:TextBox ID ="txtAddress" ReadOnly="true" TextMode="multiline" Rows="3" runat="server"  MaxLength="255" ForeColor="Black" Text='<%# Bind("txtAddress") %>'></asp:TextBox>
                </ItemTemplate>
                     </asp:TemplateField>
                <asp:BoundField DataField="varCity" HeaderText="City" ReadOnly="true" SortExpression="varCity"  />
                
                <asp:BoundField DataField="varState" HeaderText="State" ReadOnly="true" SortExpression="varState"  />
                <asp:BoundField DataField="varCountry" HeaderText="Country" ReadOnly="true" SortExpression="varCountry"  />
                <asp:BoundField DataField="varEmailAddress" HeaderText="Email" ReadOnly="true" SortExpression="varEmailAddress"  />
               <asp:BoundField DataField="varCellPhone" HeaderText="CellPhone" ReadOnly="true" SortExpression="varCellPhone"  />
               <asp:BoundField DataField="varCNICNumber" HeaderText="CNIC Number" ReadOnly="true" SortExpression="varCNICNumber"  />
              <asp:BoundField DataField="varReferenceName" HeaderText="Reference Name" ReadOnly="true" SortExpression="varReferenceName"  />
             
               <asp:BoundField DataField="varReferenceContact" HeaderText="ReferenceContact" ReadOnly="true" SortExpression="varReferenceContact"  />
               <asp:BoundField DataField="varUserID" HeaderText="UserID" ReadOnly="true" SortExpression="varUserID"  />
             <asp:BoundField DataField="varPassword" HeaderText="Password" ReadOnly="true" SortExpression="varPassword"  />
             
                <asp:BoundField DataField="dteDateAdded" HeaderText="Registration Date" ReadOnly="true" SortExpression="dteDateAdded" DataFormatString="{0:MM/dd/yyyy}" />  <%--{0:MM/dd/yyyy}--%>

                
                            
                            <%--<asp:CommandField ShowSelectButton="True" SelectText="Edit" ButtonType="Button" ControlStyle-Height="35" ControlStyle-Width="75" >
                <ControlStyle Height="35px" Width="75px"></ControlStyle>   
                                 </asp:CommandField>    --%>      
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
                <%--<td align="left"><asp:Button ID="btnNew" runat="server" Text="Add New" CssClass="CommandButton" OnClick="btnNew_Click" CausesValidation="False" Height="35px" /></td>--%>
                <td align="right"><asp:Button ID="btnDelete" runat="server" Text="Delete Record" OnClientClick="javascript:return confirm('Are you sure you want to permanently delete selected item(s)?');" CssClass="CommandButton" OnClick="btnDelete_Click" CausesValidation="False" Height="35px" /></td>
            </tr>
        </table>
            </div>
        </div>
    </div>
  
    <div class="ResultsMessage">
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    </div>
</asp:Content>
