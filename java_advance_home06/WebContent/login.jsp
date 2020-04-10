<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<style type="text/css">
form {
	width: 250px;
	margin: 50px;
}

label {
	display: flex;
	justify-content: space-between;
	margin-bottom: 5px;
}
</style>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<form action="login" method="post">

		<label class="labels" for="email"> Login your Email </label><input name="login">
	   
	    <br>
	    
	    <label class="labels" for="password"> Password </label><input namme="password"> 
	    
	    <br> 
	    
	    <input type="submit" name="Login" value="Sing in">

	</form>
	
	<h3><a href="index.jsp"> Registration </a></h3>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>