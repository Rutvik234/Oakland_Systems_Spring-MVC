<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<title>Hello, world!</title>
</head>
<body>
	<section>

		<div class="container mt-2 pt-5">
			<div class="row">
				<div class="col-12 col-sm-8 col-md-4 m-auto">
					<div class="card">
						<div class="card-body">
							<h1 align="center">Register Page</h1>
							<hr>
							<form:form action="registerSuccess" modelAttribute="registerDTO"
								method="post">
								<div align="left">
									<p>
										<form:input id="n" path="name" class="form-control my-3 py-1"
											placeholder="Enter name" required="required" />
									</p>
									<p>
										<form:input id="d" path="dob" class="form-control my-3 py-1"
											placeholder="dd-mm-yyyy" required="required" />
									</p>
									<p align="left">
										<label>Gender :</label>
										<form:radiobutton path="gender" value="male"
											required="required" />
										Male
										<form:radiobutton path="gender" value="female"
											required="required" />
										Female
									</p>
									<p>
										<form:input id="a" path="address"
											class="form-control my-3 py-1" placeholder="enter address"
											required="required" />
									</p>
									<p>
										<form:select path="city" class="form-control my-3 py-1"
											required="required">
											<form:option value="" label="Select City" />
											<form:option value="nagpur" label="Nagpur" />
											<form:option value="amravati" label="Amravati" />
											<form:option value="pune" label="Pune" />
											<form:option value="mumbai" label="Mumbai" />
											<form:option value="achalpur" label="Achalpur" />

										</form:select>
									</p>
									<p>
										<form:select path="state" class="form-control my-3 py-1"
											required="required">
											<form:option value="" label="Select State" />
											<form:option value="maharashtra" label="Maharashtra" />
											<form:option value="gujarat" label="Gujarat" />
											<form:option value="punjab" label="Punjab" />
											<form:option value="rajasthan" label="Rajasthan" />
											<form:option value="andhra Pradesh" label="Andhra Pradesh" />

										</form:select>
									</p>
									<p>
										<form:input id="e" path="email" class="form-control my-3 py-1"
											placeholder="Email" required="required" />
									</p>
									<p>
										<form:password id="p" path="password"
											class="form-control my-3 py-1" placeholder="Password"
											required="required" />
									</p>
									<p align="center">
										<input type="submit" class="btn btn-primary" value="Register">
									</p>
								</div>
							</form:form>

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
