<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="ZDefault.aspx.cs" Inherits="Bolo._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- stylesheets -->
	<link rel="stylesheet" href="Styles/bootstrap.min.css"/>
	<link rel="stylesheet" href="Styles/style.css"/>
	<!-- google fonts  -->
	<link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet"/>
	<link href="//fonts.googleapis.com/css?family=Josefin+Sans:300,400,400i,700" rel="stylesheet"/>
    <title>BOLO | Socho Nahi Ab Bolo</title>
</head>
<body>
     <div class="w3ls-banner">
	    <div>
		    <a href="http://bolo.com.pk">
				<img src="images/banner.jpg" style="width:100%"/>                
			</a>
        </div>
        <div class="container" style="position:relative">
            <div class="heading">
				<h2>Free Registration for Limited Time</h2>
                <br />
                <h4> BOLO KAY SATH KAMAO</h4>
                <br />
                <h6> BOLO COMING SOON!</h6>
			</div>
                <form id="form1" runat="server">
                    <div class="form-group">
                         <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                     </div> 
                       <div class="form-group">
                            <label class="form-label"> 
					            First Name :
						        <span class="form-required"> * </span>
					        </label>
                            <div class="form-input">  
                                <asp:TextBox ID="txtFirstName" runat="server"  MaxLength="255"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label"> 
					            Last Name :
						        <span class="form-required"> * </span>
					        </label>
                            <div class="form-input">  
                                <asp:TextBox ID="txtLastName" runat="server" MaxLength="255"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label"> 
					            Address :
						        <span class="form-required"> * </span>
					        </label>
                            <div class="form-input">  
                                <asp:TextBox id="txtAddress" TextMode="multiline" Rows="5" runat="server"  MaxLength="255" ForeColor="Black"/>
                            </div>
                        </div> 
                    <div class="form-group">
                            <label class="form-label"> 
					            City :
						        <span class="form-required"> * </span>
					        </label>
                            <div class="form-input">  
                                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    <div class="form-group">
                            <label class="form-label"> 
					            State/Province :
						        <span class="form-required"> * </span>
					        </label>
                            <div class="form-input">  
                                <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                            </div>
                        </div>    
                    <div class="form-group">
                            <label class="form-label"> 
					            Country :
						        <span class="form-required"> * </span>
					        </label>
                            <div class="form-input">  
                                <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        
                    <div class="form-group">
                            <label class="form-label"> 
					            Email :
						        <span class="form-required"> * </span>
					        </label>
                            <div class="form-input">  
                                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" MaxLength="256"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label"> 
					            Cell Phone / Mobile :
						        <span class="form-required"> * </span>
					        </label>
                            <div class="form-input">  
                                <asp:TextBox ID="txtCellPhone" runat="server" TextMode="Phone" MaxLength="20"></asp:TextBox>
                            </div>
                        </div>
                    <div class="form-group">
                            <label class="form-label"> 
					            Othor Phone :
						        <span class="form-required">  </span>
					        </label>
                            <div class="form-input">  
                                <asp:TextBox ID="txtOtherPhone" runat="server" TextMode="Phone" MaxLength="20"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label"> 
					            CNIC Number:
						        <span class="form-required"> * </span>
					        </label>
                            <div class="form-input">  
                                <asp:TextBox ID="txtCNIC" runat="server" MaxLength="20"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label"> 
					            Reference Name :
						        <span class="form-required">  </span>
					        </label>
                            <div class="form-input">  
                                <asp:TextBox ID="txtReferenceName" runat="server" MaxLength="255"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label"> 
					            Reference Contact Email/Phone/Address :
						        <span class="form-required">  </span>
					        </label>
                            <div class="form-input">  
                                <asp:TextBox ID="txtReferenceContactNumber" runat="server" TextMode="Phone" MaxLength="255" Width="407px"></asp:TextBox>
                            </div>
                        </div>
                        <hr />
                        <h5>Create your user login ID</h5>
                        <br />
                        <div class="form-group">
                            <label class="form-label"> 
					            User ID :
						        <span class="form-required"> * </span>
					        </label>
                            <div class="form-input">  
                                <asp:TextBox ID="txtUserID" runat="server" MaxLength="150"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label"> 
					            Password :
						        <span class="form-required"> * </span>
					        </label>
                            <div class="form-input">  
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="12"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label"> 
					           Confirm Password :
						        <span class="form-required"> * </span>
					        </label>
                            <div class="form-input">  
                                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" MaxLength="12"></asp:TextBox>
                            </div>
                        </div>
                        
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="register_Click"/>
                    <asp:HiddenField ID="hfRegistrationID" runat="server" Value="0" />
            </form>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
        <img src="images/thumbnail_base%20bottom.jpg" style="width:100%;margin-top:1.5%" />
    </div>
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>