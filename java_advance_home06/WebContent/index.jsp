<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Servlets - java_advance_home04</title>

<style type="text/css">
	
	form{	
		width: 250px;
		margin: 50px;
	}
	
	label{
		display: flex;
		justify-content: space-between;	
		margin-bottom: 5px;
	}

</style>

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	
	<form action="registration" method="post">
		
		<label class="labeles" for="firstName"> First name : </label><input name="firstName">
		
		<br>
		
		<label class="labeles" for="lastName"> Last name : </label><input name="lastName">
		
		<br>
		
		<label class="labeles" for="email"> Email : </label><input name="email">
		
		<br>
		
		<label class="labeles" for="password"> Password : </label><input name="password">
		
		<br>
		
		<input class="labeles" type="submit" value="Sing in" >	
	
	</form>
	 <h3><a href="login.jsp"> Log in </a></h3> 
	
	
	<jsp:include page="footer.jsp"></jsp:include>
	

</body>
</html>