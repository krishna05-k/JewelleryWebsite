<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

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
                        <li class="nav-item active"><a class="nav-link" href="about.aspx">About Us</a></li>
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
                          <li class="nav-item"><a class="nav-link" href="feedback1.aspx">Feedback</a></li>
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
                    <h2>ABOUT US</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="homee.aspx">Home</a></li>
                        <li class="breadcrumb-item active">ABOUT US</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start About Page  -->
    <div class="about-box-main">
        <div class="container">
            <div class="row">
				<div class="col-lg-6">
                    <div class="banner-frame"> <img class="img-fluid" src="images/immm.jpg" alt="" />
                    </div>
                </div>
                <div class="col-lg-6">
                    <h2 class="noo-sh-title-top">Our <span>Jewellery Shop</span></h2>
                    <p>Balmukund Jewellers in Amreli is one of the leading business in the antique jewellery showrooms.
also known for jewellery showrooms,Gold jewellery showrooms,Silver jewellery showrooms,jewellery
showrooms-SIA,Costume jewellery showrooms-2Divine,Diamond jewellery showrooms-Damas,jewellery showrooms-Aura and much more.Find address ,Contact Number ,Review&Rating,Photos
,Maps of Balmukund jewellers,Amareli. </p>
                    <p>Established in the year 1986, Balmukund Jewellers in Batar Wadi, Amreli is a top player in the category Antique jewellery
 Showrooms in the Amreli. This Well-known establishment acts as a one-stop destination servicing customers both local
 and from other parts of amreli.over the course of its journey,this business has established a firm foothold in it's industry.
The belief that customers satisfaction is as important as their products and services,have helped this establishment garner 
a vast base of customers,which continues to grow by the day.This business employs individuals that are dedicated towards
 their respective roles and put in a lot of effort to achieve the common vision and larger goals of the company.in the near 
future,this business aims to expand its line of products and services and cater to larger client base.In amreli,this
 establishment occupies a prominent location in Batar Wadi.It is a effortless tsk in commuting to this establishment as
 there are various modes of transport readily available.It is at Tower road,near Vegetable market,which makes it easy for
 first-time visitors in locating this establishment.<br>
 It is known to provide top services in the following categories:
 1. Jewellery Showrooms<br>
 2. gold Jewellery Showrooms<br>
 3. silver Jewellery Showrooms<br>
 4. Jewellery Showrooms-SIA<br>
 5. Dostume Jewellery Showrooms-2divine<br>
 6. Diamond Jewellery Showrooms-Damas<br>
 7. polki Jewellery Manufactures<br>
 8. Jewellery Showrooms-Aura.</p>
					<!--<a class="btn hvr-hover" href="#">Read More</a>-->
                </div>
            </div>
            <div class="row my-5">
                <div class="col-sm-6 col-lg-4">
                    <div class="service-block-inner">
                        <h3>We are Trusted</h3>
                        <!--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>-->
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="service-block-inner">
                        <h3>We are Professional</h3>
                      <!--  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>-->
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="service-block-inner">
                        <h3>We are Expert</h3>
                       <!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>-->
                    </div>
                </div>
            </div>
</asp:Content>

