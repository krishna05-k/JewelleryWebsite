<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="Admin_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Balmukund jewellers</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/lll.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Nov 17 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="index.html" class="logo d-flex align-items-center w-auto">
                  <img src="../images/logo6.jpg" alt="">
                  <span class="d-none d-lg-block">Balmukund Jewellers</span>
                </a>
              </div><!-- End Logo -->

         <asp:Panel ID="Panel1" runat="server" BackColor="White">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Create an Account</h5>
                    <p class="text-center small">Enter your personal details to create account</p>
                  </div>

                    <div class="col-12">
                        <label class="form-label" for="yourName">
                        First Name</label>
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" required></asp:TextBox>
                        <div class="invalid-feedback">
                            Please, enter your name!</div>
                    </div>
                    <div class="col-12">
                        <label class="form-label" for="yourName">
                        Last Name</label>
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" required></asp:TextBox>
                        <div class="invalid-feedback">
                            Please, enter your name!</div>
                    </div>
                    <br>
                    <div class="col-12">
                        <label class="form-label" for="yourName">
                        Gender</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <!--     <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>-->
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
                        <div class="invalid-feedback">
                            Please, enter your name!</div>
                    </div>
                    <br>
                    <div class="col-12">
                        <label class="form-label" for="yourName">
                        Contact No</label>
                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" required></asp:TextBox>
                        <div class="invalid-feedback">
                            Please, enter your name!</div>
                    </div>
                    <div class="col-12">
                        <label class="form-label" for="yourEmail">
                        Your Email</label>
                        <asp:TextBox ID="TextBox5" runat="server" class="form-control" required></asp:TextBox>
                        <div class="invalid-feedback">
                            Please enter a valid Email adddress!</div>
                    </div>
                    <div class="col-12">
                        <label class="form-label" for="yourName">
                        Address</label>
                        <asp:TextBox ID="TextBox6" runat="server" class="form-control" required></asp:TextBox>
                        <div class="invalid-feedback">
                            Please, enter your name!</div>
                    </div>
                    <div class="col-12">
                        <label class="form-label" for="yourUsername">
                        Username</label>
                        <div class="input-group has-validation">
                            <span id="inputGroupPrepend" class="input-group-text">@</span>
                            <asp:TextBox ID="TextBox7" runat="server" class="form-control" required></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-12">
                        <label class="form-label" for="yourPassword">
                        Password</label>
                         <asp:TextBox ID="TextBox9" runat="server" class="form-control" type="password"></asp:TextBox>
                        <div class="invalid-feedback">
                            Please enter your password!</div>
                        </input></div>
                    <div class="col-12">
                        <label class="form-label" for="yourPassword">
                        Confirm Password</label>
                       <asp:TextBox ID="TextBox8" runat="server" class="form-control" type="password"></asp:TextBox>
         <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Invalid password" ControlToValidate="TextBox8" ControlToCompare="TextBox9" Font-Bold="True" ForeColor="White"></asp:CompareValidator>

                        <div class="invalid-feedback">
                            Please enter your password!</div>
                        </input></div>
                    <div class="col-12">
                        <div class="form-check">
                            <input id="acceptTerms" class="form-check-input" name="terms" required="" type="checkbox" value="">
                            <label class="form-check-label" for="acceptTerms">
                            I agree and accept the <a href="#">terms and conditions</a></label>
                            <div class="invalid-feedback">
                                You must agree before submitting.</div>
                            </input></div>
                    </div>
                    <div class="col-12">
                        <asp:Button ID="Button1" runat="server" class="btn btn-primary w-100" OnClick="Button1_Click1" Text="Submit" />
                    </div>
                    </br>
                    </br>

                </div>
              </asp:Panel>

              <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
        
              </div>

            </div>
          </div>
        </div>

      </section>

    </div>
  </main>

    </div>
    </form>
</body>
</html>
