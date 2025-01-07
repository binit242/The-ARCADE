
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="jakarta.servlet.http.HttpSession"%>




<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
      rel="stylesheet"
    />

    <!-- Icon -->
    <link
      rel="stylesheet"
      href="https://unicons.iconscout.com/release/v4.0.0/css/line.css"
    />
    <!-- icon -->

    <!-- Google fonts End -->

    <!-- custon style Sheet & JavaScript -->
    <link rel="stylesheet" href="css/shop.css" />
    <link rel="stylesheet" href="css/index.css" />
    <link rel="stylesheet" href="css/about.css" />
    <script src="js/index.js" defer></script>
    <script src="js/shop.js" defer></script>
    <!-- custon style Sheet & JavaScript -->
    <title>The Arcade Store</title>
    <!-- Adds icon to title -->
    <link rel="icon" href="image\title.png" type="image/x-icon" />
    
    
    
    
    <style>
    
    
    
    
/* ======About Section=========== */
.about-section{
    width: 90vw;
    margin-inline: auto;
    margin-block: 4rem;
    grid-template-areas:
        'one' 'two';
}

.about-section :nth-child(1){ 
    grid-area: one;
}

.about-section :nth-child(2){ 
    grid-area: two;
}

.about-section >* img{
border-radius: 2rem;
margin-bottom: 2rem;
}

.about-info{
padding-inline: 0.5rem;
}

.about-info >* p{
    line-height: 1.8rem;
}

.about-btn{
    margin-top: 3rem;
    animation: appry 0.8s ease-in-out;
}

.shop-feature{
    background-color: hsl(var(--clr-gray));
}


#fimg{
    
        animation: sco 0.5s ease-in-out;
    
}

#ftxt h3{

        animation: sco 0.6s ease-in-out;

}


#ftxt h1{

    animation: appr 0.7s ease-in-out;

}

#ftxt p{

    animation: appry 0.8s ease-in-out;

}


#secimg{
    
    animation: sco  ease-in-out;
    animation-timeline: view();
animation-range: entry 0% cover 40%;

}

#sectxt h3{
    animation: sco  ease-in-out;
    animation-timeline: view();
animation-range: entry 0% cover 40%;
}


#sectxt h1{
    animation: appr  ease-in-out;
    animation-timeline: view();
animation-range: entry 0% cover 40%;
}

#sectxt p{
    animation: appry  ease-in-out;
    animation-timeline: view();
animation-range: entry 0% cover 40%;
}


/*========Media Quries=========== */


@media (min-width: 60em){ 
    .about-section{
        grid-auto-columns: 1fr; 
        align-items: center;
        --grid-gap: 3rem;
        grid-template-areas: 'one two';
}

    .about-info{
        display: grid;
        place-content: center;
        padding-top: 10rem;
}

.about-info > h3{
    font-size: 1rem;
   

}

}

        .product-details i:hover{
	  color:hsl(var(--clr-white));
    text-shadow: 0px 0px 15px #fff;
}
    
  .sub-pro p{
            text-wrap: wrap;
            margin-top: -12%;
            margin-left: 5%;
            
	 height:66px;
    overflow: hidden;           
    
    display: block;       
        }
        
        
          #pr{
           position:relative;
           left:-53%;
           margin-top:17.9%;
            font-size: 22px;
            color: #108800;
        }
        
         #qt{
            width: 40%;
            z-index: 5;
            margin-top: 5%;
            position:relative;
            left:3%;
            font-size: 15px;
        }
      
        
        
    
    
    
    
    
    </style>
    
    
    
    
  </head>

  <body class="home">
  


    <!-- ========================== Header Section ============================== -->

    <header class="primary-header container flex">
      <div class="header-inner-one flex">
          <div class="logo">
              <a href="index.jsp"><img src="image\logo.png.png" alt=""></a>
          </div>
          <button class="mobile-close-btn" data-visible="false" aria-controls="primary-navigation"><i class="uil uil-times-circle"></i></button>


          <nav>
              <ul id="primary-navigation" data-visible="false" class="primary-navigation flex">
                  <li><a class="fs-100 fs-montserrat bold-500" href="index.jsp">Home</a></li>
                  <li><a class="fs-100 fs-montserrat bold-500" href="shop.jsp">Shop</a></li>
                  <li><a class="active  fs-100 fs-montserrat bold-500" href="about.jsp">About</a></li>
                  <li><a class="fs-100 fs-montserrat bold-500" href="blog.jsp">Blog</a></li>
                  <li><a class="fs-100 fs-montserrat bold-500" href="contactus.jsp">Contact Us</a></li>
              </ul>
          </nav>
      </diV>


      <div class="header-login flex">
          
          <!-- ================================ Search ======================================== -->
          <div class="home-search text-black flex">
              
              <input type="text" placeholder="      search" class="srput fs-montserrat ">
                <div class="ok">
                    <!-- <i class="uil text-black uil-search"></i> -->
                </div>
          </div>

<!-- ================================ login ======================================== -->
<!-- <a href="login.jsp"><button class="navbut bg-red text-white fs-100 fs-montserrat bold-500" style="text-decoration: none;" >login</button></a> -->

 	<%
		HttpSession s = request.getSession();
		String pname = (String)s.getAttribute("pname");
			
		String uid = (String)s.getAttribute("uid");
			%>
			

          <!-- ================================ user icon ======================================== -->

            <i id="user-box" aria-controls="user-icon" class="uil uil-user-circle" onclick="togmenu()"></i>
            <div class="sub-menu-wrap" id="submenu">
                <div class="sub-menu">
                    <div class="user-info">
                        <img style="height: 60px; width: 60px; overflow: hidden; object-fit: cover;" src="Cimg_search?uid=<%=uid %>">
                        
                        <h2><%=pname%></h2>
                        	
                    </div>
                    <hr>
<!--  ---------------------------------------- --------------------------------- ------------------  -->
<a href="#" class="sub-menu-link">
    <img src="image/profile.png">
    <p>Edit Profile</p>
    <span>></span>
</a>
<!--  ---------------------------------------- --------------------------------- ------------------  -->
<a href="#" class="sub-menu-link">
    <img src="image/setting.png">
    <p>Settings & Privacy</p>
    <span>></span>
</a>
<!--  ---------------------------------------- --------------------------------- ------------------  -->
<a href="contactus.jsp" class="sub-menu-link">
    <img src="image/help.png">
    <p>Help & Support</p>
    <span>></span>
</a>
<!--  ---------------------------------------- --------------------------------- ------------------  -->
<a href="Logout" class="sub-menu-link">
    <img src="image/logout.png">
    <p>Log Out</p>
    <span>></span>
</a>

                </div>
            </div>
            <!-- ================================ cart icon ======================================== -->
            <div style="position: relative; display: inline-block; margin-bottom: 12px;">
            
            
            
            
            
            
             <%		
             
             int cc = 0;
             
             try {
             
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String databaseurl = "jdbc:mysql://localhost:3306/user";
			String un = "root";
			String pwd = "Binit.1234";
					
			Connection con = DriverManager.getConnection(databaseurl,un,pwd);
			String sql = "SELECT COUNT(uid) AS numpr FROM cart WHERE uid = ?";
			
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, uid);
			
			
			ResultSet rs = ps.executeQuery();
			
			 if (rs.next()) {
		            cc = rs.getInt("numpr");
		        }
		
   %>
            
            
            
            
            
            
            
   
        <i id="cart-box" aria-controls="cart-icon" class="uil uil-shopping-bag" onclick="togcart()" style="text-decoration: none;"></i><span class="cart-count" id="cartCount"><%=cc%></span>
        
        
        <% } catch (Exception e) {
            out.println("<h1>Error: " + e.getMessage() + "</h1>");
        } %>
        
        
   
</div>


            <!-- ============= Cart Box ============ -->
            
         
            <div id="cart-icon" data-visible="false" class="cart-icon">
            
              
        </div>

        <div class="mobile-open-btn">
            <i class="uil uil-align-right"></i>
        </div>

  <div class="sub-cart-wrap" id="subcart" style="z-index:10;">
          <div class="sub-cart">
              <div class="cart-info">
                  <h3>Shopping Cart</h3>                  
              </div>
              <hr>
              
              
   <%		
		

		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String databaseurl = "jdbc:mysql://localhost:3306/user";
			String un = "root";
			String pwd = "Binit.1234";
					
			Connection con = DriverManager.getConnection(databaseurl,un,pwd);
			String sql = "select * from cart where uid=?";
			
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, uid);
			
			ResultSet rs = ps.executeQuery();
			
			
			 int counter = 0;		        	

			
			while(rs.next() && counter < 2)
			{
				
				counter++;
   %>
 <!--  ---------------------------------------- --------------------------------- ------------------  -->
<a href='product-show.jsp?pid=<%= rs.getString("pid") %>' class="sub-pro">
    <img src="File_search?pid=<%=rs.getString("pid") %>" >
    <p class="fs-200"><%=rs.getString("pdname") %></p>
    <span id="qt"><b>Qty : </b><%=rs.getString("quantity") %></span>
    <span id='pr'>&#8377;<%=rs.getString("pdprice") %></span>
</a>
<hr>
			<%
			
			}			
		}
		catch(Exception e)
		{
			
		}
	%>
			<div class="carb">
           <a href="cart.jsp"  style="text-decoration: none; margin-left:10%;"><button class="navbut bg-red text-white fs-100 fs-montserrat bold-500" style="text-decoration: none; transform:scale(0.8); " >Cart</button> </a>
          </div>
          </div>
      </div>

        
       </div>


  </header>

  <!-- ======================== End header section ================================ -->
  


<!-- ================================= Feature section =================================== -->
    
<section class="shop-feature bg-gray grid">
  <div>
  <p class="fs-montserrat text-black">Home <span aria-haspopup="true" class="margin">></span>About</p>
  </div>
  <h2 class="fs-poppins fs-300 bold-800">About us</h2>
</section>
<!-- ================================= End feature section =================================== -->


<!-- ========================= About main Section ========================== -->



<section class="about-section grid"> 
  <div>
    <img src="image/about-us.png" alt="" id="fimg"> 
  </div>
      <div class="about-info" id="ftxt">
        <br><br>
        <h3 class="fs-poppins fs-200 text-red">Welcome To The ARCADE Store</h3> 
        <h1 class="fs-montserrat fs-500 text-black ">What is ARCADE ?</h1>
<p class="fs-montserrat fs-100">
  Welcome to The E-commerce Haven for gamers, your ultimate destination for all things gaming! Whether you're a casual player or a hardcore enthusiast, we provide a wide range of cutting-edge gaming gear, consoles, accessories, and digital content to elevate your gaming experience.
</p> <br>
<p class="fs-montserrat fs-100">
  Join our community of gamers today and start exploring the world of gaming like never before!
</p>
 
        <div class="about-btn">
              <a href="index.html"><button class="large-btn bg-red text-white fs-poppins"> Shop Now </button></a>
        </div>
</div>
</section>
<!-- ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| -->
 <!-- team members details -->
<section class="about-section grid"> 
  <div>
    <img src="image/Project members.jpg" alt="" id="secimg" > 
  </div>
      <div class="about-info" id="sectxt">
        <br><br>
        <h3 class="fs-poppins fs-200 text-red">The ARCADE Team</h3> 
        <h1 class="fs-montserrat fs-500 text-black ">Meet Our Team Members</h1>
<p class="fs-montserrat fs-100">
  Welcome to Arcade Zone, We are Sumanta, Binit, Ankita, Madhuja, Sourin and Rahul. We Six People Are Resposible For making this amazing Gaming e-commerce Site for Gaming. This is the Only Place Where A gamer can invest for happiness, and not only gamers anyone can buy there electronic gadgets from here. and Our moto is "WHERE THE GAME BEGINS".
</p> <br>
<!-- <p class="fs-montserrat fs-100">
  Join our community of gamers today and start exploring the world of gaming like never before!
</p> -->
 
</div>
</section>


<!-- ========================= End of About main Section ========================== -->






    <!-- ========================= Brand Section ========================== -->

<section class="brands grid">
  <div>
      <img src="image/br-1.png">
  </div>
  <div>
      <img src="image/br-2.png">
  </div>
  <div>
      <img src="image/br-3.png">
  </div>
  <div>
      <img src="image/br-4.png">
  </div>
  <div>
      <img src="image/br-5.png">
  </div>
  <div>
      <img src="image/br-6.png">
  </div>
</section>

<!-- ========================= End of Brand Section ========================== -->


<!-- ========================= footer Section ========================== -->

<section class="footer grid">
  <div class="footer-logo grid">
    <a href="index.jsp"><img src="image\logo.png.png" alt="" id="log"></a>
            <p class="fs-montserrat fs-100"> Connect with us</p>
                <div class="social-media flex">
                    <i class="uil uil-facebook-f"></i>
                    <i class="uil uil-instagram"></i>
                    <i class="uil uil-twitter"></i>
                    <i class="uil uil-linkedin"></i>
                    <i class="uil uil-telegram"></i>
                    <i class="uil uil-github"></i>
                </div>
    </div>
        <div class="footer-menu grid">
             <h3> Quick Links </h3>
             <ul>
                <li><a class="fs-montserrat text-black fs-100" href="index.jsp">Home</a></li>
                <li><a class="fs-montserrat text-black fs-100" href="shop.jsp">Shop</a></li>
                <li><a class="fs-montserrat text-black fs-100" href="about.jsp">About</a></li>
                <li><a class="fs-montserrat text-black fs-100" href="blog.jsp">Blogs</a></li>
                <li><a class="fs-montserrat text-black fs-100" href="contactus.jsp">Contact</a></li>
             </ul>
        </div> 
        <div class="contact grid">
            <h3 class="fs-poppins fs-200 bold-800">Contact</h3>
            <p class="fs-montserrat">+99 (0) 101 0000 888 ______________________ 40 , cross road , jhilbagan , dumdum , kolkata - 7000030 , west bengal , india</p>
        </div>
        <div class="emails grid">
        <h3 class="fs-poppins fs-200 bold-800"> Subscribe and connect </h3>
        <p class="updates fs-poppins fs-300 bold-800"> For latest News & updates </p>
        
        <div class="inputfield flex bg-gray"> 
        <input type="email" placeholder="Enter Your Email" class="fs-montserrat bg-gray">
            <button class="bg-red text-white fs-poppins fs-50"> Subscribe </button>
        </div>
        </div>
</section>
<!-- ========================= End of footer Section ========================== -->

<!-- ========================= Copyright Section ========================== -->

<section class="copyright">
    <!-- <p class="c-font fs-montserrat fs-100">2024 Store. All rights reserved </p> -->
    <p class="fs-montserrat fs-100 text-align p-top">&#169 Privacy Policy reserved to The Arcade Team 2024. Terms & Conditions applied. </p>
    </section>
<!-- ========================= End of Copyright Section ========================== -->
</body>
</html>
