<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">
<head>
<title>REGISTRATION</title>
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

<link rel="stylesheet" href="/client/css/nicepage.css" media="screen">
<link rel="stylesheet" href="/client/css/EDIT-PROFILE.css"
	media="screen">
<script class="u-script" type="text/javascript"
	src="/client/js/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript"
	src="/client/js/nicepage.js" defer=""></script>
</head>
<body>

	<div>
		<jsp:include page="/WEB-INF/views/header.jsp" />
	</div>
	<section class="u-clearfix u-palette-6-light-1 u-section-1"
		id="carousel_1dbd"
		style="background-color: #000000; background-image: linear-gradient(355deg, #000000 20%, #ffffff 74%);">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h1 class="u-text u-text-default u-text-1">REGISTRATION</h1>

			<div
				class="u-align-left u-container-style u-expanded-width-xs u-group u-white u-group-1">
				<div
					class="u-container-layout u-valign-top-md u-valign-top-sm u-valign-top-xs u-container-layout-1">
					<div class="u-align-left u-form u-form-1">

						<form:form action="/account/register" modelAttribute="item"
							method="POST" class="" enctype="multipart/form-data"
							style="padding: 10p;" source="custom" name="form">

							<div class="u-form-group u-form-name">
								<label for="name-3b9a" class=" u-label" wfd-invisible="true">User
									ID </label> <label for="name-3b9a"
									class="u-form-control-hidden u-label" wfd-invisible="true">USER
									ID</label>
								<form:input type="text" path="id" placeholder="User Id"
									name="id"
									class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" />
							</div>
							<br>
							<div class="u-form-group u-form-name">
								<label for="name-3b9a" class=" u-label" wfd-invisible="true">Full
									Name </label>
								<form:input type="text" path="fullname" placeholder="Full Name"
									id="name-3b9a" name="fullname"
									class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" />
							</div>
							<br>
							<div class="u-form-group u-form-group-3">
								<label for="text-a33d" class="u-label">Password </label> <label
									for="text-160a" class="u-form-control-hidden u-label"></label>
								<input type="password" id="text-160a" placeholder="Password"
									name="password"
									class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" />
							</div>
							<br>
							<div class="u-form-group">
								<label for="text-a33d" class="u-label">Confirm password</label>
								<label for="message-3b9a" class="u-form-control-hidden u-label"
									wfd-invisible="true"></label><input type="password"
									placeholder="Confirm password" id="message-3b9a"
									name="password1"
									class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" />
							</div>
							<br>

							<div class="u-form-group u-form-group-1 u-form-control-hidden">
								<label for="text-160a" class=" u-label">Full Name</label>

								<form:input type="text" path="fullname" placeholder="Full Name"
									id="name-3b9a" name="fullname"
									class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" />
							</div>
							<br>

							<div class="u-form-group u-form-name u-form-group-1">
								<label for="name-5a14" class="u-label" wfd-invisible="true">Email</label>
								<form:input type="email" path="email" placeholder="Email"
									id="email-3b9a" name="email"
									class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" />
							</div>
							<br>

							<div class="u-form-group u-form-group-2">
								<label for="email-5a14" class="u-label" wfd-invisible="true">Phone</label>
								<form:input type="number" path="phone" placeholder="Phone"
									id="name-3b9a" name="phone"
									class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" />
							</div>

							<br>
							<div class="u-form-email u-form-group u-form-group-4">
								<label for="text-a33d" class="u-label">DATE OF BIRTH</label>

								<form:input path="dateofBirth" type="date"
									placeholder="Date Of Birth" id="name-3b9a" name="dateofbirth"
									class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" />
							</div>
							<br>
							<div class="u-form-email u-form-group u-form-group-4">

								<input type="text" name="image1" value="${item.image}"
									readonly="true" style="border: none;"
									class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-white u-input u-input-rectangle u-text-black u-input-1">
								<input type="file" placeholder="Image" id="name-3b9a"
									name="photo"
									class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" />
							</div>
							<br>
							<div class="u-form-email u-form-group u-form-group-4">
								<label for="text-014f" class="u-label">ADDRESS</label>
								<form:textarea path="address" type="" id="text-014f"
									name="address"
									class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" />
							</div>
							<br>
							<div
								class="u-align-left u-form-group u-form-submit u-form-group-5">
								<a href="/account/register"
									class="u-border-2 u-border-black u-btn u-btn-submit u-button-style u-hover-black u-none u-text-black u-text-hover-white u-btn-1"
									style="width: 100px">submit<br>
								</a> <input type="submit" value="submit"
									class="u-form-control-hidden" wfd-invisible="true">
							</div>
							<br>
							<c:if test="${not empty error }">
								<div
									style="width: 450px; height: 50px; background-color: rgb(13, 180, 185); color: white; padding: 10px; text-align: center;">${error }</div>
							</c:if>
							<input type="hidden" value="" name="recaptchaResponse"
								wfd-invisible="true">
						</form:form>
					</div>
				</div>
			</div>

			<div class="u-expanded-width-xs u-list u-list-1">
				<div class="u-repeater u-repeater-1">
					<div
						class="u-container-style u-list-item u-palette-5-dark-3 u-repeater-item u-list-item-1">
						<div
							class="u-container-layout u-similar-container u-container-layout-2">
							<h5 class="u-text u-text-2">số điện thoại</h5>
							<span class="u-icon u-icon-circle u-text-palette-1-base u-icon-1"><svg
									class="u-svg-link" preserveAspectRatio="xMidYMin slice"
									viewBox="0 0 405.333 405.333" style="">
									<use xmlns:xlink="http://www.w3.org/1999/xlink"
										xlink:href="#svg-3427"></use></svg> <svg
									xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
									xml:space="preserve" class="u-svg-content"
									viewBox="0 0 405.333 405.333" x="0px" y="0px" id="svg-3427"
									style="enable-background: new 0 0 405.333 405.333;">
									<g>
									<g>
									<path
										d="M373.333,266.88c-25.003,0-49.493-3.904-72.725-11.584c-11.328-3.904-24.171-0.896-31.637,6.699l-46.016,34.752    c-52.779-28.16-86.571-61.931-114.389-114.368l33.813-44.928c8.512-8.533,11.563-20.971,7.915-32.64    C142.592,81.472,138.667,56.96,138.667,32c0-17.643-14.357-32-32-32H32C14.357,0,0,14.357,0,32    c0,205.845,167.488,373.333,373.333,373.333c17.643,0,32-14.357,32-32V298.88C405.333,281.237,390.976,266.88,373.333,266.88z     M384,373.333c0,5.888-4.8,10.667-10.667,10.667c-194.091,0-352-157.909-352-352c0-5.888,4.8-10.667,10.667-10.667h74.667    c5.867,0,10.667,4.779,10.667,10.667c0,27.243,4.267,53.995,12.629,79.36c1.237,3.989,0.235,8.107-3.669,12.16l-38.827,51.413    c-2.453,3.264-2.837,7.637-0.981,11.264c31.637,62.144,70.059,100.587,132.651,132.651c3.605,1.877,8.021,1.493,11.285-0.981    l52.523-39.808c2.859-2.816,7.061-3.797,10.859-2.539c25.515,8.427,52.267,12.693,79.531,12.693    c5.867,0,10.667,4.779,10.667,10.667V373.333z"></path>
</g>
</g></svg></span>
							<p class="u-text-white u-text-3">0962463995 (Mr Phuc) -
								01674871177 (Mr Tien)</p>
						</div>
					</div>
					<div
						class="u-container-style u-list-item u-palette-5-dark-3 u-repeater-item u-list-item-2">
						<div
							class="u-container-layout u-similar-container u-container-layout-3">
							<h5 class="u-text u-text-4">địa chỉ</h5>
							<span class="u-icon u-icon-circle u-text-palette-1-base u-icon-2"><svg
									class="u-svg-link" preserveAspectRatio="xMidYMin slice"
									viewBox="0 0 512 512" style="">
									<use xmlns:xlink="http://www.w3.org/1999/xlink"
										xlink:href="#svg-ed0b"></use></svg> <svg
									xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
									xml:space="preserve" class="u-svg-content"
									viewBox="0 0 512 512" x="0px" y="0px" id="svg-ed0b"
									style="enable-background: new 0 0 512 512;">
									<g>
									<g>
									<path
										d="M256,0C156.748,0,76,80.748,76,180c0,33.534,9.289,66.26,26.869,94.652l142.885,230.257    c2.737,4.411,7.559,7.091,12.745,7.091c0.04,0,0.079,0,0.119,0c5.231-0.041,10.063-2.804,12.75-7.292L410.611,272.22    C427.221,244.428,436,212.539,436,180C436,80.748,355.252,0,256,0z M384.866,256.818L258.272,468.186l-129.905-209.34    C113.734,235.214,105.8,207.95,105.8,180c0-82.71,67.49-150.2,150.2-150.2S406.1,97.29,406.1,180    C406.1,207.121,398.689,233.688,384.866,256.818z"></path>
</g>
</g>
									<g>
									<g>
									<path
										d="M256,90c-49.626,0-90,40.374-90,90c0,49.309,39.717,90,90,90c50.903,0,90-41.233,90-90C346,130.374,305.626,90,256,90z     M256,240.2c-33.257,0-60.2-27.033-60.2-60.2c0-33.084,27.116-60.2,60.2-60.2s60.1,27.116,60.1,60.2    C316.1,212.683,289.784,240.2,256,240.2z"></path>
</g>
</g></svg></span>
							<p class="u-text-white u-text-5">92/1A Nguyễn Văn Quá , tổ 9,
								khu phố 2A , phường Đông Hưng Thuận, Quận 12, HCM&nbsp;</p>
						</div>
					</div>
					<div
						class="u-container-style u-list-item u-palette-5-dark-3 u-repeater-item u-list-item-3">
						<div
							class="u-container-layout u-similar-container u-container-layout-4">
							<h5 class="u-text u-text-6">GIỜ LÀM VIỆC</h5>
							<span class="u-icon u-icon-circle u-text-palette-1-base u-icon-3"><svg
									class="u-svg-link" preserveAspectRatio="xMidYMin slice"
									viewBox="0 0 512.00042 512" style="">
									<use xmlns:xlink="http://www.w3.org/1999/xlink"
										xlink:href="#svg-f65a"></use></svg> <svg
									xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
									xml:space="preserve" class="u-svg-content"
									viewBox="0 0 512.00042 512" id="svg-f65a">
									<path
										d="m172.578125 310.394531v2.308594h67.191406c6.414063 0 12.054688 7.953125 12.054688 17.183594 0 9.234375-5.640625 17.695312-12.054688 17.695312h-91.300781c-7.183594 0-17.441406-4.871093-17.441406-12.308593v-24.878907c0-40.265625 80.789062-63.347656 80.789062-95.917969 0-8.207031-5.128906-18.210937-19.492187-18.210937-10.257813 0-19.234375 5.128906-19.234375 19.238281 0 7.4375-7.953125 14.617188-21.03125 14.617188-10.257813 0-17.953125-4.617188-17.953125-20.773438 0-31.289062 28.726562-49.242187 57.960937-49.242187 29.753906 0 59.757813 18.722656 59.757813 53.089843 0 55.652344-79.246094 73.863282-79.246094 97.199219zm216.199219-20.773437c0-9.230469-4.101563-18.464844-12.308594-18.464844h-11.027344v-17.953125c0-8.460937-10.003906-12.054687-20.007812-12.054687-10 0-20.003906 3.59375-20.003906 12.054687v17.953125h-22.054688l45.394531-91.046875c.769531-1.792969 1.28125-3.332031 1.28125-4.871094 0-9.234375-13.078125-15.132812-20.003906-15.132812-6.414063 0-12.824219 2.820312-16.671875 10.257812l-59.242188 116.183594c-1.539062 2.820313-2.054687 5.640625-2.054687 7.691406 0 8.976563 5.898437 13.851563 13.335937 13.851563h60.015626v27.183594c0 8.207031 10.003906 12.3125 20.003906 12.3125 10.003906 0 20.007812-4.105469 20.007812-12.3125v-27.183594h11.027344c6.15625 0 12.308594-9.234375 12.308594-18.46875zm-48.105469 167.53125c-17.921875 7.503906-36.804687 12.554687-56.128906 15.003906-10.957031 1.390625-18.710938 11.402344-17.320313 22.359375 1.386719 10.925781 11.367188 18.714844 22.355469 17.324219 22.90625-2.90625 45.292969-8.894532 66.546875-17.792969 10.1875-4.269531 14.988281-15.984375 10.71875-26.171875-4.265625-10.1875-15.980469-14.992188-26.171875-10.722656zm116.710937-72.226563c-8.769531-6.710937-21.324218-5.039062-28.039062 3.730469-11.757812 15.367188-25.519531 29.113281-40.898438 40.855469-8.78125 6.699219-10.464843 19.25-3.765624 28.03125 6.714843 8.792969 19.269531 10.453125 28.035156 3.761719 18.199218-13.894532 34.484375-30.15625 48.398437-48.339844 6.710938-8.773438 5.039063-21.324219-3.730469-28.039063zm37.125-117.773437c-10.949218-1.386719-20.964843 6.371094-22.351562 17.328125-2.445312 19.320312-7.484375 38.199219-14.980469 56.121093-4.261719 10.1875.542969 21.90625 10.730469 26.167969 10.148438 4.246094 21.890625-.496093 26.171875-10.730469 8.886719-21.253906 14.863281-43.636718 17.761719-66.535156 1.386718-10.957031-6.371094-20.964844-17.332032-22.351562zm-265.167968 205.003906c-107.941406-13.691406-189.339844-106.214844-189.339844-215.210938 0-119.894531 97.023438-216.945312 216.941406-216.945312 108.996094 0 201.511719 81.398438 215.207032 189.34375 1.390624 10.957031 11.414062 18.714844 22.355468 17.324219 10.957032-1.390625 18.714844-11.398438 17.324219-22.359375-16.101563-126.933594-124.492187-224.308594-254.886719-224.308594-142.003906 0-256.941406 114.921875-256.941406 256.945312 0 130.527344 97.496094 238.804688 224.304688 254.894532 10.929687 1.382812 20.964843-6.335938 22.359374-17.324219 1.390626-10.957031-6.367187-20.96875-17.324218-22.359375zm0 0"></path></svg></span>
							<p class="u-text-white u-text-7">T2 – T6 …… 7 am – 17 am, T7
								7 am - 11am, Sun ....… Closed</p>
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