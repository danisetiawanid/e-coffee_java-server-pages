<%-- 
    Document   : index.jsp
    Created on : Jul 18, 2019, 9:34:12 PM
    Author     : M.Dani Setiawan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>E-Coffee Shop</title>

    <!-- My Css -->
    <link rel="stylesheet" href="css/style.css">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

    <!-- Bootstrap Font Awesome -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<section id="nav-bar">
    <nav class="navbar navbar-expand-lg navbar-light">
        <a class="navbar-brand" href="#">
            <img src="img/coffee.png" alt="Coffe">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fa fa-bars" aria-hidden="true"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#top">HOME</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#services">SERVICES</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#about-us">ABOUT US</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#testimonials">TESTIMONIAL</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#footer">CONTACT</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">LOGIN</a>
                </li>
            </ul>
        </div>
    </nav>
</section>

<!--------------------- Banner Section ------------------>

<section id="banner">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <p class="promo-title">E-COFFEE SHOP</p>
                <p>E-Coffe is a coffe shop which this shop sell all various coffe like arabic, americano, brazilia, luwak, europe, etc coffe. We offer to you the best various coffe in the world</p>
                <a href="register.jsp"><img src="img/cart.png" class="play-btn"></a>Let's Buy a coffee
            </div>
            <div class="col-md-6 text-center">
                <img src="img/home2.png" class="img-fluid">
            </div>
        </div>
    </div>
    <img src="img/wave1.png" class="bottom-img">  
</section>

<!------------------- Services Section --------------->
<section id="services">
    <div class="container text-center">
        <h1 class="title">WHAT WE DO ?</h1>
        <div class="row text-center">
            <div class="col-md-4 services">
                <img src="img/brown.png" class="service-img">
                <h4>Mocha</h4>
                <p>A mocha is a mix between a cappuccino and a hot chocolate. It is made by putting mixing chocolate powder with an espresso shot and then adding steamed milk and micro-foam into the beverage.</p>
                <p><b>Rp. 20.000</b></p>
            </div>
            <div class="col-md-4 services">
                <img src="img/old.png" class="service-img">
                <h4>Café Latte</h4>
                <p>A café latte, or “latte” for short, is an espresso based drink with steamed milk and micro-foam added to the coffee. This coffee is much sweeter compared to an espresso due to the steamed milk.</p>
                <p><b>Rp. 35.000</b></p>
            </div>
            <div class="col-md-4 services">
                <img src="img/cup.png" class="service-img">
                <h4>Affogato</h4>
                <p>An affogato is a simple dessert coffee that is treat during summer and after dinner. It is made by placing one big scoope of vanilla ice cream within a single or double shot of espresso, and then this coffee is one of the best.</p>
                <p><b>Rp. 45.000</b></p>
            </div>
        </div>
        <button type="button" class="btn btn-primary">GET NOW !</button>
    </div>
</section>

<!-- ----------------About Us----------------------- -->

<section id="about-us">
    <div class="container">
        <h1 class="title text-center">WHY CHOOSE US ?</h1>
        <div class="row">
            <div class="col-md-6">
                <p class="about-title">Why we're Different</p>
                <ul>
                    <li>Mengerti racikan kopi yang tepat</li>
                    <li>Paket dikemas dengan baik</li>
                    <li>We deliver on time</li>
                    <li>Kami mempunyai reseller terpercaya</li>
                    <li>Kami melindungi hak konsumen</li>
                    <li>Harga yang terjangkau untuk pasar</li>
                    <li>Kami memberikan kualitas kopi terbaik</li>
                </ul>
            </div>
            <div class="col-md-6">
                <img src="img/e-coffe.png" class="img-fluid" style="width: 70%;">
            </div>
        </div>
    </div>
</section>

<!--------------- Testimonials --------------------->
<section id="testimonials">
    <div class="container">
        <h1 class="title text-center">ABOUT US</h1>
        <div class="row offset-1">
            <div class="col-md-5 testimonials">
                <p>the coffe shop is the coffe shop which this shop sell all various coffe like arabic, americano, brazilia, luwak, europe, etc coffe. We offer to you the best various coffe in the world</p>
                <img src="img/user1.png">
                <p class="userdetails">
                    <b>Hanas Bayu Pratama</b>
                    <br>
                    Internasional Freelance
                </p>
            </div>
            <div class="col-md-5 testimonials">
                <p style="margin-bottom: 20px;">Coffee has always been a significant part of my life. For me, it's a chance to start my day and gather my thoughts - it's fuel for my creative process.</p>
                <img style="margin-top: 10px; margin-bottom: 10px;" src="img/user2.png">
                <p class="userdetails">
                    <b>Muhamad Dani Setiawan</b>
                    <br>
                    Newbie
                </p>
            </div>
        </div>
    </div>
</section>

<!----------------------- Social Media section ------------------>
<section id="social-media">
    <div class="container text-center">
        <p>FIND US ON SOCIAL MEDIA</>
        <div class="social-icons">
            <a href="#"><img src="img/facebook-icon.png"></a>
            <a href="#"><img src="img/instagram-icon.png"></a>
            <a href="#"><img src="img/twitter-icon.png"></a>
            <a href="#"><img src="img/wa-icon.png"></a>
            <a href="#"><img src="img/linkedin-icon.png"></a>
            <a href="#"><img src="img/snapchat-icon.png"></a>
        </div>
    </div>
</section>

<!-------------------- footer section -------------------------->
<section id="footer">
    <img src="img/wave2.png" class="footer-img"> 
    <div class="container">
        <div class="row">
            <div class="col-md-4 footer-box">
                <img src="img/coffee.png" alt="Coffe">
                <p>Subscribe coffe shop Youtube Channel to watch videos How to login coffeshop account, How to become reseller of coffe shop, How to become the master of  </p>
            </div>
            <div class="col-md-4 footer-box">
                <p><b>CONTACT US</b></p>
                <p><i class="fa fa-map-marker"></i> Depok, West Java, Indonesia</p>
                <p><i class="fa fa-phone"></i> +628 7623792837</p>
                <p><i class="fa fa-envelope-o"></i> coffeshop@gmail.com</p>
            </div>
            <form action="SubcriberController?data=subcriber&proses=input-subcriber" method="post">
            <div class="footer-box">
                <p><b>SUBSCRIBE NEWSLETTER</b></p>
                <input type="email" name="email_subcriber" class="form-control" placeholder="Your Email" required>
                <input type="text"  name="phone_number"  class="form-control" placeholder="Your Phone Number" required>
                <button class="btn btn-primary">Subscribe</button>
            </div>
            <form>
        </div>
        <hr>
        <p class="copyright">Website Crafted by E-Coffee</p>
    </div>
</section>  

<!----------------------- Smooth Scrool -------------------->
<!----------------------- Smooth Scroll -------------------->  

<script src="js/jquery-1.10.2.js"></script>
<script src="js/smooth-scroll.js"></script>
<script>
   var scroll = new SmoothScroll('a[href*="#"]');
</script>
<script src="js/script.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

</body>
</html>
