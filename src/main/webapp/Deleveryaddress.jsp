<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/e8fa2e31b4.js" crossorigin="anonymous"></script>
    <title>Document</title>
    <link rel="stylesheet" href="newpayment.css">
    <style>
        
*{
    margin:0;
    padding:0;
    font-family: 'Poppins',sans-serif;
    box-sizing:border-box;
}
body{
    background:#fff;

/* /Header part/ */
header{
position: absolute;
top:0;
left: 0;
width: 100%;
padding: 20px 100px;
display:flex;
justify-content: space-between;
align-items:center;
}
header .logo
{
position:relative;
max-width: 90px;
/* max-height: 50px; */
}
header ul
{
position: relative; 
display:flex;
margin-right: 350px;
}
header ul li
{
list-style: none; 
}
header ul li a
{
display: inline-block;
color:#333 ;
font-weight: 400;
margin-left: 30px;
text-decoration: none;
font-size: 18px;
padding: 5px 10px;
border-radius: 25px;
transition: background-color 0.2s, color 0.1s;
}
header a:hover{
background: linear-gradient(to right, #ff5f6d, #ffc371); /* Lighter pink on hover */
color: #fff;
}
header img:hover{
background-color: #fff; /* Lighter pink on hover */
/* color: #fff; */
}
header .dropdown {
position: relative;
display: inline-block;
}
header .dropdown-content {
display: none;
justify-content: center;
position:absolute;
background-color:none;
/* background: linear-gradient(to right, #ff5f6d, #ffc371); */
border-radius: 20px;
padding-right:13px;
min-width: 160px;
box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
z-index: 1;
}
header .dropdown-content a {
/* color: rgb(9, 9, 9); */
padding: 12px 16px;
margin-left: 14%;
/* padding-right: 50%; */
text-decoration: none;
display: block;
}
header .dropdown:hover .dropdown-content {
display: block;
color: #fff;
}
/Header part end/

.accordion{
    margin:150px auto;
    margin-left: 150px;
    width:900px;
    /* height: 1000px; */
}
.accordion li{
    list-style:none;
    width:100%;
    margin:20px;
    padding:10px;
    border-radius:8px;
    background: #fff;
    box-shadow:6px 6px 10px -1px rgba(0,0,0,0.15),
               -6px -6px 10px -1px rgba(255,255,255,0.7);
}
.accordion li label{
    display:flex;
    align-items:center;
    padding:10px;
    font-size:18px;
    font-weight:500;
    cursor: pointer;
}
label::before{
    content:'+';
    margin-right: 10px;
    font-size: 24px;
    font-weight: 600;
}
input[type="radio"]{
    display: none;
}
.accordion .content{
    color:#555;
    padding: 0 10px;
    line-height:15px;
    max-height:0;
    overflow:hidden;
    transition: max-height 0.5s, padding 0.5s;
}
.accordion input[type="radio"]:checked + label + .content{
    max-height:700px;
    height: 520px;
    padding:10px 10px 20px;
}
.accordion input[type="radio"]:checked + label::before{
    content:'-';
    
}

/* delevery address css*/

.container {
    display: flex;
    justify-content: center;
    padding: 20px;
    max-width: 900px;
    height: 500px;
    margin: -20px auto;
    margin-left: -150px;
    /* background-color: #fff; */
    padding: 20px;
    border-radius: 5px;
    /* box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); */
}
.form-container {
    /* background-color: #fff; */
    padding: 2px;
    border-radius: 5px;
   
    width: 500px;
}

.form-body {
    padding: 2px;
}
.form-body .section-title {
    font-size: 16px;
    margin-bottom: 10px;
    margin-left: -25px;
}
.form-body .form-group {
    display: flex;
    margin-bottom: 65px;
}
.form-body .form-group label {
    flex: 1;
    margin-right: 10px;
}
.form-body .form-group input,
.form-body .form-group select {
    flex: 2;
    padding: 10px;
    border: 1px solid #e0e0e0;
    border-radius: 5px;
}
.form-body .form-group input:focus,
.form-body .form-group select:focus {
    border-color: #2874f0;
}
.form-body .form-group .error {
    color: red;
    font-size: 12px;
    margin-top: 5px;
}
.form-body .form-group.full-width {
    flex-direction: column;
}
.form-body .form-group.full-width input {
    width: 50%;
}
.form-body .form-group.half-width {
    flex: 1;
    width:300px;
    height:40px;
    margin-bottom: 20px;
}
.form-body .form-group.half-width input {
    width: calc(100% - 10px);
}
.form-body .form-group.half-width:first-child {
    margin-right: 10px;
}
.form-body .form-group.half-width:last-child {
    margin-left: 10px;
}
.form-body .address-type {
    display: flex;
    align-items: center;
    margin-bottom: 15px;
    /* padding-right:10px; */
}
.form-body .address-type input {
    margin-right: 10px;
}
.form-body .buttons {
    display: flex;
    justify-content: space-between;
}
.form-body .buttons button {
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}
.form-body .buttons .save-button {
    background-color: #ff5722;
    color: white;
}
.form-body .buttons .cancel-button {
    background-color: white;
    color: #2874f0;
    border: 1px solid #2874f0;
}

/order address/


.header p {
    font-size: 16px;
    margin-bottom: 40px;
    margin-top: -10px;
    margin-left: -60px;
    width:1020px;
}
.item {
    display: flex;
    align-items: flex-start;
    margin-bottom: 20px;
    margin-top: 100px;
    
}
.item img {
    width: 100px;
    height: auto;
    margin-right: 10px;
    margin-left: -1020px;
}
.item-details {
    flex-grow: 1;
}
.item-title {
    font-size: 16px;
    font-weight: bold;
    margin-bottom: 5px;
    width: 350px;
}
.item-subtitle {
    color: #555;
    margin-bottom: 5px;
}
.item-seller {
    color: #888;
    margin-bottom: 10px;
}
.item-price {
    font-size: 18px;
    font-weight: bold;
    color: #333;
    margin-right: 10px;
}
.item-discount {
    color: #388e3c;
    margin-right: 10;
    margin-left: 60px;
    margin-top: -20px;
}
.item-offer {
    color: #388e3c;
    display: flex;
    align-items: center;
    margin-left: 130px;
    margin-top: -1px;
}
.item-offer i {
    margin-left: 5px;
}
.delivery-options {
    margin-top: -135px;
    margin-right: 20px;
    margin-left: -100px;
}
.delivery-option {
    display: flex;
    align-items: center;
    margin-bottom: -15px;
    margin-left: 450px;
}
.delivery-option input {
    margin-right: 10px;
}
.delivery-option span {
    color: #888;
}
.delivery-option .free {
    color: #388e3c;
}
.open-box {
    display: flex;
    align-items: center;
    margin-top: 20px;
    width: 300px;
    margin-left: 450px;
}
.open-box i {
    color: #fbc02d;
    margin-right: -100px;
    margin-left: -170px;
    width: 300px;
}
.open-box span {
    color: #333;
}

.quantity {
    display: flex;
    align-items: center;
    margin-top: 20px;
   
}
.quantity button {
    background-color: #fff;
    border: 1px solid #ddd;
    padding: 5px 10px;
    cursor: pointer;
}
.quantity input {
    width: 30px;
    text-align: center;
    border: 1px solid #ddd;
    margin: 0 10px;
}
.remove {
    margin-left: 20px;
    color: #070707;
    cursor: pointer;
}

/payment css/

/* *{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Roboto', sans-serif;
    color:#444;
}
 body{
    height:100vh;
    display:flex;
    align-items:center;
    justify-content:center;
} 
.accordion{
    display:flex;
    width:67%;
    border:1px solid #ccc;
    border-radius:7px;
}*/
.left{
    width:25%;
    font-weight:bold;
}
.left p{
    padding:30px 20px;
}
.methods{
    padding:10px 0;
}
.methods div{
    padding:7px 20px;
    cursor:pointer;
    font-size:15px;
}
.methods div:hover{
    box-shadow: 0 0 10px rgba(172,255,47,0.196);
}
.methods div::after{
    content:'';
    display:inline-block;
    color:greenyellow;
    width:0;
    height:0;
    border-color:transparent;
    border-style:solid;
    border-width:4px 0 4px 4px;
    border-left-color: var(--fondy-success);
    margin-left:10px;
}
.fa-solid{
    margin-right:10px;
    font-size:22px;
    color:#aaa;
}
.center{
    width:50%;
    border-right:1px solid #ccc;
    border-left:1px solid #ccc;
    height:70vh;
}
.center a{
    width:100%;
    padding:15px;
    display:flex;
    justify-content: center;
    align-items: center;
}
.right{
    width:25%;
}
.right p{
    padding:30px 20px;
    font-weight: bold;
}
.details{
    padding:20px 20px;
}
.right a{
    display:flex;
    align-items: center;
    justify-content: center;
    padding:15px;
}
.card-details{
    padding: 20px 80px;
}
.card-details .c-number{
    width:100%;
    border:1px solid #aaa;
    border-radius: 3px;
    padding:0 12px;
    margin-top: 10px;
    height:50px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}
input{
    border:none;
    border-radius: 3px;
    outline:none;
}
.c-details{
    display:flex;
    width:100%;
    justify-content: space-between;
    margin:20px 0;
}
.cc-exp{
    border:1px solid #aaa;
    border-radius: 3px;
    height:50px;
    margin-top: 10px;
    padding:12px;
    width:150px;
}
.c-details .cvv-box{
    border:1px solid #aaa;
    margin-top:10px;
    padding:12px;
    height:50px;
    border-radius:3px;
    display: flex;
    justify-content:space-between;
    width:108px;
}
.cc-cvv{
    width:60px;
}
.email input{
    width:100%;
    border:1px solid #aaa;
    border-radius:3px;
    padding:12px;
    height:50px;
    margin-top:10px;
}
button{
    width:100%;
    border:none;
    height:50px;
    border-radius:3px;
    margin-top:30px;
    font-size:18px;
    color:#444;
    background-color: greenyellow;
}
button:hover{
    background-color:#444;
    color:white;
    cursor:pointer;
}
/* responsive code */
* {
margin: 0;
padding: 0;
font-family: 'Poppins', sans-serif;
box-sizing: border-box;
}

body {
background: #fff;
}

/* Header part */
header {
position: relative;
width: 100%;
padding: 20px 10px;
display: flex;
justify-content: space-between;
align-items: center;
flex-wrap: wrap;
}

header .logo {
max-width: 90px;
}

header ul {
display: flex;
flex-wrap: wrap;
margin-right: 0;
}

header ul li {
list-style: none;
}

header ul li a {
display: inline-block;
color: #333;
font-weight: 400;
margin-left: 15px;
text-decoration: none;
font-size: 16px;
padding: 5px 10px;
border-radius: 25px;
transition: background-color 0.2s, color 0.1s;
}

header a:hover {
background: linear-gradient(to right, #ff5f6d, #ffc371);
color: #fff;
}


    </style>
</head>
<body>

    <!--Header part-->
    <header>
        <a href="#"><img src="logo.png" class="logo"></a>
        <ul>
         <li><a href="#">Home</a></li>
         <li>
         <!-- <div class="dropdown">
             <a href="#">Art catagorey</a>
             <div class="dropdown-content">
              <a href="water.html">Water Paint</a>
              <a href="oil.html" style="margin-left: 29px;"> Oil Paint</a>
              <a href="sketch.html"  style="margin-left: 29px;padding-right: -10px;">Sketch</a>
             </div>
            </div> -->
         </li>
         <li><a href="sell.html">Product Sell</a></li>
         <li><a href="slide img.html">what's New</a></li>
         <li><a href="#">Contect</a></li>
        </ul>
     </header>
    <ul class="accordion">
        <li>
            <input type="radio" name="accordion" id="first" checked>
            <label for="first" style=" background: linear-gradient(to right, #ff5f6d, #ffc371);color:#fff;border-radius:10px;">Delevery Address</label>
            <div class="content">
                <div class="container">
                    <div class="form-container">
                        <!-- <div class="form-header">
                            <div class="step">2</div>
                            <h2>DELIVERY ADDRESS</h2>
                        </div> -->
                        <div class="form-body">
                            <div class="section-title">
                                <input checked="" id="home" name="address-type" type="radio"/>
                                <label for="home" style="margin-bottom:-40px;">EDIT ADDRESS</label>
                            </div>
                            <button style=" background: linear-gradient(to right, #ff5f6d, #ffc371);width:61%; color: white; padding-left: 20px; border: none; border-radius: 5px; cursor: pointer;">
                                <i class="fas fa-map-marker-alt"></i> Use my current location
                            </button>
                            <br><br>
                            <div class="form-group half-width">
                                <input id="name" placeholder="Name" type="text"/>
                                <!-- <div class="error">Please fill out this field.</div> -->
                            </div>
                            <div class="form-group half-width" style="margin-top:-65px;margin-left:440px;">
                                <input id="mobile" placeholder="10-digit mobile number" type="text"/>
                                <!-- <div class="error">Please fill out this field.</div> -->
                            </div>
                            <div class="form-group half-width">
                                <input id="pincode" placeholder="Pincode" type="text"/>
                                <!-- <div class="error">Please fill out this field.</div> -->
                            </div>
                            <div class="form-group half-width" style="margin-top:-65px;margin-left:440px;">
                                <input id="locality" placeholder="Locality" type="text"/>
                                <!-- <div class="error">Please fill out this field.</div> -->
                            </div>
                            <div class="form-group full-width" style="height:70px;width:1477px;margin-bottom:20px;">
                                <input id="address" placeholder="Address (Area and Street)" type="text" style="padding-bottom:50px;"/>
                                <!-- <div class="error">Please fill out this field.</div> -->
                            </div>
                            <div class="form-group half-width">
                                <input id="city" placeholder="City/District/Town" type="text"/>
                                <!-- <div class="error">Please fill out this field.</div> -->
                            </div>
                            <div class="form-group half-width" style="margin-top:-65px;margin-left:440px;">
                                <select id="state">
                                    <option>--other--</option>
                                    <option>West Bengal</option>
                                    <option>Delhi</option>
                                    <option>Asam</option>
                                    <option>Bihar</option>
                                    <option>Chandigar</option>
                                    <option>Mumbai</option>
                                    <!-- Add other states as needed -->
                                </select>
                            </div>
                            <div class="form-group half-width" >
                                <input id="landmark" placeholder="Landmark (Optional)" type="text"/>
                            </div>
                            <div class="form-group half-width" style="margin-top:-65px;margin-left:440px;">
                                <input id="alternate-phone" placeholder="Alternate Phone (Optional)" type="text"/>
                            </div>
                            <div class="address-type" style="width:800px;">
                                <input checked="" id="home" name="address-type" type="radio"/>
                                <label for="home" style="margin-right:70px;">Home (All day delivery)</label>
                                <input id="work" name="address-type" type="radio"/>
                                <label for="work">Work (Delivery between 10 AM - 5 PM)</label>
                            </div>
                            <div class="buttons" style="margin-top: -40px;">
                                <button class="save-button" style="width:300px;">SAVE AND DELIVER HERE</button>
                                <button class="cancel-button" style="margin-right:-240px;width:150px;">CANCEL</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <li>
            <input type="radio" name="accordion" id="second">
            <label for="second" style=" background: linear-gradient(to right, #ff5f6d, #ffc371);color:#fff;border-radius:10px;">Order Address</label>
            <div class="content" style="height:350px;">
                <div class="container" style="
                padding: 60px;
                padding-left: 300px;
                border-radius: 5px;
                max-width: 900px;
                margin-left: 100px;">
                    <div class="header">
                        <p><b>
                     You can continue to place order with following available items.
                    </b>
                    </p>
                    </div><br>
                    <div class="item">
                     <img alt="Image of Portronics Key7 Combo Mouse Combo Set with 2.4G" height="100" src="https://storage.googleapis.com/a1aa/image/kCtmKWrUOToqD1JZllTMl1YDIvG4rHoFDnvtv2vOO2E4CezJA.jpg" width="100"/>
                     <div class="item-details">
                      <div class="item-title">
                       Portronics Key7 Combo Mouse Combo Set with 2.4G...
                      </div>
                      <div class="item-subtitle">
                       Black, Orange
                      </div>
                      <div class="item-seller">
                       Seller: RetailNet
                      </div>
                      <div class="item-price">
                       ₹799
                      </div>
                      <div class="item-discount">
                       60% Off
                      </div>
                      <div class="item-offer">
                       1 offer applied
                       <i class="fas fa-info-circle">
                       </i>
                      </div>
                      <div class="delivery-options">
                       <div class="delivery-option">
                        <input id="delivery1" name="delivery" type="radio"/>
                        <label for="delivery1">
                         Delivery in 2 days, Sun |
                         <span class="free" style="margin-left:-195px;margin-bottom:-15px;">
                            <br><br><br><br>
                          ₹40 Free
                         </span>
                        </label>
                       </div>
                       <div class="delivery-option">
                        <input checked="" id="delivery2" name="delivery" type="radio"/>
                        <label for="delivery2">
                         Delivery by Tomorrow, Sat |
                         <span class="free" style="margin-left:-220px;">
                            <br><br><br><br>
                          ₹70 Free
                         </span>
                        </label>
                       </div>
                      </div>
                      <div class="open-box">
                       <i class="fas fa-box-open">
                       </i>
                       <span style="width:450px;margin-right:100px;">
                        Open Box Delivery is eligible for this item. 
                        You will receive a confirmation post payment.
                       </span>
                       <!-- <a href="#" >
                        Know More
                       </a> -->
                      </div>
                     </div>
                    </div>
                    <div class="quantity" style="margin-bottom:-130px;">
                     <button style="margin-left:-1020px;">
                      -
                     </button>
                     <input type="text" value="1"/>
                     <button>
                      +
                     </button>
                     <div class="remove">
                         <b>
                      REMOVE
                     </b>
                     </div>
                    </div>
                   </div>
            </div>
        </li>
        <li>
            <input type="radio" name="accordion" id="third">
            <label for="third" style=" background: linear-gradient(to right, #ff5f6d, #ffc371);color:#fff;border-radius:10px;">Payment Option</label>
            <div class="content" style="
            display:flex;
            align-items:center;
            justify-content:center;
            display:flex;
            
            border:1px solid #ccc;
            border-radius:7px;
            ">
                <div class="container">
                    <div class="left" style="margin-left:180px;">
                        <p>Payment methods</p>
                        <hr style="border:1px solid #ccc; margin: 0 15px;">
                        <div class="methods">
                            <div onclick="doFun()" id="tColorA" style="color:greenyellow;">
                                <i class="fa-solid fa-credit-card" style="color:greenyellow;"></i>
                                Payment by card
                            </div>
                            <div onclick="doFunA()" id="tColorB">
                                <i class="fa-solid fa-building-columns" style="color:greenyellow;width:10%;height:10%;"></i>
                                Internet Banks
                            </div>
                            <div onclick="doFunB()" id="tColorC">
                                <i class="fa-solid fa-wallet"></i>
                                Apple/Google pay
                            </div>
                            <div onclick="doFunB()" id="tColorC">
                                <i class="fa-solid fa-wallet"></i>
                                Cash on Delivery
                            </div>
                        </div>
                        <hr style="border:1px solid #ccc; margin: 0 15px;">
                    </div>
                    <div class="center">
                        <a href="https://www.shift4shop.com/credit-card-logos.html">
                            <img alt="Credit Card Logos" title="Credit Card Logos" src="https://www.shift4shop.com/images/credit-card-logos/cc-lg-4.png" 
                            width="250" height="auto"/>
                        </a>
                        <hr style="border:1px solid #ccc; margin: 0 15px;">
                        <div class="card-details">
                            <form>
                                <p>Card Number</p>
                                <div class="c-number" id="c-number">
                                    <input id="number" class="cc-number"
                                    placeholder="Card number" maxlength="19"
                                    required>
                                    <i class="fa-solid fa-credit-card" style="
                                    margin:0;"></i>
                                </div>
                                <div class="c-details">
                                    <div>
                                        <p>Expiry date</p>
                                        <input id="e-date" class="cc-exp" placeholder="MM/YY" 
                                        required maxlength="5" required>
                                    </div>
                                    <div>
                                        <p>CVV</p>
                                        <div class="cvv-box" id="cvv-box">
                                            <input id="cvv" class="cc-cvv" placeholder=" cvv" required maxlength="3" required>
                                            <i class="fa-solid fa-circle-question" title="
                                            3 digits on the back of the card" style="
                                            cursor:pointer;"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="email">
                                    <p>Email</p>
                                    <input type="email" placeholder="example@email.com"
                                    id="email" required>
                                </div>
                                <button>PAY NOW</button>
                            </form>
                        </div>
                    </div>
                    <div class="right">
                        <p>Order information</p>
                        <hr style="border:1px solid #ccc;margin:0 15px;">
                        <div class="details">
                            <div style="font-weight: bold;padding:3px 0;">
                                Order description
                            </div>
                            <div style="padding:3px 0;">Test Payment</div>
                        </div>
                        <hr style="border:1px solid #ccc; margin:0 15px;">
                        <a href="https://www.shift4shop.com/credit-card-logos.html">
                            <img alt="Credit Card Logos" title="Credit Card Logos" src="https://www.shift4shop.com/images/credit-card-logos/cc-lg-4.png"
                            width="100%" height="auto"/>
                        </a>
                    </div>
                </div>
            </div>
        </li>
    </ul>

    <script>
        let tColorA = document.getElementById('tColorA'),
        tColorB = document.getElementById('tColorB'),
        tColorC = document.getElementById('tColorC'),
        iconA = document.querySelector('.fa-credit-card'),
        iconB = document.querySelector('.fa-building-columns'),
        iconC = document.querySelector('.fa-wallet'),
        cDetails = document.querySelector('.card-details');

        function doFun(){
            tColorA.style.color = "greenyellow";
            tColorB.style.color = "#444";
            tColorC.style.color = "#444";
            iconA.style.color = "greenyellow";
            iconB.style.color = "#aaa";
            iconC.style.color = "#aaa";
            cDetails.style.display = "block";
        }
        function doFunA(){
            tColorA.style.color = "#444";
            tColorB.style.color = "greenyellow";
            tColorC.style.color = "#444";
            iconA.style.color = "#aaa";
            iconB.style.color = "greenyellow";
            iconC.style.color = "#aaa";
            cDetails.style.display = "none";
        }
        function doFunB(){
            tColorA.style.color = "#444";
            tColorB.style.color = "#444";
            tColorC.style.color = "greenyellow";
            iconA.style.color = "#aaa";
            iconB.style.color = "#aaa";
            iconC.style.color = "greenyellow";
            cDetails.style.display = "none";
        }
        let cNumber = document.getElementById('number');
        cNumber.addEventListener('keyup',function(e){
            let num = cNumber.value;

            let newValue = '';
            num = num.replace(/\s/g, '');
            for(var i = 0; i < num.length; i++){
                if(i%4 == 0 && i > 0) newValue = newValue.concat(' ');
                newValue = newValue.concat(num[i]);
                cNumber.value = newValue;
            }

            let ccNum = document.getElementById('c-number');
            if(num.length < 16){
                ccNum.style.border = "1px solid red";
            }
            else{
                ccNum.style.border = "1px solid greenyellow";
            }
        });

        let eDate =  document.getElementById('e-date');
        eDate.addEventListener('keyup', function(e){

            let newInput = eDate.value;
        
            if(e.which !== 8){
                var numChars = e.target.value.length;
                if(numChars == 2){
                    var thisVal = e.target.value;
                    thisVal += '/';
                    e.target.value = thisVal;
                    console.log(thisVal.length)
                }
            }
            if(newInput.length<5){
                eDate.style.border = "1px solid red";
            }
            else{
                eDate.style.border = "1px solid greenyellow";
            }
        });

         let cvv = document.getElementById('cvv');
         cvv.addEventListener('keyup', function(e){

            let elen = cvv.value;
            let cvvBox = document.getElementById('cvv-box');
            if(elen.length<3){
                cvvBox.style.border = "1px solid red";
            }
            else{
                cvvBox.style.border = "1px solid greenyellow";
            }
         });
    </script>
</body>
</html>