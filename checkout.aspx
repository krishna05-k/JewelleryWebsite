<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout" %>

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

                        <li class="dropdown active">
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
                    <h2>Checkout</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Shop</a></li>
                        <li class="breadcrumb-item active">Checkout</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start Cart  -->
    <div class="cart-box-main">
        <div class="container">
            <div class="row new-account-login">
               
               
            </div>
            <div class="row">
                <div class="col-sm-6 col-lg-6 mb-3">
                    <div class="checkout-address">
                        <div class="title-left">
                            <h3>Billing address</h3>
                        </div>
                        <form class="needs-validation" novalidate>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="firstName">First name *</label>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox>
                                    <div class="invalid-feedback"> Valid first name is required. </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="lastName">Last name *</label>
                                     <asp:TextBox ID="TextBox2" runat="server" class="form-control" ></asp:TextBox>
                                    <div class="invalid-feedback"> Valid last name is required. </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="username">Username *</label>
                                <div class="input-group">
                                      <asp:TextBox ID="TextBox3" runat="server" class="form-control" ></asp:TextBox>
                                    <div class="invalid-feedback" style="width: 100%;"> Your username is required. </div>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="email">Email Address *</label>
                                 <asp:TextBox ID="TextBox4" runat="server" class="form-control" ></asp:TextBox>
                                <div class="invalid-feedback"> Please enter a valid email address for shipping updates. </div>
                            </div>
                            <div class="mb-3">
                                <label for="address">Address *</label>
                                 <asp:TextBox ID="TextBox5" runat="server" class="form-control" ></asp:TextBox>
                                <div class="invalid-feedback"> Please enter your shipping address. </div>
                            </div>
                           
                            <div class="row">
                                <div class="col-md-5 mb-3">
                                    <label for="country">Stat *</label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="wide w-100" >
                                        <asp:ListItem>Gujarat</asp:ListItem>
                                        <asp:ListItem>panjab</asp:ListItem>
                                        <asp:ListItem>maharashtra</asp:ListItem>
                                        <asp:ListItem>up</asp:ListItem>
                                        <asp:ListItem>rajasthan</asp:ListItem>
                                    </asp:DropDownList>
                                    <div class="invalid-feedback"> Please select a valid country. </div>
                                </div>
                                
                                <div class="col-md-3 mb-3">
                                    <label for="zip">Zip *</label>
                                    <input type="text" class="form-control" id="zip"  placeholder=""  min="111111" max="999999" >
                                    <div class="invalid-feedback"> Zip code required. </div>
                                </div>
                            </div>
                            <hr class="mb-4">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="same-address">
                                <label class="custom-control-label" for="same-address">Shipping address is the same as my billing address</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="save-info">
                                <label class="custom-control-label" for="save-info">Save this information for next time</label>
                            </div>
                            <hr class="mb-4">
                            <div class="title"> <span>Payment</span> </div>
                            <div class="d-block my-3">
                                <div class="custom-control custom-radio">
                                     <asp:RadioButton ID="RadioButton1" runat="server" GroupName="rd" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" Text="UPI(GPay/PhonePe)"/>
                                    <asp:Label ID="lll" runat="server" Text="Label" Font-Bold="True" ForeColor="#CC3300" Font-Size="Medium" ></asp:Label>
    <asp:Panel ID="Panel1" runat="server" Visible="false" BackColor="#CCCCCC" Width="261px" Height="118px">
       <h3>&nbsp;&nbsp; Enter You UPI ID</h3>
        
       &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="UPI ID" ForeColor="#9900CC"></asp:Label><br/>
       &nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox7" runat="server" BorderColor="#9900CC"></asp:TextBox>
        <br>
                                     </asp:Panel>
                                </div>
                                <div class="custom-control custom-radio">
                                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="rd" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" Text="Debit/Credit Cards"/>
                                     <asp:Label ID="lnn" runat="server" Text="Label" Font-Bold="True" ForeColor="#CC3300" Font-Size="Medium" ></asp:Label>

   <asp:Panel ID="Panel2" runat="server" Visible="false" BackColor="#CCCCCC" Width="263px" Height="208px" >
      
       &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Card Number" ForeColor="#9900CC"></asp:Label><br/>
       &nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox8" runat="server" BorderColor="#9900CC"></asp:TextBox>
       <br>
         &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Expiry Date" ForeColor="#9900CC"></asp:Label><br/>
       &nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox9" runat="server" BorderColor="#9900CC"></asp:TextBox><br>
          &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="CVV" ForeColor="#9900CC"></asp:Label><br>
       &nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox10" runat="server" BorderColor="#9900CC"></asp:TextBox>
        <br>
                                    </asp:Panel>
                                </div>
                                <div class="custom-control custom-radio">
                                 <asp:RadioButton ID="RadioButton4" runat="server" GroupName="rd" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" Text="Net Banking"/>
                                     <asp:Label ID="lpp" runat="server" Text="Label" Font-Bold="True" ForeColor="#CC3300" Font-Size="Medium" ></asp:Label>

   <asp:Panel ID="Panel3" runat="server" Visible="false" BackColor="#CCCCCC" Width="259px" Height="127px" >
      
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton5" runat="server" Text="State Bank of India" /><br>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton6" runat="server" Text="HDFC Bank" /><br>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton7" runat="server" Text="ICICI Netbanking" /><br>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioButton8" runat="server" Text="Axis Bank" /><br>
                                    </asp:Panel>
                                </div>
                                  <div class="custom-control custom-radio">
                                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="rd" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" Text="Cash on Delivery"/>
                                </div>
                            </div>
                           
                            <div class="row">
                              
                                <div class="col-md-6 mb-3">
                                    <div class="payment-icon">
                                        <ul>
                                            <li><img class="img-fluid" src="images/payment-icon/1.png" alt=""></li>
                                            <li><img class="img-fluid" src="images/payment-icon/2.png" alt=""></li>
                                            <li><img class="img-fluid" src="images/payment-icon/3.png" alt=""></li>
                                            <li><img class="img-fluid" src="images/payment-icon/5.png" alt=""></li>
                                            <li><img class="img-fluid" src="images/payment-icon/7.png" alt=""></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <hr class="mb-1"> </form>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-6 mb-3">
                    <div class="row">
                        <div class="col-md-12 col-lg-12">
                            <div class="shipping-method-box">
                                <div class="title-left">
                                    <h3>Shipping Method</h3>
                                </div>
                                <div class="mb-4">
                                    <div class="custom-control custom-radio">
                                        <input id="shippingOption1" name="shipping-option" class="custom-control-input" checked="checked" type="radio">
                                        <label class="custom-control-label" for="shippingOption1">Standard Delivery</label> <span class="float-right font-weight-bold">FREE</span> </div>
                                    <div class="ml-4 mb-2 small">(3-7 business days)</div>
                                   
                                </div>
                            </div>
                        </div>
                       
                        <div class="col-md-12 col-lg-12">
                            <div class="order-box">
                                <div class="title-left">
                                    <h2>Your order</h2>
                                </div>
                               <table>
                                  <tr style="float:left">
                        <td><asp:Label ID="Label4" runat="server" Text="Selected Product " Width="276px" Font-Bold="True"></asp:Label></td>
                        <td >
                            <table style width="130%">
                                <tr>
                                    <td><b>Product Name</b></td>
                                    <td><b>Quantity</b></td>
                                    <td><b>Total</b></td>
                                    
                                </tr>
                                
                                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>    
                                
                            </table>
                            
                        </td>
                        
                    </tr></table>
                               
                                <hr class="my-1">

                               <div class="d-flex">
                                    <h4>Sub Total</h4>
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     <asp:Label ID="sub" runat="server" Text="Label" ForeColor="black" Font-Size="Large" ></asp:Label>
                                </div>     
                                <hr class="my-1">

                               <div class="d-flex">
                                    <h4>Shipping Cost</h4>
                                    <div class="ml-auto font-weight-bold"> Free </div>
                                </div>                                  
                                 <hr class="my-1">                         
                                <div class="d-flex">
                                    <h4>GST</h4>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="labb" runat="server" Text="Label" Font-Bold="True" ForeColor="black" Font-Size="Large" ></asp:Label>
                                    
                                </div>
                                <hr>
                                <div class="d-flex gr-total">
                                    <h5>Grand Total</h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   
                                
                                    <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" ForeColor="#B0B435" Font-Size="Large" ></asp:Label>
                                </div>
                                <hr> </div>
                        </div>
                        <div class="col-12 d-flex shopping-box">
                           
                            <asp:Button ID="Button1" runat="server" Text="Place Order" class="ml-auto btn hvr-hover" OnClick="Button1_Click"/> </div>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                      <!--       <asp:Label ID="loo" runat="server" Text="Label" ForeColor="#CC3300" Font-Bold="True" Font-Size="X-Large"></asp:Label>-->
                    </div>
                 
                </div>
               
            </div>

        </div>
    </div>
    <!-- End Cart -->

</asp:Content>

