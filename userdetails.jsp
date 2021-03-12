<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order</title>
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
<script type="text/javascript">
function validation()
{
	if(document.contact_form.cust_name.value=="")
		{
			alert("Please enter your name");
			return false;
		}
	if(document.contact_form.address.value=="")
	{
		alert("Please enter your Address");
		return false;
	}
	if(document.contact_form.phone_no.value=="")
	{
		alert("Please enter your Phone number");
		return false;
	}
	
}
</script>
</head>
<body><h2>Order Confirmation</h2>
<br>
<c:url var="customer" value="/users/confirm">
<c:param name="bookID" value="${book.bookid}"></c:param>
</c:url>
<form:form action="${customer}" method="POST" modelAttribute="order" onsubmit="return validation()" name="contact_form">
<form:hidden path="quantity" value="${order.quantity}"/>
<table border="1" width="80%">
<tbody>
<section>
 Customer Name : <input type ="text" name= "customername" ><br><br>
Address : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<input type="text"  name= "address" > <br><br>
Phone Number : &nbsp;&nbsp;<input type="tel"  name= "phonenumber" pattern="^\d{10}$" required > 
</section>
<tr><td>Book Name</td><td>${book.bookname}</td></tr>
<tr><td>Author</td><td>${book.author}</td></tr>
<tr><td>Price</td><td>Rs.${book.price}</td></tr>
<tr><td>Quantity</td><td>${order.quantity}</td></tr>
<c:set var="value" scope="session" value="${book.price*order.quantity}"/>
<tr><td>Price for ${order.quantity} books</td>
<td>Rs.${value}</td></tr>

</tbody>

</table>
<br><br>
<button class="button" input type="submit" value="Confirm">Confirm</button> &nbsp;&nbsp;&nbsp;
<button class="button1" input type="reset" value="Cancel">Cancel</button>
</form:form>

</body>
</html>