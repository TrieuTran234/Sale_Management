<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<title>Login Form</title>
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
	<div class="u-align-left u-clearfix u-section-1" id="carousel_1007">
		<div
			class="u-expanded-height-lg u-expanded-height-md u-expanded-height-xl u-expanded-width-sm u-expanded-width-xs u-palette-3-base u-shape u-shape-rectangle u-shape-1"
			style="background-color: rgb(234, 242, 215); margin-top: 200px"></div>
		<h2 class="u-text u-text-1" style="color: red;">
			&nbsp;&nbsp;&nbsp;Sign in to use <b style="color: black;">the
				latest gadgets</b>

		</h2>
		<div class="u-clearfix u-gutter-0 u-layout-wrap u-layout-wrap-1">
			<div class="u-layout">
				<div class="u-layout-row">
					<div
						class="u-align-left u-container-style u-layout-cell u-left-cell u-size-33 u-white u-layout-cell-1">
						<div class="u-container-layout u-valign-top u-container-layout-1">
							<h3 class="u-text u-text-2">
								Opening <b>Hours</b>
							</h3>
							<p class="u-text u-text-3">SHOWROOM LOCATION: 92/1A Nguyen
								Van Qua,D12. Ho Chi Minh City, VietNam 92606</p>
								<hr>
							<div class="u-expanded-width u-form u-form-1">
								<form action="/account/login" method="post" class="form-login"
									source="custom">
									<div class="u-form-group u-form-name">
										<label for="name-10f5"
											class="u-form-control-hidden u-label u-label-1">Name</label>
										<input type="text" ng-model="u" placeholder="Name"
											id="name-10f5" value="${user1}" name="username" 
											class="u-border-2 u-border-grey-75 u-border-no-left u-border-no-right u-border-no-top u-input"
											required="required" autofocus="autofocus">
									</div>
									<br>
									<div class="u-form-group">
										<label for="email-10f5"
											class="u-form-control-hidden u-label u-label-2">Password</label>
										<input type="password" ng-model="p" placeholder="password"
											id="email-10f5" name="password"
											class="u-border-2 u-border-grey-75 u-border-no-left u-border-no-right u-border-no-top u-input"
											required="required">
									</div>
									<br>
									<div class="u-form-agree u-form-group u-form-group-3">
										<input type="checkbox" id="agree-d6f8" name="remember"
											class="u-agree-checkbox" value="true"> <label
											for="agree-d6f8" class="u-label u-label-3">Remember
											me</label>
									</div>
									<div class="u-form-send-message u-form-send-success">Thank
										you! Your message has been sent.</div>


									<div class="u-form-group u-form-submit">
										<button
											class="u-border-2 u-border-black u-btn u-btn-rectangle u-btn-submit u-button-style u-none u-text-body-color u-btn-2">
											SIGN IN<br>
										</button>
										<input type="submit" value="submit"
											class="u-form-control-hidden">
									</div>
									<div style="color: red; font-size: 30px;">${message }${param.error}</div>


								</form>
							</div>
							<p class="u-text u-text-5">Welcome to My website</p>
						</div>
					</div>
					<div
						class="u-container-style u-image u-layout-cell u-size-27 u-image-1">

						<div class="u-container-layout u-container-layout-2"></div>

					</div>
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