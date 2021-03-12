<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quantity</title>
<style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.button1 {
background-color: #f44336;
border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
</head>
<body>
<h2>Quantity of Book</h2>
<c:url var="buy" value="/users/userdetails">
<c:param name="bookID" value="${book.bookid}"></c:param>
</c:url>
<form:form action="${buy}" method="POST" modelAttribute="order" onsubmit="return validation()" name="contact_form">
<form:hidden path="orderId"/>


<table border="1" width="80%">	
<tbody>

<tr><td>Book Name</td><td>${book.bookname}</td></tr>
<tr><td>Author</td><td>${book.author}</td></tr>
<tr><td>Price</td><td>${book.price}</td></tr>

<tr><td><label>Quantity:</label></td>
<td><form:input type="number" path="quantity"/></td>


</tbody>
</table>
</tr>
<br><br>
<button class="button" input type="submit" value="Confirm">Check Out</button> &nbsp;&nbsp;&nbsp;
<button class="button1" input type="reset" value="Cancel">Drop</button>
</form:form>

</body>
</html>