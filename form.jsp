<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
<style>
body
{
background-image:url("https://www.mwcbarcelona.com/wp-content/uploads/2019/09/conference-programmes-featured-wide-2x.jpg");
background-size: cover;
}
</style>
<script type="text/javascript">
function validation()
{
	if(document.contact_form.username.value=="")
		{
			alert("Please enter your username");
			return false;
		}
	if(document.contact_form.password.value=="")
	{
		alert("Please enter your password");
		return false;
	}
	if((document.contact_form.gender[0].checked==false)&&(document.contact_form.gender[1].checked==false))
		{
			alert("Please select your gender");
			return false;
		}
	if(document.contact_form.country.selectedIndex==0)
		{
			alert("Please select your country");
			return false;
		}
	if(document.contact_form.terms.checked == false)
		{
			alert("Please agree the terms");
			return false;
		}
}


function Password()
{
   
if ( /^[A-Za-z0-9]{5,9}/.test(document.getElementById("password").value))
   {
           document.getElementById("msg5").innerHTML=' ';
document.getElementById("msg1").style.backgroundColor='#e3e3e3';

}
else
{
alert("Invalid password!--should contain characters of length 5-9");

}}


</script>



</head>
<body>
<br>
<h1>Sign Up</h1><hr><hr><br>
<form:form action="saveUser" onsubmit="return validation()" name="contact_form" method="POST" modelAttribute="users">
 <form:hidden path="id"/> 
 
<table>
<tbody>
<tr>
<td><label>Username </label></td>
<td><form:input path="username"/></td>
</tr>

<tr>
<td><label>Password</label></td>
<td><form:input type = "password" path="password" onchange="Password()"/></td>
<span id="msg1"></span>
</tr>

<tr>
<td><label>Gender: </label></td>
<td>  
Male    <form:radiobutton path="gender" value="Male"/>  
Female   <form:radiobutton path="gender" value="Female"/></td>
</tr>

<tr>
<td><label>Country </label></td>
<td><form:select path="country">
		<form:option value="select" label="select"/>   
        <form:option value="IN" label="IN"/>  
        <form:option value="US" label="US"/>  
        <form:option value="UK" label="UK"/>  
        <form:option value="AUS" label="AUS"/>  
        </form:select>  </td>
</tr>

<tr>
<td><label>Terms and Conditions </label></td>
<td><form:checkbox path="terms" value="yes"/></td>
</tr>

<%-- <tr>
<td><label>Confirm Password </label></td>
<td><form:input path="confirmPassword"  showPassword="true"/></td>
</tr>
 --%>
<tr>
<td><label></label></td>
<td><input type="submit" value="Save"></td>
</tr>

</tbody>

</table>
</form:form>
<br>

</body >
</html>