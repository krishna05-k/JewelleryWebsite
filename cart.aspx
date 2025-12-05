<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

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
                            <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown" >SHOP</a>
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
                        <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
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
                    <h2>Cart</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Shop</a></li>
                        <li class="breadcrumb-item active">Cart</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->
  <br><br>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
                                Height="96px" 
                                Width="82%" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
                                 DataKeyNames="id" GridLines="none" BackColor="White" 
                                    BorderColor="#999999" BorderStyle="Ridge" BorderWidth="1px" align="center" >
                                 <Columns>                                
                                     <asp:ImageField DataImageUrlField="img" ControlStyle-CssClass="img-responsive" 
                                     HeaderText="Images">
                                         <ControlStyle Height="100px" Width="100px" />
                                         <HeaderStyle BackColor="Black" />
                                     </asp:ImageField>
                                    <asp:TemplateField HeaderText="Product name" SortExpression="pname" HeaderStyle-BackColor="Black">
                                        <ItemTemplate>
                                            <asp:Label ID="P_name" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                                        </ItemTemplate>                                       
                                        <HeaderStyle BackColor="Black"></HeaderStyle>
                                    </asp:TemplateField>                                 
                                     <asp:TemplateField HeaderText="Price" SortExpression="price" HeaderStyle-BackColor="Black">
                                        <ItemTemplate>
                                            <asp:Label ID="price" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                        </ItemTemplate>                                       
                                    <HeaderStyle BackColor="Black"></HeaderStyle>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Quantity" SortExpression="qui" HeaderStyle-BackColor="Black">
                                        <ItemTemplate>
                                            <asp:Label ID="qut" runat="server" Text='<%# Eval("qty") %>'></asp:Label>
                                        </ItemTemplate>                                       
                                    <HeaderStyle BackColor="Black"></HeaderStyle>
                                    </asp:TemplateField>   
                                     
                                    <asp:TemplateField HeaderText="Sub Total" SortExpression="total" HeaderStyle-BackColor="Black">
                                        <ItemTemplate>
                                            <asp:Label ID="total" runat="server" Text='<%# Eval("total") %>'></asp:Label>
                                        </ItemTemplate>                                       
                                    <HeaderStyle BackColor="Black"></HeaderStyle>
                                    </asp:TemplateField>
                                   <asp:CommandField ButtonType="Image"  ItemStyle-Height="10px"
                                                        DeleteImageUrl="images/d2.png" HeaderText="Opration" 
                                                        ShowDeleteButton="True" CancelImageUrl="images/d2.png" 
                                                        
                                                        ControlStyle-Height="30" ControlStyle-Width="30">
                                                        <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                    </asp:CommandField>
                                     
                                     </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <AlternatingRowStyle BackColor="#CCCCCC" CssClass="G1" />
                            </asp:GridView>
    </div>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:jew %>" 
                                    SelectCommand="SELECT * FROM [addtocart] WHERE ([uname] = @uid)"
                                     DeleteCommand="DELETE FROM addtocart where id=@id" ProviderName="<%$ ConnectionStrings:jew.ProviderName %>">
                             <SelectParameters>                                       
                                        <asp:SessionParameter Name="uid" SessionField="uid" Type="String" />
                                    </SelectParameters>
                                 <DeleteParameters>
                                   <asp:Parameter Name="id" Type="Int32" />
                                 </DeleteParameters>
                                    
                                </asp:SqlDataSource>
     


    <!-- Start Cart  -->
    <div class="cart-box-main">
        <div class="container">
           
            <div class="row my-5">
                <div class="col-lg-8 col-sm-12"></div>
                <div class="col-lg-4 col-sm-12">
                    <div class="order-box">
                        <h3>Order summary</h3>
                        <div class="d-flex">
                            <h4>Sub Total</h4>
                       
                            <div class="ml-auto font-weight-bold"> </div>
                              <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </div>
                           
                        <div class="d-flex">
                            <h4>Shipping Cost</h4>
                            <div class="ml-auto font-weight-bold"> Free </div>
                        </div>
                        <hr>
                        <div class="d-flex gr-total">
                            <h5>Grand Total</h5>
                            <div class="ml-auto h5">  </div>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

                        </div>
                        
                        <hr>   </div> 
                </div>

                <div class="col-12 d-flex shopping-box">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
                
                     <asp:Button ID="Button2" runat="server" Text="Shop More" class="ml-auto btn hvr-hover" OnClick="Button2_Click" />
                    <asp:Button ID="Button1" runat="server" Text="Checkout" class="ml-auto btn hvr-hover" OnClick="Button1_Click"/>
                  
                </div>
            </div>

        </div>
    </div>
    <!-- End Cart -->

</asp:Content>

