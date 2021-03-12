<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<div class="w3-top">
  <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
    <a href="#home" class="w3-bar-item w3-button">Home</a>
    <!-- Right-sided navbar links. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <!-- <a href="form" class="w3-bar-item w3-button">Register</a> -->
     <a href="login" class="w3-bar-item w3-button">Logout</a>
     <!--   <a href="#contact" class="w3-bar-item w3-button">Login</a> -->
    </div>
  </div>
</div><br><br>
<h2>Hello ${users.username},</h2><br>
<h4>Welcome to your profile </h4>
<br>
<h3>Your Information</h3>
    <table border="1" width="80%">
<tr>
<th>Username</th>
<th>Password</th>
<th>Gender</th>
<th>Country</th> 
<th>Update</th>
<th>Delete</th>

</tr>

<%-- <c:forEach var="tempUser" items="${userss}"> --%>
  

<c:url var="updateLink" value="/users/showFormForUpdate">

<c:param name="userId" value="${users.id}"></c:param></c:url>

<c:url var="deleteLink" value="/users/delete">
<c:param name="userId" value="${users.id}"></c:param>

</c:url>



<tr>
<td>${users.username}</td>
<td>${users.password}</td>
<td>${users.gender}</td>
<td>${users.country}</td> 

<td><a href="${updateLink}">Update</a></td>
<td><a href="${deleteLink}">Delete</a></td>

</tr>
<%-- </c:forEach> --%>

</table>
<br>
<input type="button" value="Book List" 
onclick="window.location.href='listbooks';  return false;" /><br>
<!-- <a href="login">Logout</a> -->
</body>
</html>