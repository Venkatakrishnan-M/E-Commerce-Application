<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<!--  script src='https://kit.fontawesome.com/a076d05399.js'></script>-->
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
    <%String email = session.getAttribute("email").toString(); %>
            <center><h2>Online shopping E-Commerce</h2></center>
            <h2><a href=""> <%out.println(email); %><i class='fas fa-user-alt'></i></a></h2>
            <a href="home.jsp">Home <i class="fa fa-institution"></i></a>
            <a href="myCart.jsp">My Cart <i class='fas fa-cart-arrow-down'></i></a>
            <a href="myOrders.jsp">My Orders  <i class='fab fa-elementor'></i></a>
            <a href="messageUs.jsp">Message Us <i class='fas fa-comment-alt'></i></a>
            <a href="about.jsp">About <i class="fa fa-address-book"></i></a>
            <a href="logout.jsp">Logout <i class='fas fa-share-square'></i></a>
            <div class="search-container">
             <form action='searchHome.jsp' method="post">
             <input type='text' placeholder ="Search" name = "search">
             <button type="submit"><i class="fa fa-search"></i></button>
             </form>
               
                
             
            </div>
          </div>
           <br>
           <!--table-->