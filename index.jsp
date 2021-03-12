<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display";
  letter-spacing: 5px;
}
</style>
</head>
<body>
<%-- <% response.sendRedirect("users/form"); %> --%>
<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
    <a href="#home" class="w3-bar-item w3-button">Home</a>
    
        <!-- Right-sided navbar links. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="form" class="w3-bar-item w3-button">Register</a>
     <a href="login" class="w3-bar-item w3-button">Login</a>
     <!--   <a href="#contact" class="w3-bar-item w3-button">Login</a> -->
    </div>
  </div>
</div><br><br>
<h1>XYZ Books</h1><br>
<!-- Header -->
<header class="w3-display-container w3-content w3-wide" style="max-width:1600px;min-width:500px" id="home">
  <img class="w3-image" src="https://images.pexels.com/photos/2663851/pexels-photo-2663851.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500 " alt="Hamburger Catering" width="1600" height="800">
  <div class="w3-display-bottomleft w3-padding-large w3-opacity">
    </div>
</header>

<!-- Page content -->
<div class="w3-content" style="max-width:1100px">

  
  
  <hr>
<br>

<!-- <input type="button" value="Register" 
onclick="window.location.href='users/form';  return false;" /><br><br><br>
<input type="button" value="Login" 
onclick="window.location.href='users/login';  return false;" /> -->

<%-- <% response.sendRedirect("books/home"); %> --%>
<footer class="w3-center w3-light-grey w3-padding-32">
  <p>Powered by Roopa</a></p>
</footer>
</body>
</html>