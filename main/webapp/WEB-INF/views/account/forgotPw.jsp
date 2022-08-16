<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">
<head>
<title>Title</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="/SideNavigationBar.css">
<link rel="stylesheet" href="/client/css/LOGIN.css">
<link rel="stylesheet" href="/client/css/nicepage.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<!-- Css Styles -->
<link rel="stylesheet" href="/client/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="/client/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="/client/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="/client/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet" href="/client/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="/client/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="/client/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="/client/css/style.css" type="text/css">
</head>
<body>
	<div>
		<jsp:include page="/WEB-INF/views/header.jsp" />
	</div>
	<div class="page-wrap d-flex flex-row align-items-center"
		style="height: 700px">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<img src="/client/img/logo.jpg"
						class="img-fluid rounded-circle shadow-sm" alt="" />
				</div>
				<div class="col-md-9">
					<h2 class="font-weight-light">Forgot your password?</h2>
					Not to worry. Just enter your email address below and we'll send
					you an instruction email for recovery.
					<form action="/account/forgot" class="mt-3">
						<input class="form-control form-control-lg" type="email"
							name="email" value="${email}" placeholder="Your email address"
							required="required" />

						<div class="text-right my-3">
							<button class="btn btn-lg btn-success">Send Email</button>
						</div>


						<c:if test="${not empty checkcode }">
							<h2 class="font-weight-light">Reset your password?</h2>
							<input class="form-control form-control-lg" type="text"
								name="code" placeholder="Check Code" required="required" />
							<br>
							<input class="form-control form-control-lg" type="password"
								name="password" placeholder="Your new Password"
								required="required" />
							<br>
							<input class="form-control form-control-lg" type="password"
								name="password1" placeholder="Confirm password"
								required="required" />
							<br>
							<button class="btn btn-lg btn-success"
								formaction="/account/forgot/reset">Reset your password</button>
							<br>
						</c:if>
						<c:if test="${not empty error }">
							<br>
							<div
								style="width: 450px; height: 80px; background-color: rgb(149, 0, 0); color: white; padding: 10px; text-align: center;">*${error }*</div>
						</c:if>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div>
		<jsp:include page="/WEB-INF/views/footer.jsp" />
	</div>

	

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
<!-- Search End -->

<!-- Js Plugins -->
<script src="/client/js/jquery-3.3.1.min.js"></script>
<script src="/client/js/bootstrap.min.js"></script>
<script src="/client/js/jquery.nice-select.min.js"></script>
<script src="/client/js/jquery.nicescroll.min.js"></script>
<script src="/client/js/jquery.magnific-popup.min.js"></script>
<script src="/client/js/jquery.countdown.min.js"></script>
<script src="/client/js/jquery.slicknav.js"></script>
<script src="/client/js/mixitup.min.js"></script>
<script src="/client/js/owl.carousel.min.js"></script>
<script src="/client/js/main.js"></script>


</html>