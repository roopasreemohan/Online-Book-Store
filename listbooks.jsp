<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Books</title>
</head>
<body>
<br><br><h2>Available Books</h2>
<table border="1" width="80%">
<tr>
<th>Book Name</th>
<th>Author</th>
<th>Price</th>

</tr>
<c:forEach var="tempBook" items="${book}">
<c:url var="bookLink" value="/users/buy">
<c:param name="bookID" value="${tempBook.bookid}"></c:param>
</c:url>
<tr>
<td><a href="${bookLink}">${tempBook.bookname}</td>
<td>${tempBook.author}</td>
<td>${tempBook.price}</td>
</tr>
</c:forEach>
</table>
</body>
</html>