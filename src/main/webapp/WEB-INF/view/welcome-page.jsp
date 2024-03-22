<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.rutvik.os.rowmapper.EmployeeRowMapper"%>
<%@page import="com.rutvik.os.entity.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Welcome Page</title>
</head>
<body>

	<section>
		<div class="container mt-2 pt-5">
			<div class="row">
				<div class="col-12 col-sm-8 col-md-8 m-auto">
					<div class="card">
						<div class="card-body">
							<h1 align="center">Welcome Page</h1>
							<hr>
							
								<div class="fst-normal">
								Hello,<h3 style="color: blue;"> ${name}</h3>
								</div>
							
							<hr>
							<p>
							<table class="table table-striped" border="1%">
								<thead>
									<tr>
										<th scope="col">ID</th>
										<th scope="col">Name</th>
										<th scope="col">Date Of Birth</th>
										<th scope="col">Gender</th>
										<th scope="col">Address</th>
										<th scope="col">City</th>
										<th scope="col">State</th>
										<th scope="col">Email</th>
									</tr>
								</thead>

								<c:forEach var="employee" items="${listOfEmployee}">
									<tr>
										<td>${employee.id}</td>
										<td>${employee.name}</td>
										<td>${employee.dob}</td>
										<td>${employee.gender}</td>
										<td>${employee.address}</td>
										<td>${employee.city}</td>
										<td>${employee.state}</td>
										<td>${employee.email}</td>
									</tr>
								</c:forEach>
							</table>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->

</body>
</html>
