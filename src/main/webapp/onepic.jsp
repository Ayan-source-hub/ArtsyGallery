<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Product Page</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <script src="https://unpkg.com/js-image-zoom@0.4.1/js-image-zoom.js" type="application/javascript"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/onepic.css">
</head>
<body>
    <!-- <div class="header">
        <i class="fas fa-bars menu-icon"></i>
        <div class="nav-links">
            <a href="#">All</a>
            <div class="dropdown">
                <a href="#">Fresh <i class="fas fa-caret-down"></i></a>
                <div class="dropdown-content">
                    <a href="#">Link 1</a>
                    <a href="#">Link 2</a>
                    <a href="#">Link 3</a>
                </div>
            </div>
            <a href="#">MX Player</a> -->
            <!-- <a href="#">Sell</a>
            <a href="#">Best Sellers</a>
            <a href="#">Today's Deals</a> -->
            <!-- <a href="#">Mobiles</a> -->
            <!-- <a href="#">Prime</a>
            <a href="#">Customer Service</a> -->
            <!-- <a href="#">Electronics</a> -->
            <!-- <a href="#">Home & Kitchen</a> -->
            <!-- <a href="#">Fashion</a> -->
            <!-- <a href="#">New Releases</a>
        </div>
    </div> --> 
    
<!-- Header Section -->
<header class="header">
    <div class="header-1">
        <a href="#" class="logo"><img src="images/logo.png" alt="Artsy Gallery Logo"/>Artsy Gallery</a>
        <form action="" class="search-form">
            <input type="search" placeholder="Search here..." id="search-box">
            <label for="search-box" class="fas fa-search"></label>
        </form>
        <div class="icons">
            <div id="search-btn" class="fas fa-search"></div>
            <a href="#" class="fas fa-heart"></a>
            <a href="cart" class="fas fa-shopping-cart">
                <div class="icon-cart">
                   <!--  <span>0</span> -->
                </div>
            </a>
            <div id="login-btn" class="fas fa-uer">
            <p>
             	<a class="" href="Landing_page.jsp">Logout</a>
             	
             	
             	<a style="background-color:#27ae60;border-radius:50px;padding-right:10px;padding-left:10px;color:white;" href="#"><%=session.getAttribute("name") %></a>
             	</p>
             
            </div>
        </div>
    </div>
    <div class="header-2">
        <nav class="navbar">
            <a href="#home">Home</a>
            <a href="#featured">Featured</a>
            <a href="#arrivals">Arrivals</a>
            <a href="#reviews">Reviews</a>
            <a href="#blogs">Blogs</a>
            <a href="upload.jsp">Uploads</a>
        </nav>
    </div>
</header>
    

     <!--bottom navbar-->
     <nav class="bottom-navbar">
        <a href="#home" class="fas fa-home"></a>
        <a href="#featured" class="fas fa-list"></a>
        <a href="#arrivals" class="fas fa-tags"></a>
        <a href="#reviews" class="fas fa-comments"></a>
        <a href="#blogs" class="fas fa-blogs"></a>
    </nav>
    <div class="container" style="margin-top:-10px;">
        <div class="left-column">
            <div id="cont" style="width:500px;">
            <img src="images/wa1.jpeg" alt="Digital Water Painting Photo Frame" />
        </div>
            <div class="thumbnail-images">
                <img src="images/wa1.jpeg" alt="Thumbnail 1" />
                <img src="images/wa1.jpeg" alt="Thumbnail 2" />
                <img src="images/wa1.jpeg" alt="Thumbnail 3" />
                <img src="images/wa1.jpeg" alt="Thumbnail 4"/>
        <div class="right-column">
            <div class="product-title">Blossom Personalized Digital Water Painting Photo Frame Multicolor (8x12 Black)</div>
            <div class="product-brand">Brand: Jadoun</div>
            <div class="product-rating">
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <div class="ratings-count">337 ratings</div>
            </div>
            <div class="product-price">₹599</div>
            <div class="product-mrp">M.R.P.: ₹1,499</div>
            <div class="product-discount">-60%</div>
            <div class="product-emi">
                Inclusive of all taxes<br/>
                EMI starts at ₹208 per month. <a href="#">EMI options</a>
            </div>
            <!-- <div class="product-offers">
                <div class="offer">
                    <div class="offer-title">Bank Offer</div>
                    <div class="offer-details">Upto ₹4,000.00 discount on SBI Credit Cards</div>
                </div>
                <div class="offer">
                    <div class="offer-title">Partner Offers</div>
                    <div class="offer-details">Get GST invoice and save up to 28% on business purchases.</div>
                </div>
            </div> -->
            <div class="delivery-info">
                <div class="price">₹599.00</div>
                <div class="delivery-date">
                    FREE delivery Thursday, 3 October for Prime members. Order within 1 hr 14 mins. <a href="#">Details</a>
                </div>
                <div class="stock-status">In stock</div>
                <div class="seller-info">
                    Delivered by <a href="#">Amazon</a><br/>
                    Sold by <a href="#">Jadoun enterprise & Printing</a>
                </div>
            </div>
            <div class="protection-plan">
                <div class="plan-title">Add a Protection Plan:</div>
                <div class="plan-price">
                    <input type="checkbox"/> 1 Year Fire Protection Plan for ₹98.00
                </div>
            </div>
            <div class="quantity">
                Quantity:
                <select>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div>
            <div class="buttons">
                <button class="add-to-cart">Add to Cart</button>
              <a href="payment.jsp"><button class="buy-now">Buy Now</button></a> 
            </div>
            <div class="secure-transaction">
                <a href="#">Secure transaction</a>
            </div>
            <div class="add-to-wishlist">
                <a href="#">Add to Wish List</a>
            </div>
        </div>
    </div>
    <!--slide page code-->
    <main>
        <header>
            <h1>Related Paints</h1>
            <p>
                <span>&#139;</span>
                <span>&#155;</span>
            </p>
        </header>
        <section>
            <div class="product">
                <a href="images/wa1.jpeg" style="text-decoration: none;color: black;margin-left:10px;color:#040405;padding:1px;">
                <picture>
                    <img src="images/wa1.jpeg" alt="" style="margin-top: -15px;height:100%;">
                </picture>
                <div class="details" style="margin-top: -20px;">
                    <p style="margin-left:10px;">
                        <b>Product One</b>
                        <small>New arrival</small>
                    </p>
                    <samp style="margin-left:10px;">$45.00</samp>
                </div>
                <div class="button">
                    <p class="star" style="margin-top: -30px;">
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                    </p>
                    <a href="images/wa1.jpeg" style="text-decoration: none;color: black;margin-left:10px;color:#6773ff;">See more...</a>
                </a>
                </div>
            </div>

            <div class="product">
                <picture>
                    <img src="images/wa1.jpeg" alt="">
                </picture>
                <div class="details">
                    <p style="margin-left:10px;">
                        <b>Product Two</b>
                        <small>New arrival</small>
                    </p>
                    <samp style="margin-left:10px;">$45.00</samp>
                </div>
                <div class="button">
                    <p class="star">
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                    </p>
                    <a href="#" style="text-decoration: none;color: black;margin-left:10px;color:#6773ff;">See more...</a>
                </div>
            </div>

            <div class="product">
                <picture>
                    <img src="images/wa1.jpeg" alt="">
                </picture>
                <div class="details">
                    <p style="margin-left:10px;">
                        <b>Product Three</b>
                        <small>New arrival</small>
                    </p>
                    <samp style="margin-left:10px;">$45.00</samp>
                </div>
                <div class="button">
                    <p class="star">
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                    </p>
                    <a href="#" style="text-decoration: none;color: black;margin-left:10px;color:#6773ff;">See more...</a>
                </div>
            </div>

            <div class="product">
                <picture>
                    <img src="images/wa1.jpeg" alt="">
                </picture>
                <div class="details">
                    <p style="margin-left:10px;">
                        <b>Product Four</b>
                        <small>New arrival</small>
                    </p>
                    <samp style="margin-left:10px;">$45.00</samp>
                </div>
                <div class="button">
                    <p class="star">
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                    </p>
                    <a href="#" style="text-decoration: none;color: black;margin-left:10px;color:#6773ff;">See more...</a>
                </div>
            </div>

            <div class="product">
                <picture>
                    <img src="images/wa1.jpeg" alt="">
                </picture>
                <div class="details">
                    <p style="margin-left:10px;">
                        <b>Product Five</b>
                        <small>New arrival</small>
                    </p>
                    <samp style="margin-left:10px;">$45.00</samp>
                </div>
                <div class="button">
                    <p class="star">
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                    </p>
                    <a href="#" style="text-decoration: none;color: black;margin-left:10px;color:#6773ff;">See more...</a>
                </div>
            </div>

            <div class="product">
                <picture>
                    <img src="images/wa1.jpeg" alt="">
                </picture>
                <div class="details">
                    <p style="margin-left:10px;">
                        <b>Product Six</b>
                        <small>New arrival</small>
                    </p>
                    <samp style="margin-left:10px;">$45.00</samp>
                </div>
                <div class="button">
                    <p class="star">
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                    </p>
                    <a href="#" style="text-decoration: none;color: black;margin-left:10px;color:#6773ff;">See more...</a>
                </div>
            </div>

            <div class="product">
                <picture>
                    <img src="images/wa1.jpeg" alt="">
                </picture>
                <div class="details">
                    <p style="margin-left:10px;">
                        <b>Product Seven</b>
                        <small>New arrival</small>
                    </p>
                    <samp style="margin-left:10px;">$45.00</samp>
                </div>
                <div class="button">
                    <p class="star">
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                    </p>
                    <a href="#" style="text-decoration: none;color: black;margin-left:10px;color:#6773ff;">See more...</a>
                </div>
            </div>

            <div class="product">
                <picture>
                    <img src="images/wa1.jpeg" alt="">
                </picture>
                <div class="details">
                    <p style="margin-left:10px;">
                        <b>Product Eight</b>
                        <small>New arrival</small>
                    </p>
                    <samp style="margin-left:10px;">$45.00</samp>
                </div>
                <div class="button">
                    <p class="star">
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                    </p>
                    <a href="#" style="text-decoration: none;color: black;margin-left:10px;color:#6773ff;">See more...</a>
                </div>
            </div>

            <div class="product">
                <picture>
                    <img src="images/wa1.jpeg" alt="">
                </picture>
                <div class="details">
                    <p style="margin-left:10px;">
                        <b>Product Nine</b>
                        <small>New arrival</small>
                    </p>
                    <samp style="margin-left:10px;">$45.00</samp>
                </div>
                <div class="button">
                    <p class="star">
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                    </p>
                    <a href="#" style="text-decoration: none;color: black;margin-left:10px;color:#6773ff;">See more...</a>
                </div>
            </div>

            <div class="product">
                <picture>
                    <img src="images/wa1.jpeg" alt="">
                </picture>
                <div class="details">
                    <p style="margin-left:10px;">
                        <b>Product Ten</b>
                        <small>New arrival</small>
                    </p>
                    <samp style="margin-left:10px;">$45.00</samp>
                </div>
                <div class="button">
                    <p class="star">
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                    </p>
                    <a href="#" style="text-decoration: none;color: black;margin-left:10px;color:#6773ff;">See more...</a>
                </div>
            </div>

            <div class="product">
                <picture>
                    <img src="images/wa1.jpeg" alt="">
                </picture>
                <div class="details">
                    <p style="margin-left:10px;">
                        <b>Product Eleven</b>
                        <small>New arrival</small>
                    </p>
                    <samp style="margin-left:10px;">$45.00</samp>
                </div>
                <div class="button">
                    <p class="star">
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                    </p>
                    <a href="#" style="text-decoration: none;color: black;margin-left:10px;color:#6773ff;">See more...</a>
                </div>
            </div>

            
            <div class="product">
                <picture>
                    <img src="images/wa1.jpeg" alt="">
                </picture>
                <div class="details">
                    <p style="margin-left:10px;">
                        <b>Product Twoelve</b>
                        <small>New arrival</small>
                    </p>
                    <samp style="margin-left:10px;">$45.00</samp>
                </div>
                <div class="button">
                    <p class="star">
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                        <strong>&star;</strong>
                    </p>
                    <a href="#" style="text-decoration: none;color: black;margin-left:10px;color:#6773ff;">See more...</a>
                </div>
            </div>
        </section>

        <!--footer page-->

        <footer class="footer-distributed" style="margin-top:50px;margin-left:-19px;margin-right:-40px;margin-bottom:-40px;">
            <div class="footer-left">
                <h3>Artsy <span> Gallery</span></h3>
        
                <p class="footer-links">
                    <a href="#">Home</a>
                    |
                    <a href="#">About</a>
                    |
                    <a href="#">Contact</a>
                    |
                    <a href="#">Blog</a>
                    |
                </p>
        
                <p class="footer-company-name">2024<strong> Artsy Gallery</strong>
                    All rights reserved</p>
            </div>
        
            <div class="footer-center">
                <div>
                    <i class="fa fa-map-marker"></i>
                    <p><span>Kolkata</span>
                    India</p>
                </div>
                <div>
                    <i class="fa fa-phone"></i>
                    <p>+91754987634</p>
                </div>
                 <div>
                    <i class="fa fa-envelope"></i>
                    <p><a href="#">xyz@gmail.com</a></p>
                </div>
            </div>
        
            <div class="footer-right">
                <p class="footer company-about" style="color:#8f9296;font-weight:normal;">
                    <span style="color:#0a0a0a;font-weight:bold;">About the website</span><br><br>
                    <strong style="color:#0c0c0c;">Artsy Gallery</strong> is an art gallery management system where you can buy or sell paintings.
                    You can also get an opportunity to show your hidden talents.Thank You!
                </p>
                <div class="footer icons" style="margin-top: 50px;font-size: 27px;line-height: 38px;">
                    <a href="#"><i class="fa fa-facebook" style="color:#060505;"></i></a>
                    <a href="#"><i class="fa fa-instagram" style="padding-left:10px;color:#060505;"></i></a>
                    <a href="#"><i class="fa fa-linkedin" style="padding-left:10px;color:#060505;"></i></a>
                    <a href="#"><i class="fa fa-twitter" style="padding-left:10px;color:#060505;"></i></a>
                    <a href="#"><i class="fa fa-youtube" style="padding-left:10px;color:#060505;"></i></a>
                </div>
            </div>
            </footer>
        <!-- <script src="slide img.js"></script> -->
         <script src="is/onepic2.js"></script>
    </main>
    <script src="js/onepic.js"></script>
</body>
</html>