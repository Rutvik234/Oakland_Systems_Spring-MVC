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

<title>Login Page!</title>
</head>
<body>

	<section>

		<div class="container mt-5 pt-5">
			<div class="row">
				<div class="col-12 col-sm-8 col-md-4 m-auto">
					<div class="card">
						<div class="card-body">
							<h1 align="center" class="fst-normal">Login Page</h1>
							<hr>
							<form:form action="login" method="post"
								modelAttribute="employeeInfo">
								<div align="center" class="fst-normal" style="color: red;">${error}</div>

								<div align="center">
									<p>
										<form:input id="id" path="email"
											class="form-control my-3 py-1" placeholder="Username"
											required="required" />
									</p>

									<p>
										<form:input id="ps" path="password" type="password"
											class="form-control my-3 py-1" placeholder="Password"
											required="required" />
									</p>

									<input type="submit" class="btn btn-primary" value="Login">

									<p>
										<a href="register" class="nav-link">Click for Register
											Your Account</a>
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
