<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">Login Page</h1>
	<hr>
	<form:form action="login" method="GET" modelAttribute="employeeInfo">
		<div align="center">
			<p>
				<label for="id">Enter Login ID :</label> 
				<form:input id="id" path="email" placeholder="@gmail.com"/>
			</p>

			<p>
				<label for="ps">Enter Password :</label> 
				<form:input id="ps" path="password" placeholder="*****"/>
			</p>

			<input type="submit" value="Login" >
			
			<p>
			<a href="register">Register</a>
			</p>
		</div>
	</form:form>
</body>
</html>