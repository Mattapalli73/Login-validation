<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="style.css">
</head>
<body>
    
<header class="header">

    <div id="menu-btn" class="fas fa-bars"></div>

    <a href="#" class="logo"> <span>E CAR</span> Store</a>

    <nav class="navbar">
        <a href="#home">home</a>
        <a href="#vehicles">Models</a>
        <a href="#services">services</a>
        <a href="#featured">Trending</a>
        <a href="#contact">contact</a>
        
    </nav>

    <div id="login-btn">
        <button class="btn"> <a href="mainpage.jsp">login</a></button>
        <i class="far fa-user"></i>
    </div>

</header> 
    
<div class="login-form-container">

    <span id="close-login-form" class="fas fa-times"></span>

  
</div>

<section class="home" id="home">

    <img class="home-parallax" src="https://www.topgear.com/sites/default/files/images/news-article/2018/10/002533b9201fa5bf4401212dd4de188d/46-01.jpg" alt="">

    <a class="btn home-parallax">explore cars</a>

</section>

<section class="icons-container">

    

    <div class="icons">
        <i class="fas fa-car"></i>
        <div class="content">
            <h3>1000+</h3>
            <p>Sales</p>
        </div>
    </div>

    <div class="icons">
        <i class="fas fa-users"></i>
        <div class="content">
            <h3>150+</h3>
            <p>Clients</p>
        </div>
    </div>
<div class="icons">
        <i class="fas fa-home"></i>
        <div class="content">
            <h3>15+</h3>
            <p>Service Centers</p>
        </div>
    </div>
    <div class="icons">
        <i class="fas fa-car"></i>
        <div class="content">
            <h3>1000+</h3>
            <p>New Models</p>
        </div>
    </div>

</section>


<section class="vehicles" id="vehicles">

    <h1 class="heading"> New <span>Models</span> </h1>


                <br><img src="https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg?format=jpg&crop=4560,2565,x790,y784,safe&width=1200"  width="300" height="250" align="left" alt="hifff">
                <div class="content">
                    <h3>Model-1</h3>
                    <div class="price"> <span>price : </span> $70,000/- </div>
                    <p>
                        new
                        <span class="fas fa-circle"></span> 2022
                        <span class="fas fa-circle"></span> automatic
                        <span class="fas fa-circle"></span> Electric
                        <span class="fas fa-circle"></span> 200mph
                    </p>
                    <a href="#" class="btn">check out</a>
                </div>
        <br><br><br><br><br> <br>

                <img src="https://cdn.wallpapersafari.com/41/56/chIKZm.jpg" width="300" height="250" align="left"alt="hi">
                <div class="content">
                    <h3>Model-2</h3>
                    <div class="price"> <span>price : </span> $60,000/- </div>
                    <p>
                        new
                        <span class="fas fa-circle"></span> 2020
                        <span class="fas fa-circle"></span> Manual
                        <span class="fas fa-circle"></span> petrol
                        <span class="fas fa-circle"></span> 153mph
                    </p>
                    <a href="#" class="btn">check out</a>
                </div>
 <br><br><br><br><br> <br>           
                 <img src="https://t4.ftcdn.net/jpg/03/73/44/29/360_F_373442964_nTrSjNoWBD1stv6UqeczXxHuYmg7CRap.jpg" width="300" height="250" align="left" alt="hi">
                <div class="content">
                    <h3>Model-3</h3>
                    <div class="price"> <span>price : </span> $50,000/- </div>
                    <p>
                        new
                        <span class="fas fa-circle"></span> 2021
                        <span class="fas fa-circle"></span> automatic
                        <span class="fas fa-circle"></span> petrol
                        <span class="fas fa-circle"></span> 193mph
                    </p>
                    <a href="#" class="btn">check out</a>
                </div>
<br><br><br><br><br><br><br><br>

        </div>

        <div class="swiper-pagination"></div>

  

</section>




<section class="services" id="services">

    <h1 class="heading"> Premium <span>services</span> </h1>

    <div class="box-container">

        <div class="box">
            <i class="fas fa-car"></i>
            <h3>Free Delivery</h3>
            <p>We do deliver the car to your location </p>
            <a href="#" class="btn"> read more</a>
        </div>

        <div class="box">
            <i class="fas fa-tools"></i>
            <h3>Maintenance</h3>
            <p>Free service at 100+ locations</p>
            <a href="#" class="btn"> read more</a>
        </div>

        <div class="box">
            <i class="fas fa-car-crash"></i>
            <h3>Vehicle Insurance</h3>
            <p>*Free for 1 year</p>
            <a href="#" class="btn"> read more</a>
        </div>

    </div>

</section>

<section class="featured" id="featured">

    <h1 class="heading"> <span>Trending </span>Models</h1>

    <div class="swiper featured-slider">

       <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="https://media.istockphoto.com/photos/yellow-supercar-picture-id174860711?k=20&m=174860711&s=612x612&w=0&h=HF3k2wp26rEdoW6Rh3MplMsFHSE3E-ULBMxuU1jwbPE=" width="400" height="300" alt="">
                <div class="content">
                    <h3>Model-Z</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <div class="price">$65,000/-</div>
                    <a href="#" class="btn">BuyNow</a>
                </div>
            </div>
            
</section>

<section class="newsletter">
    
    <h3>subscribe for latest updates</h3>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum, suscipit.</p>

   <form action="">
        <input type="email" placeholder="enter your email">
        <input type="submit" value="subscribe">
   </form>

</section>



<section class="contact" id="contact">

    <h1 class="heading"><span>contact</span> us</h1>

    <div class="row">


<iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d101555.85168817698!2d-89.69931068041718!3d37.30413035176242!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8877853694cf77fb%3A0x80901cff3a8d5f92!2sCape%20Girardeau%2C%20MO!5e0!3m2!1sen!2sus!4v1658983444582!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        
        <form action="">
            <h3>Enquiry</h3>
            <input type="text" placeholder="Fill your name" class="box">
            <input type="email" placeholder="Provide email" class="box">
            <input type="tel" placeholder="subject" class="box">
            <textarea placeholder="Enter your message" class="box" cols="30" rows="10"></textarea>
            <input type="submit" value="send message" class="btn">
        </form>

    </div>

</section>

<section class="footer" id="footer">

    <div class="box-container">

        <div class="box">
            <h3>our branches</h3>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> india </a>
                   <a href="#"> <i class="fas fa-map-marker-alt"></i> USA </a>
        </div>


        <div class="box">
            <h3>contact info</h3>
            <a href="#"> <i class="fas fa-phone"></i> +573-888-9999 </a>
            <a href="#"> <i class="fas fa-phone"></i> +91-95555-5555 </a>
            <a href="#"> <i class="fas fa-envelope"></i> carstorewebpage@gmail.com </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> Cape Girardeau-63701 </a>
        </div>


    </div>

   
</section>

<script src="script.js"></script>


<a href="mainpage.jsp" > <button>Logout</button></a>
</body>
</html>