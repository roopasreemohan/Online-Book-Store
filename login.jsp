<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignIn</title>

<!--Bootsrap 4 CDN-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
   
    <!--Fontawesome CDN-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<!--Custom styles-->
<link rel="stylesheet" type="text/css" href="styles.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
@import url('https://fonts.googleapis.com/css?family=Numans');

html,body{
background-image: url('data:image/jpeg;base64,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');
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
}

.container{
height: 100%;
align-content: center;
}

.card{
padding-top:5%;
height: 370px;
margin-top: auto;
margin-bottom: auto;
width: 400px;
background-color: rgba(0,0,0,0.5) !important;
}

.social_icon span{
font-size: 60px;
margin-left: 10px;
color: #FFC312;
}

.social_icon span:hover{
color: white;
cursor: pointer;
}

.card-header h3{
color: white;
}

.social_icon{
position: absolute;
right: 20px;
top: -45px;
}

.input-group-prepend span{
width: 50px;
background-color: #FFC312;
color: black;
border:0 !important;
}

input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;

}

.remember{
color: white;
}

.remember input
{
width: 20px;
height: 20px;
margin-left: 15px;
margin-right: 5px;
}

.login_btn{
color: black;
background-color: #FFC312;
width: 100px;
}

.login_btn:hover{
color: black;
background-color: white;
}

.links{
color: white;
}

.links a{
margin-left: 4px;
}


.mob-ul {
    list-style-type: none;
    padding-left: 0;
}




</style>

<script>
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
	}
</script>

</head>
<body>
<br>
<form:form action="signIn" onsubmit="return validation()" name="contact_form" method="POST"  modelAttribute="users">
<%--  <form:hidden path="id"/>  --%>
<div class="login-box">

<%-- <table>
<tbody>
<tr>
<td><label>Username </label></td>
<td><form:input path="username"/></td>
</tr>

<tr>
<td><label>Password</label></td>
<td><form:input type="password" path="password"/></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Sign In" /></td>
</tr>

</tbody></table> --%>

<!--Nav Bar -->
<!-- <nav class="navbar navbar-expand-md navbar-dark bg-dark sticky top" style="background-color: black;">
<nav class="navbar navbar-dark" style="background-color: black;">
  <img style="max-height: 5em;" class="navbar-brand" src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS4wIwz--FHPm766NwJc_BqsrAjrf7jb1FBSXMr7Ef7FehPR-LZ&usqp=CAU">
 
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
     
     
    </ul>  
  </div>
</nav> -->
<br><br>
<div class="container">

 
   
<div class="d-flex justify-content-center h-100">
<div class="card">
<div class="card-header">
<h3>Sign In</h3>

</div>
<div class="card-body">
<form>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-user"></i></span>
</div>
<input type="text" class="form-control" placeholder="username" name = "username">

</div>
<div class="input-group form-group">
<div class="input-group-prepend">
<span class="input-group-text"><i class="fas fa-key"></i></span>
</div>
<input type="password" class="form-control" placeholder="password" name = "password">
</div>

<div class="form-group">
<input type="submit" value="Sign In" class="btn float-right login_btn">
</div>
</form>
</div>
<div class="card-footer">
<div class="d-flex justify-content-center links">
Don't have an account?<a href="form">Sign Up</a>
</div>

</div>
</div>
</div>
</div>





<!-- <div class="user-box">
      <input type="text" name="username" required="">
      <label>Username</label>
    </div>
    <div class="user-box">
      <input type="password" name="password" required="">
      <label>Password</label>
    </div>
  
<input type="submit" value="Sign In" />
</div> -->

</form:form>
</body>
</html>











