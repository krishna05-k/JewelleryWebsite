]<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>
<!---Coding By CodingLab | www.codinglabweb.com--->
<html lang="en">
  <head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <!--<title>Registration Form in HTML CSS</title>-->
    <!---Custom CSS File--->
    <link rel="stylesheet" href="st.css" />
  </head>
  <body>
         <div class="main"> 
    <section class="container">
      <header>Registration Form</header>
      <form action="#" class="form" id="jj" runat="server">
            <div class="column">
        <div class="input-box">
          <label>First Name</label>
         <!-- <input type="text" placeholder="Enter full name" required />-->
            <asp:TextBox ID="fnm" runat="server" placeholder="Enter first name"  required></asp:TextBox>
        </div>
		 <div class="input-box">
          <label>Last Name</label>
             <asp:TextBox ID="lnm" runat="server" placeholder="Enter Last name" required></asp:TextBox>
        </div>
                </div>
		 <div class="gender-box">
          <h3>Gender</h3>
          <div class="gender-option">
            <div class="gender">
                <asp:RadioButton ID="RadioButton1" runat="server" text="male" GroupName="rd" Checked="True" />
            <!--  <label for="check-male">male</label>-->

            </div>
            <div class="gender">
                <asp:RadioButton ID="RadioButton2" runat="server" text="female" GroupName="rd" />
              
            </div>
            <div class="gender">
               <asp:RadioButton ID="RadioButton3" runat="server" text="prefer not to say" GroupName="rd" />
              
            </div>
          </div>
        </div>
		 
          <div class="input-box">
            <label>Contact Number</label>
              <asp:TextBox ID="cno" runat="server" placeholder="Enter Contact number"  required></asp:TextBox>
               <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="cno" ErrorMessage="Enter valid number !!" ForeColor="White" MaximumValue="9999999999" MinimumValue="1111111111" Type="Double"></asp:RangeValidator>
          </div>

           <div class="column">
        <div class="input-box">
         <label>Email Address</label>
            <asp:TextBox ID="email" runat="server" placeholder="Enter email address" required></asp:TextBox>&nbsp<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter valid email !!" ForeColor="White" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
		 <div class="input-box">
          <label>Address</label>
            <asp:TextBox ID="add" runat="server" placeholder="Enter address" required></asp:TextBox>
        </div>
                </div>
            <div class="column">
          <div class="input-box">
          <label>Username</label>
              <asp:TextBox ID="unm" runat="server" placeholder="Username" required ></asp:TextBox>
          
        </div>
		 <div class="input-box">
          <label>Password</label>
             <asp:TextBox ID="pwd" runat="server" placeholder="Password" type="password" required></asp:TextBox>
         
        </div>
                </div>
		 <div class="input-box">
          <label>Confirm Password</label>
             <asp:TextBox ID="cpwd" runat="server" placeholder="Confirm password" type="password" required></asp:TextBox>
             <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Invalid password" ControlToValidate="cpwd" ControlToCompare="pwd" ForeColor="White">
</asp:CompareValidator>
        </div>
		<!--<div class="input-box">
          <label>Role</label>
          <div class="column">
		     
            <div class="select-box">
                <asp:DropDownList ID="DropDownList1" runat="server">
                      <asp:ListItem Value="user">User</asp:ListItem>
                      <asp:ListItem Value="admin">Admin</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        </div>-->
	
            
          <asp:Button ID="submit" runat="server" Text="Submit" Height="48px" Width="550px" BackColor="#573b8a" BorderColor="Black" Font-Bold="True" ForeColor="White" Font-Overline="False" Font-Size="Medium" OnClick="submit_Click" />
          </br></br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
          <asp:Label ID="Label1" runat="server" Text="Do you want to exit the registration form ?  " ForeColor="White" CssClass="signup"></asp:Label> &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" BorderStyle="None" ForeColor="#3399FF" NavigateUrl="~/homee.aspx">Back</asp:HyperLink>
      
      </form>
	  </div>
    </section>
      
      
  </body>
</html>
