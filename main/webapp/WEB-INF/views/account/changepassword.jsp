<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<title>Change password</title>
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

<link rel="stylesheet" href="/client/css/CHANGE-PASSWORD.css">
<link rel="stylesheet" href="/client/css/nicepage.css">
<script class="u-script" type="text/javascript"
	src="/client/js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="/client/js/nicepage.js" defer=""></script>
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



	<section
		class="u-align-center u-clearfix u-image u-shading u-section-1" src=""
		data-image-width="512" data-image-height="512" id="sec-df70"
		style="background-image: url('/client/img/backroundsuper73.jpg');">
		<div class="u-align-left u-clearfix u-sheet u-sheet-1">
			<div
				class="u-container-style u-expanded-width-xs u-group u-palette-1-base u-group-1">
				<div
					class="u-container-layout u-valign-middle-xs u-container-layout-1">
					<h1 class="u-align-center u-text u-text-1">CHANE PASSWORD</h1>
					<div
						class="u-align-left u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-form u-form-1">
						<form action="/account/change" method="POST" class=""
							style="padding: 10px" source="custom" name="form">
							<div class="u-form-group u-form-name u-form-group-1">
								<label for="name-5a14" class="u-form-control-hidden u-label"
									wfd-invisible="true">User id</label> <input type="text"
									placeholder="Enter your Name" id="name-5a14" name="name"
									value="${userid}" readonly="true"
									class="u-border-2 u-border-grey-75 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-radius-26 u-white"
									required="" autofocus="autofocus">
							</div>
							<br>
							<div class="u-form-group u-form-group-2">
								<label for="email-5a14" class="u-form-control-hidden u-label"
									wfd-invisible="true">Password</label> <input type="password"
									placeholder="Enter your Password" id="email-5a14"
									name="password"
									class="u-border-2 u-border-grey-75 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-radius-26 u-white"
									required="required">
							</div>
							<br>
							<div class="u-form-group u-form-group-3">
								<label for="text-9def" class="u-form-control-hidden u-label"></label>
								<input type="password" placeholder="Enter your new Password"
									id="text-9def" name="password1"
									class="u-border-2 u-border-grey-75 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-radius-26 u-white">
							</div>
							<br>
							<div class="u-form-group u-form-group-4">
								<label for="text-b2b5" class="u-form-control-hidden u-label"></label>
								<input type="password" placeholder="Confirm new Password"
									id="text-b2b5" name="password2"
									class="u-border-2 u-border-grey-75 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-radius-26 u-white">
							</div>
							<br>
							<div class="u-form-agree u-form-group u-form-group-5">
								<input type="checkbox" id="agree-3520" name="agree"
									class="u-agree-checkbox" required=""> <label
									for="agree-3520" class="u-label">I Agree change my
									password</label>
							</div>
							<br>
							<div
								class="u-align-center u-form-group u-form-submit u-form-group-6">
								<a href=""
									class="u-active-white u-border-2 u-border-white u-btn u-btn-submit u-button-style u-hover-white u-none u-text-hover-palette-2-base u-text-palette-2-base u-btn-1">Submit</a>
								<input type="submit" value="submit"
									class="u-form-control-hidden" wfd-invisible="true">
							</div>
							<br>
							<c:if test="${not empty error }">
								<div
									style="width: 450px; height: 50px; background-color: rgb(149, 0, 0); color: white; padding: 10px; text-align: center;">*${error }*</div>
							</c:if>
							<input type="hidden" value="" name="recaptchaResponse"
								wfd-invisible="true">
						</form>
					</div>
				</div>
			</div>
			<div class="u-expanded-width-md u-expanded-width-sm u-list u-list-1">
				<div class="u-repeater u-repeater-1">
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-white u-list-item-1">
						<div
							class="u-container-layout u-similar-container u-container-layout-2">
							<span class="u-icon u-icon-circle u-text-palette-1-base u-icon-1"><svg
									class="u-svg-link" preserveAspectRatio="xMidYMin slice"
									viewBox="0 0 52 52" style="">
									<use xmlns:xlink="http://www.w3.org/1999/xlink"
										xlink:href="#svg-077e"></use></svg>
								<svg class="u-svg-content" viewBox="0 0 52 52" x="0px" y="0px"
									id="svg-077e" style="enable-background: new 0 0 52 52;">
									<path style="fill:currentColor;"
										d="M38.853,5.324L38.853,5.324c-7.098-7.098-18.607-7.098-25.706,0h0
	C6.751,11.72,6.031,23.763,11.459,31L26,52l14.541-21C45.969,23.763,45.249,11.72,38.853,5.324z M26.177,24c-3.314,0-6-2.686-6-6
	s2.686-6,6-6s6,2.686,6,6S29.491,24,26.177,24z"></path></svg></span>
							<h5 class="u-text u-text-2">our main office</h5>
							<p class="u-text u-text-3">
								92/1A KHP2A, Đông Hưng Thuận, Quận 12<br>Hồ Chí Minh
							</p>
						</div>
					</div>
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-white u-list-item-2">
						<div
							class="u-container-layout u-similar-container u-container-layout-3">
							<span class="u-icon u-icon-circle u-icon-2"><svg
									class="u-svg-link" preserveAspectRatio="xMidYMin slice"
									viewBox="0 0 513.64 513.64" style="">
									<use xmlns:xlink="http://www.w3.org/1999/xlink"
										xlink:href="#svg-9786"></use></svg>
								<svg class="u-svg-content" viewBox="0 0 513.64 513.64" x="0px"
									y="0px" id="svg-9786"
									style="enable-background: new 0 0 513.64 513.64;">
									<g>
									<g>
									<path
										d="M499.66,376.96l-71.68-71.68c-25.6-25.6-69.12-15.359-79.36,17.92c-7.68,23.041-33.28,35.841-56.32,30.72    c-51.2-12.8-120.32-79.36-133.12-133.12c-7.68-23.041,7.68-48.641,30.72-56.32c33.28-10.24,43.52-53.76,17.92-79.36l-71.68-71.68    c-20.48-17.92-51.2-17.92-69.12,0l-48.64,48.64c-48.64,51.2,5.12,186.88,125.44,307.2c120.32,120.32,256,176.641,307.2,125.44    l48.64-48.64C517.581,425.6,517.581,394.88,499.66,376.96z"></path>
</g>
</g></svg></span>
							<h5 class="u-text u-text-4">phone number</h5>
							<p class="u-text u-text-5">
								0962463995&nbsp;<br>Mr. Phuc
							</p>
						</div>
					</div>
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-white u-list-item-3">
						<div
							class="u-container-layout u-similar-container u-container-layout-4">
							<span class="u-icon u-icon-circle u-icon-3"><svg
									class="u-svg-link" preserveAspectRatio="xMidYMin slice"
									viewBox="0 0 512 512" style="">
									<use xmlns:xlink="http://www.w3.org/1999/xlink"
										xlink:href="#svg-d01e"></use></svg>
								<svg class="u-svg-content" viewBox="0 0 512 512" id="svg-d01e">
									<path
										d="m201 12.714v184.286h267v-184.286c0-7.022-5.692-12.714-12.714-12.714h-241.572c-7.022 0-12.714 5.692-12.714 12.714zm63.89 33.131h70.271c8.284 0 15 6.716 15 15s-6.716 15-15 15h-70.271c-8.284 0-15-6.716-15-15s6.715-15 15-15zm0 75.142h139.22c8.284 0 15 6.716 15 15s-6.716 15-15 15h-139.22c-8.284 0-15-6.716-15-15s6.715-15 15-15z"></path>
									<path
										d="m472 227h-275c-22.091 0-40 17.909-40 40v205c0 22.091 17.909 40 40 40h275c22.091 0 40-17.909 40-40v-205c0-22.091-17.909-40-40-40zm-207.5 217.5h-20c-8.284 0-15-6.716-15-15s6.716-15 15-15h20c8.284 0 15 6.716 15 15s-6.716 15-15 15zm0-60h-20c-8.284 0-15-6.716-15-15s6.716-15 15-15h20c8.284 0 15 6.716 15 15s-6.716 15-15 15zm0-60h-20c-8.284 0-15-6.716-15-15s6.716-15 15-15h20c8.284 0 15 6.716 15 15s-6.716 15-15 15zm80 120h-20c-8.284 0-15-6.716-15-15s6.716-15 15-15h20c8.284 0 15 6.716 15 15s-6.716 15-15 15zm0-60h-20c-8.284 0-15-6.716-15-15s6.716-15 15-15h20c8.284 0 15 6.716 15 15s-6.716 15-15 15zm0-60h-20c-8.284 0-15-6.716-15-15s6.716-15 15-15h20c8.284 0 15 6.716 15 15s-6.716 15-15 15zm80 120h-20c-8.284 0-15-6.716-15-15s6.716-15 15-15h20c8.284 0 15 6.716 15 15s-6.716 15-15 15zm0-60h-20c-8.284 0-15-6.716-15-15s6.716-15 15-15h20c8.284 0 15 6.716 15 15s-6.716 15-15 15zm0-60h-20c-8.284 0-15-6.716-15-15s6.716-15 15-15h20c8.284 0 15 6.716 15 15s-6.716 15-15 15z"></path>
									<path
										d="m87 227h-47c-22.091 0-40 17.909-40 40v205c0 22.091 17.909 40 40 40h47c22.091 0 40-17.909 40-40v-205c0-22.091-17.909-40-40-40z"></path></svg></span>
							<h5 class="u-text u-text-6">Fax</h5>
							<p class="u-text u-text-7">1-234-567-8900</p>
						</div>
					</div>
					<div
						class="u-align-center u-container-style u-list-item u-repeater-item u-white u-list-item-4">
						<div
							class="u-container-layout u-similar-container u-container-layout-5">
							<span class="u-icon u-icon-circle u-icon-4"><svg
									class="u-svg-link" preserveAspectRatio="xMidYMin slice"
									viewBox="0 0 512 512" style="">
									<use xmlns:xlink="http://www.w3.org/1999/xlink"
										xlink:href="#svg-9f82"></use></svg>
								<svg class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px"
									id="svg-9f82" style="enable-background: new 0 0 512 512;">
									<g>
									<g>
									<path
										d="M507.49,101.721L352.211,256L507.49,410.279c2.807-5.867,4.51-12.353,4.51-19.279V121    C512,114.073,510.297,107.588,507.49,101.721z"></path>
</g>
</g>
									<g>
									<g>
									<path
										d="M467,76H45c-6.927,0-13.412,1.703-19.279,4.51l198.463,197.463c17.548,17.548,46.084,17.548,63.632,0L486.279,80.51    C480.412,77.703,473.927,76,467,76z"></path>
</g>
</g>
									<g>
									<g>
									<path
										d="M4.51,101.721C1.703,107.588,0,114.073,0,121v270c0,6.927,1.703,13.413,4.51,19.279L159.789,256L4.51,101.721z"></path>
</g>
</g>
									<g>
									<g>
									<path
										d="M331,277.211l-21.973,21.973c-29.239,29.239-76.816,29.239-106.055,0L181,277.211L25.721,431.49    C31.588,434.297,38.073,436,45,436h422c6.927,0,13.412-1.703,19.279-4.51L331,277.211z"></path>
</g>
</g></svg></span>
							<h5 class="u-text u-text-8">Email</h5>
							<p class="u-text u-text-9">
								<a href="mailto:hello@theme.com"
									class="u-active-none u-border-1 u-border-palette-2-base u-btn u-button-link u-button-style u-hover-none u-none u-text-palette-2-base u-btn-2">tranlehongphuc2001@gmail.com<br>
								</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


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