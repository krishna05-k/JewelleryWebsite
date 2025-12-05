<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="feedback1.aspx.cs" Inherits="feedback1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <!-- Start Main Top -->
    <header class="main-header">
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                    <a class="navbar-brand" href="homee.aspx"><img src="images/lll.png" class="logo" alt=""></a>
                </div>
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item "><a class="nav-link" href="homee.aspx">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="about.aspx">About Us</a></li>
                          <li class="dropdown">
                            <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Gallary</a>
                            <ul class="dropdown-menu">
								<li><a href="ring.aspx">Ring</a></li>
								<li><a href="nacklace.aspx">Nackless</a></li>
                                <li><a href="braslate.aspx">Braslate</a></li>
                                <li><a href="earrings.aspx">Bangles</a></li>
                          
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">SHOP</a>
                            <ul class="dropdown-menu">
							<!--	<li><a href="addToCart.aspx">Add To Cart</a></li>-->
							<!--	<li><a href="shop-detail.html">Shop Detail</a></li>-->
                                <li><a href="cart.aspx">Cart</a></li>
                                <li><a href="checkout.aspx">Checkout</a></li>
                                      <li><a href="order_status.aspx">Order Status</a></li>
                            <!--    <li><a href="my-account.html">My Account</a></li>-->
                            <!--    <li><a href="wishlist.html">Wishlist</a></li>-->
                            </ul>
                        </li>
                     <!--   <li class="nav-item"><a class="nav-link" href="gellery.aspx">Gallery</a></li>-->
                        
                        <li class="nav-item"><a class="nav-link" href="contact.aspx">Contact Us</a></li>
                        <li class="nav-item  active"><a class="nav-link" href="feedback.aspx">Feedback</a></li>
                     
                    </ul>
                </div>
                <!-- /.navbar-collapse -->

                <!-- Start Atribute Navigation -->
                <div class="attr-nav">
                    <ul>
                        <li class="search"><a href="cart.aspx"><i class="fa fa-search"></i></a></li>
                        <li class="side-menu">
							<a href="cart.aspx">
								<i class="fa fa-shopping-bag"></i>
								
								<p>My Cart</p>
							</a>
						</li>
                    </ul>
                </div>
                <!-- End Atribute Navigation -->
            </div>
            <!-- Start Side Menu -->
            <div class="side">
                <a href="#" class="close-side"><i class="fa fa-times"></i></a>
                <li class="cart-box">
                    <ul class="cart-list">
                        <li>
                            <a href="#" class="photo"><img src="images/img1.png" class="cart-thumb" alt="" /></a>
                            <h6><a href="#">Ring </a></h6>
                            <p>1x - <span class="price">50000</span></p>
                        </li>
                        <li>
                            <a href="#" class="photo"><img src="images/img1.png" class="cart-thumb" alt="" /></a>
                            <h6><a href="#">Braslate</a></h6>
                            <p>1x - <span class="price">60000</span></p>
                        </li>
                        <li>
                            <a href="#" class="photo"><img src="images/img1.png" class="cart-thumb" alt="" /></a>
                            <h6><a href="#">Nacklace</a></h6>
                            <p>1x - <span class="price">300000</span></p>
                        </li>
                        <li class="total">
                            <a href="#" class="btn btn-default hvr-hover btn-cart">VIEW CART</a>
                            <span class="float-right"><strong>Total</strong>: $180.00</span>
                        </li>
                    </ul>
                </li>
            </div>
            <!-- End Side Menu -->
        </nav>
        <!-- End Navigation -->
    </header>
    <!-- End Main Top -->

      <!-- Start Top Search -->
    <div class="top-search">
        <div class="container">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                <input type="text" class="form-control" placeholder="Search">
                <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
            </div>
        </div>
    </div>
    <!-- End Top Search -->

    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>FEEDBACK</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">FEEDBACK</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    
  
       <!-- Start Contact Us  -->
    <div class="contact-box-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-sm-12">
                    <div class="contact-form-right">
                        <h2>Feedback</h2>
                      <!--  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed odio justo, ultrices ac nisl sed, lobortis porta elit. Fusce in metus ac ex venenatis ultricies at cursus mauris.</p>-->
                        <form id="contactForm">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                       <asp:TextBox ID="t1" runat="server" class="form-control" placeholder="Enter your name" ></asp:TextBox>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                          <h3>Gender</h3>
                                           
                                              <asp:RadioButton ID="rb1" runat="server" text="Male" GroupName="rd"  class="form-control" Width="111px" />
                                        <asp:RadioButton ID="rb2" runat="server" text="female" GroupName="rd"  class="form-control" Width="108px" />
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                       <asp:TextBox ID="cn1" runat="server" placeholder="Enter Contact number"  class="form-control"></asp:TextBox>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                 <div class="col-md-12">
                                    <div class="form-group">
                                       <asp:TextBox ID="g1" runat="server" placeholder="Enter Gmail"  class="form-control"></asp:TextBox>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                     <asp:TextBox ID="ms1" runat="server" placeholder="Send Message"  class="form-control"></asp:TextBox>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="submit-button text-center">
                                        <asp:Button ID="Button" runat="server" Text="Send Message" class="btn hvr-hover" OnClick="Button_Click" />
                                        <div id="msgSubmit" class="h3 text-center hidden"></div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br><br>
    
</asp:Content>

