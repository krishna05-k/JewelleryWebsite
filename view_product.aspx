<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="view_product.aspx.cs" Inherits="view_product" %>

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
                          <li class="nav-item"><a class="nav-link" href="feedback1.aspx">Feedback</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->


                <!-- Start Atribute Navigation -->
                <div class="attr-nav">
                    <ul>
                        <li class="search"><a href="cart.aspx"><i class="fa fa-search"></i></a></li>
                        <li class="side-menu">
							<a href="#">
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
                    <h2>VIEW PRODUCT</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="homee.aspx">Home</a></li>
                        <li class="breadcrumb-item active">View Product</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->
    <br>

    <div class="title-all text-center">
                  <hr><h1>VIEW PRODUCT </h1><hr>
			</div>
        <asp:Panel ID="Panel1" runat="server" BackColor="White" style="margin-left: 310px" Width="965px" BorderStyle="Solid" ForeColor="Black" BorderColor="#B0B435" Height="550px">
        <br />
        <br />
        <br />
         <table align="center" border="0">
                
               <caption>
                   <br>
                   <br>
                   <tr>
                       <td style="width: 305px; " rowspan="4">
                           <asp:Image ID="img" runat="server" ImageUrl="~/images/10_guava_jan.png" BorderStyle="Solid" Width="292px" Height="300px"/>
                           &nbsp;</td>
                       <td style="height: 81px; width: 295px;" >
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:Label ID="l1" runat="server" Font-Size="X-Large" ForeColor="Black" Text="Product Name"></asp:Label>
                           <br />
                       </td>
                       <td style="height: 81px; width: 226px;">
                            &nbsp;
                            <asp:Label ID="pnm" runat="server" Text="Label" Font-Bold="False" Font-Size="X-Large"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td style="height: 81px; width: 295px;">
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="l3" runat="server" Font-Size="X-Large" ForeColor="Black" Text="Weight In GM"></asp:Label>
                           <br />
                       </td>
                       <td style="padding-bottom:3%; height: 81px; width: 226px;">
                           &nbsp;&nbsp;<asp:Label ID="whh" runat="server" Text="Label" Font-Bold="False" Font-Size="X-Large"></asp:Label>
                           <br />
                       </td>
                   </tr>
                   <tr>
                       <td style="height: 81px; width: 295px;">
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="l6" runat="server" Font-Size="X-Large" ForeColor="Black" Text="Price"></asp:Label>
                       </td>
                       <td style="height: 81px; width: 226px;">
                           &nbsp;
                          <asp:Label ID="price" runat="server" Text="Label" Font-Bold="False" Font-Size="X-Large"></asp:Label>
                           <br />
                       </td>
                   </tr>
                   <tr>
                       <td style="height: 84px; width: 295px;">
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="l7" runat="server" Font-Size="X-Large" ForeColor="Black" Text="Quantity"></asp:Label>
                           <br />
                       </td>
                       <td style="height: 84px; width: 226px;">
                           &nbsp;
                           <asp:TextBox ID="qty" runat="server" TextMode="Number" ForeColor="Black" Height="28px" Width="127px" Font-Bold="True" Font-Size="Medium" required></asp:TextBox>
                           <br />
                       </td>
                   </tr>
                   <tr>
                       
                       <td colspan="2">
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="stock" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#CC3300"></asp:Label>
                           <br />
                           <!--    <asp:Label ID="Label1" runat="server"></asp:Label>-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:Button ID="b1" runat="server" BackColor="#B0B435" CssClass="btn" ForeColor="White" Height="50px" OnClick="b1_Click" Text="Add To Cart" Width="129px" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" />
                           <br />
                           
                       </td>
                       <td style="width: 305px">
                            <br />
                            <br />
                            <asp:Button ID="Button1" runat="server" CssClass="btn" Height="50px" Text="Buy Now" Width="129px" BackColor="#B0B435" ForeColor="White" OnClick="Button1_Click" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" />
                            <br />
                           &nbsp;</td>
                   </tr>
                
                  
               </caption>
            </table>
    </asp:Panel>
    <asp:TextBox ID="pid" runat="server" Visible="False"></asp:TextBox>
           <br /> <br /> <br />
</asp:Content>

