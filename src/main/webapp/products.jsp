<%@ page import="entity.Product" %>
<%@ page import="java.util.List" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <title>Electronic Store a Ecommerce Online Shopping Category Bootstrap
        Responsive Website Template | Products :: w3layouts</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Electronic Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
	SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //for-mobile-apps -->
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"
          media="all"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/fasthover.css" rel="stylesheet" type="text/css"
          media="all"/>
    <!-- //Custom Theme files -->
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- js -->
    <script src="js/jquery.min.js"></script>
    <!-- //js -->
    <!-- web fonts -->
    <link href='//fonts.googleapis.com/css?family=Glegoo:400,700'
          rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
          rel='stylesheet' type='text/css'>
    <!-- //web fonts -->
    <!-- for bootstrap working -->
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <!-- //for bootstrap working -->
    <!-- start-smooth-scrolling -->
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
</head>
<body>
<!-- header modal -->
<div class="modal fade" id="myModal88" tabindex="-1" role="dialog"
     aria-labelledby="myModal88"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">Don't Wait, Login
                    now!</h4>
            </div>
            <div class="modal-body modal-body-sub">
                <div class="row">
                    <div class="col-md-8 modal_body_left modal_body_left1"
                         style="border-right: 1px dotted #C2C2C2;padding-right:3em;">
                        <div class="sap_tabs">
                            <div id="horizontalTab"
                                 style="display: block; width: 100%; margin: 0px;">
                                <ul>
                                    <li class="resp-tab-item"
                                        aria-controls="tab_item-0">
                                        <span>Sign in</span></li>
                                    <li class="resp-tab-item"
                                        aria-controls="tab_item-1">
                                        <span>Sign up</span></li>
                                </ul>
                                <div class="tab-1 resp-tab-content"
                                     aria-labelledby="tab_item-0">
                                    <div class="facts">
                                        <div class="register">
                                            <form action="login"
                                                  method="post">
                                                <input name="Email"
                                                       placeholder="Email Address"
                                                       type="text" required="">
                                                <input name="Password"
                                                       placeholder="Password"
                                                       type="password"
                                                       required="">
                                                <div class="sign-up">
                                                    <input type="submit"
                                                           value="Sign in"/>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-2 resp-tab-content"
                                     aria-labelledby="tab_item-1">
                                    <div class="facts">
                                        <div class="register">
                                            <form action="register"
                                                  method="post">
                                                <input placeholder="Name"
                                                       name="Name" type="text"
                                                       required="">
                                                <input placeholder="Email Address"
                                                       name="Email" type="email"
                                                       required="">
                                                <input placeholder="Password"
                                                       name="Password"
                                                       type="password"
                                                       required="">
                                                <input placeholder="Confirm Password"
                                                       name="Password"
                                                       type="password"
                                                       required="">
                                                <div class="sign-up">
                                                    <input type="submit"
                                                           value="Create Account"/>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <script src="js/easyResponsiveTabs.js"
                                type="text/javascript"></script>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                $('#horizontalTab').easyResponsiveTabs({
                                    type: 'default', //Types: default, vertical, accordion
                                    width: 'auto', //auto or any width like 600px
                                    fit: true   // 100% fit in a container
                                });
                            });
                        </script>
                        <div id="OR" class="hidden-xs">OR</div>
                    </div>
                    <div class="col-md-4 modal_body_right modal_body_right1">
                        <div class="row text-center sign-with">
                            <div class="col-md-12">
                                <h3 class="other-nw">Sign in with</h3>
                            </div>
                            <div class="col-md-12">
                                <ul class="social">
                                    <li class="social_facebook"><a href="#"
                                                                   class="entypo-facebook"></a>
                                    </li>
                                    <li class="social_dribbble"><a href="#"
                                                                   class="entypo-dribbble"></a>
                                    </li>
                                    <li class="social_twitter"><a href="#"
                                                                  class="entypo-twitter"></a>
                                    </li>
                                    <li class="social_behance"><a href="#"
                                                                  class="entypo-behance"></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- header modal -->
<!-- header -->
<div class="header" id="home1">
    <div class="container">
        <div class="w3l_login">
            <a href="#" data-toggle="modal" data-target="#myModal88"><span
                    class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
        </div>
        <div class="w3l_logo">
            <h1><a href="index.jsp">Electronic Store<span>Your stores. Your place.</span></a>
            </h1>
        </div>
        <div class="search">
            <input class="search_box" type="checkbox" id="search_box">
            <label class="icon-search" for="search_box"><span
                    class="glyphicon glyphicon-search"
                    aria-hidden="true"></span></label>
            <div class="search_form">
                <form action="#" method="post">
                    <input type="text" name="Search" placeholder="Search...">
                    <input type="submit" value="Send">
                </form>
            </div>
        </div>
        <div class="cart cart box_1">
            <form action="#" method="post" class="last">
                <input type="hidden" name="cmd" value="_cart"/>
                <input type="hidden" name="display" value="1"/>
                <button class="w3view-cart" type="submit" name="submit"
                        value=""><i class="fa fa-cart-arrow-down"
                                    aria-hidden="true"></i></button>
            </form>
        </div>
    </div>
</div>
<!-- //header -->
<!-- navigation -->
<div class="navigation">
    <div class="container">
        <nav class="navbar navbar-default">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header nav_2">
                <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                <ul class="nav navbar-nav">
                    <li><a href="index.jsp" class="act">Home</a></li>
                    <!-- Mega Menu -->
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products <b class="caret"></b></a>
                        <ul class="dropdown-menu multi-column columns-3">
                            <div class="row">
                                <div class="col-sm-3">
                                    <ul class="multi-column-dropdown">
                                        <h6>Mobiles</h6>
                                        <li><a href="products">All
                                            products</a></li>
                                        <li><a
                                                href="products?category=smartphone">Phones
                                            <span>New</span></a></li>
                                        <li><a
                                                href="products?category=laptop">Laptops
                                        </a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <ul class="multi-column-dropdown">
                                        <h6>Brands</h6>
                                        <li><a
                                                href="products?brand=Apple">Apple
                                        </a></li>
                                        <li><a
                                                href="products?brand=Asus">Asus
                                        </a></li>
                                        <li><a
                                                href="products?brand=Samsung">Samsung
                                        </a></li>
                                        <li><a
                                                href="products?brand=Dell">Dell
                                            <span>New</span></a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w3ls_products_pos">
                                        <h4>30%<i>Off/-</i></h4>
                                        <img src="images/1.jpg" alt=" " class="img-responsive" />
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </ul>
                    </li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li class="w3pages"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="icons.jsp">Web Icons</a></li>
                            <li><a href="codes.jsp">Short Codes</a></li>
                        </ul>
                    </li>
                    <li><a href="mail.jsp">Mail Us</a></li>
                </ul>
            </div>
        </nav>
    </div>
</div>

<!-- //navigation -->
<!-- banner -->
<div class="banner banner1">
    <div class="container">
        <h2>Great Offers on <span>Mobiles</span> Flat <i>35% Discount</i></h2>
    </div>
</div>
<!-- breadcrumbs -->
<div class="breadcrumb_dress">
    <div class="container">
        <ul>
            <li><a href="index.jsp"><span class="glyphicon glyphicon-home"
                                          aria-hidden="true"></span> Home</a>
                <i>/</i></li>
            <li>Products</li>
        </ul>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- mobiles -->
<div class="mobiles">
    <div class="container">
        <div class="w3ls_mobiles_grids">
            <div class="col-md-4 w3ls_mobiles_grid_left">
                <div class="w3ls_mobiles_grid_left_grid">
                    <h3>Categories</h3>
                    <div class="w3ls_mobiles_grid_left_grid_sub">
                        <div class="panel-group" id="accordion" role="tablist"
                             aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab"
                                     id="headingOne">
                                    <h4 class="panel-title asd">
                                        <a class="pa_italic" role="button"
                                           data-toggle="collapse"
                                           data-parent="#accordion"
                                           href="#collapseOne"
                                           aria-expanded="true"
                                           aria-controls="collapseOne">
                                            <span class="glyphicon glyphicon-plus"
                                                  aria-hidden="true"></span><i
                                                class="glyphicon glyphicon-minus"
                                                aria-hidden="true"></i>New
                                            Arrivals
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne"
                                     class="panel-collapse collapse in"
                                     role="tabpanel"
                                     aria-labelledby="headingOne">
                                    <div class="panel-body panel_text">
                                        <ul>
                                            <li><a href="products">Mobiles</a>
                                            </li>
                                            <li>
                                                <a href="products1.jsp">Laptop</a>
                                            </li>
                                            <li><a href="products2.jsp">Tv</a>
                                            </li>
                                            <li><a href="products">Wearables</a>
                                            </li>
                                            <li><a href="products2.jsp">Refrigerator</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab"
                                     id="headingTwo">
                                    <h4 class="panel-title asd">
                                        <a class="pa_italic collapsed"
                                           role="button" data-toggle="collapse"
                                           data-parent="#accordion"
                                           href="#collapseTwo"
                                           aria-expanded="false"
                                           aria-controls="collapseTwo">
                                            <span class="glyphicon glyphicon-plus"
                                                  aria-hidden="true"></span><i
                                                class="glyphicon glyphicon-minus"
                                                aria-hidden="true"></i>Accessories
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo"
                                     class="panel-collapse collapse"
                                     role="tabpanel"
                                     aria-labelledby="headingTwo">
                                    <div class="panel-body panel_text">
                                        <ul>
                                            <li>
                                                <a href="products2.jsp">Grinder</a>
                                            </li>
                                            <li>
                                                <a href="products2.jsp">Heater</a>
                                            </li>
                                            <li><a href="products2.jsp">Kid's
                                                Toys</a></li>
                                            <li>
                                                <a href="products2.jsp">Filters</a>
                                            </li>
                                            <li><a href="products2.jsp">AC</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <ul class="panel_bottom">
                            <li><a href="products">Summer Store</a></li>
                            <li><a href="products">Featured Brands</a></li>
                            <li><a href="products">Today's Deals</a></li>
                            <li><a href="products">Latest Watches</a></li>
                        </ul>
                    </div>
                </div>
                <div class="w3ls_mobiles_grid_left_grid">
                    <h3>Color</h3>
                    <div class="w3ls_mobiles_grid_left_grid_sub">
                        <div class="ecommerce_color">
                            <ul>
                                <li><a href="#"><i></i> Red(5)</a></li>
                                <li><a href="#"><i></i> Brown(2)</a></li>
                                <li><a href="#"><i></i> Yellow(3)</a></li>
                                <li><a href="#"><i></i> Violet(6)</a></li>
                                <li><a href="#"><i></i> Orange(2)</a></li>
                                <li><a href="#"><i></i> Blue(1)</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="w3ls_mobiles_grid_left_grid">
                    <h3>Price</h3>
                    <div class="w3ls_mobiles_grid_left_grid_sub">
                        <div class="ecommerce_color ecommerce_size">
                            <ul>
                                <li><a href="#">Below $ 100</a></li>
                                <li><a href="#">$ 100-500</a></li>
                                <li><a href="#">$ 1k-10k</a></li>
                                <li><a href="#">$ 10k-20k</a></li>
                                <li><a href="#">$ Above 20k</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8 w3ls_mobiles_grid_right">
                <div class="col-md-6 w3ls_mobiles_grid_right_left">
                    <div class="w3ls_mobiles_grid_right_grid1">
                        <img src="images/46.jpg" alt=" "
                             class="img-responsive"/>
                        <div class="w3ls_mobiles_grid_right_grid1_pos1">
                            <h3>Smart Phones<span>Up To</span> 15% Discount</h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 w3ls_mobiles_grid_right_left">
                    <div class="w3ls_mobiles_grid_right_grid1">
                        <img src="images/47.jpg" alt=" "
                             class="img-responsive"/>
                        <div class="w3ls_mobiles_grid_right_grid1_pos">
                            <h3>Top 10 Latest<span>Mobile </span>& Accessories
                            </h3>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>

                <div class="w3ls_mobiles_grid_right_grid2">
                    <div class="w3ls_mobiles_grid_right_grid2_left">
                        <h3>Showing Results: 0-1</h3>
                    </div>
                    <div class="w3ls_mobiles_grid_right_grid2_right">
                        <select name="select_item" class="select_item">
                            <option selected="selected">Default sorting</option>
                            <option>Sort by popularity</option>
                            <option>Sort by average rating</option>
                            <option>Sort by newness</option>
                            <option>Sort by price: low to high</option>
                            <option>Sort by price: high to low</option>
                        </select>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <% List<Product> products1 = (List<Product>)
                        request.getAttribute("products");

                    for (int i = 0; i < products1.size(); i++) {

                %>
                <div class="w3ls_mobiles_grid_right_grid3">
                    <%
                        for (int j = 0; j < 3; j++) {
                            Product product;
                            if (i >= products1.size()) {
                                break;
                            } else {
                                product = products1.get(i);
                            }
                    %>
                    <div class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
                        <div class="agile_ecommerce_tab_left mobiles_grid">
                            <div class="hs-wrapper hs-wrapper2">
                                <img src="images/products/<%=product.getId()%>.jpg" alt=" " class="img-responsive" style="max-height: 200px"/>
                                <img src="images/products/<%=product.getId()%>.jpg" alt=" " class="img-responsive" style="max-height: 200px"/>
                                <img src="images/products/<%=product.getId()%>.jpg" alt=" " class="img-responsive" style="max-height: 200px"/>
                                <img src="images/products/<%=product.getId()%>.jpg" alt=" " class="img-responsive" style="max-height: 200px"/>
                                <img src="images/products/<%=product.getId()%>.jpg" alt=" " class="img-responsive" style="max-height: 200px"/>
                                <img src="images/products/<%=product.getId()%>.jpg" alt=" " class="img-responsive" style="max-height: 200px"/>
                                <div class="w3_hs_bottom w3_hs_bottom_sub1">
                                    <ul>
                                        <li>
                                            <a href="#"
                                               data-toggle="modal"
                                               data-target="#myModal9"><span
                                                    class="glyphicon glyphicon-eye-open"
                                                    aria-hidden="true"></span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <h5><form action="single" method="get">
                                <input type="hidden" name="add" value="1"/>
                                <input type="hidden" name="id"
                                       value="<%=product.getId()%>"/>
                                <button type="submit" class="w3ls-cart"><%=product.getName()%>
                                </button>
                            </form>
                                </h5>
                            <div class="simpleCart_shelfItem">
                                <p><span>$1488</span> <i class="item_price">
                                    <%=product.getPrice()%>
                                </i></p>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd"
                                           value="_cart"/>
                                    <input type="hidden" name="add" value="1"/>
                                    <input type="hidden" name="w3ls_item"
                                           value="<%=product.getName()%>"/>
                                    <input type="hidden" name="amount"
                                           value="<%=product.getPrice()%>"/>
                                    <button type="submit" class="w3ls-cart">Add
                                        to cart
                                    </button>
                                </form>
                            </div>
                            <div class="mobiles_grid_pos">
                                <h6>New</h6>
                            </div>
                        </div>
                    </div>
                    <% if (j < 2){
                        i++;
                    }
                    }%>
                    <div class="clearfix"></div>
                </div>
                <%}%>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>

<!-- newsletter -->
<div class="newsletter">
    <div class="container">
        <div class="col-md-6 w3agile_newsletter_left">
            <h3>Newsletter</h3>
            <p>Excepteur sint occaecat cupidatat non proident sunt.</p>
        </div>
        <div class="col-md-6 w3agile_newsletter_right">
            <form action="#" method="post">
                <input type="email" name="Email" placeholder="Email"
                       required="">
                <input type="submit" value=""/>
            </form>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //newsletter -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="w3_footer_grids">
            <div class="col-md-3 w3_footer_grid">
                <h3>Contact</h3>
                <p>Duis aute irure dolor in reprehenderit in voluptate velit
                    esse.</p>
                <ul class="address">
                    <li><i class="glyphicon glyphicon-map-marker"
                           aria-hidden="true"></i>1234k Avenue, 4th block,
                        <span>New York City.</span></li>
                    <li><i class="glyphicon glyphicon-envelope"
                           aria-hidden="true"></i><a
                            href="mailto:info@example.com">info@example.com</a>
                    </li>
                    <li><i class="glyphicon glyphicon-earphone"
                           aria-hidden="true"></i>+1234 567 567
                    </li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Information</h3>
                <ul class="info">
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="mail.jsp">Contact Us</a></li>
                    <li><a href="codes.jsp">Short Codes</a></li>
                    <li><a href="faq.jsp">FAQ's</a></li>
                    <li><a href="products">Special Products</a></li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Category</h3>
                <ul class="info">
                    <li><a href="products">Mobiles</a></li>
                    <li><a href="products1.jsp">Laptops</a></li>
                    <li><a href="products">Purifiers</a></li>
                    <li><a href="products1.jsp">Wearables</a></li>
                    <li><a href="products2.jsp">Kitchen</a></li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Profile</h3>
                <ul class="info">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="products">Today's Deals</a></li>
                </ul>
                <h4>Follow Us</h4>
                <div class="agileits_social_button">
                    <ul>
                        <li><a href="#" class="facebook"> </a></li>
                        <li><a href="#" class="twitter"> </a></li>
                        <li><a href="#" class="google"> </a></li>
                        <li><a href="#" class="pinterest"> </a></li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="footer-copy">
        <div class="footer-copy1">
            <div class="footer-copy-pos">
                <a href="#home1" class="scroll"><img src="images/arrow.png"
                                                     alt=" "
                                                     class="img-responsive"/></a>
            </div>
        </div>
        <div class="container">
            <p>&copy; 2017 Electronic Store. All rights reserved | Design by <a
                    href="http://w3layouts.com/">W3layouts</a></p>
        </div>
    </div>
</div>
<!-- //footer -->
<script type="text/javascript">
    $(window).load(function () {
        $("#flexiselDemo2").flexisel({
            visibleItems: 4,
            animationSpeed: 1000,
            autoPlay: true,
            autoPlaySpeed: 3000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint: 568,
                    visibleItems: 1
                },
                landscape: {
                    changePoint: 667,
                    visibleItems: 2
                },
                tablet: {
                    changePoint: 768,
                    visibleItems: 3
                }
            }
        });

    });
</script>
<script type="text/javascript" src="js/jquery.flexisel.js"></script>
<!-- cart-js -->
<script src="js/minicart.js"></script>
<script>
    w3ls.render();

    w3ls.cart.on('w3sb_checkout', function (evt) {
        var items, len, i;

        if (this.subtotal() > 0) {
            items = this.items();

            for (i = 0, len = items.length; i < len; i++) {
            }
        }
    });
</script>
<!-- //cart-js -->
</body>
</html>