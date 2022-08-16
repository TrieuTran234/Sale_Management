<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>PRODUCT EDIT</title>
<link rel="stylesheet" href="/admin/nicepage.css" media="screen">
<link rel="stylesheet" href="/admin/productedit.css" media="screen">
<script class="u-script" type="text/javascript" src="/admin/jquery.js"
	defer=""></script>
<script class="u-script" type="text/javascript" src="/admin/nicepage.js"
	defer=""></script>
<meta name="generator" content="Nicepage 4.3.3, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
<link id="u-page-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i">

<!-- Css Styles -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
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
<!-- Css Styles copy -->



<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "Site 2",
		"logo": "images/unnamed.png",
		"sameAs": []
}</script>
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="VIDEO">
<meta property="og:description" content="">
<meta property="og:type" content="website">
</head>
<body class="u-body">

	<div>
		<jsp:include page="/WEB-INF/views/header_adminTool.jsp" />
	</div>


	<section class="u-align-center u-clearfix u-section-1"
		id="carousel_8dea">
		<div class="u-clearfix u-sheet u-sheet-1">
			<h2 class="u-text u-text-1">PRODUCT EDITION</h2>
			<p class="u-text u-text-2">Quản lý sản phẩm của bạn dễ dàng, tiện
				lợi , nhanh chóng , và theo dõi hiệu quả nội dung trên tất cả video
				và tối ưu hóa tiêu đề video để người dùng dễ dàng tiếp cận !</p>
			<div
				class="u-expanded-width u-black u-shape u-shape-rectangle u-shape-1"></div>
			<div class="u-clearfix u-gutter-30 u-layout-wrap u-layout-wrap-1">
				<div class="u-gutter-0 u-layout">
					<div class="u-layout-col">
						<div class="u-size-60">
							<div class="u-layout-row">
								<div
									class="u-container-style u-layout-cell u-size-60 u-layout-cell-1">
									<div class="u-container-layout u-container-layout-1">
										<h3 class="u-text u-text-3">PRODUCT EDIT</h3>
										<div class="u-video u-video-contain u-video-1">
											<div class="embed-responsive embed-responsive-1">
												<form:form action="/admin/product/index"
													modelAttribute="item" method="post" style="height: 800px,">
													<img src="/uploads/product/${item.image}" alt="" class="">
													</video>
												</form:form>

											</div>
										</div>
										<div class="u-form u-form-1">
											<form:form action="/admin/product/index"
												modelAttribute="item" method="POST"
												enctype="multipart/form-data" class="" source="custom"
												name="form" style="padding: 34px; width: ;width: 550px">
												<div
													class="u-form-group u-form-select u-label-none u-form-group-3">
													<label for="select-9c6f"
														class="u-form-control-hidden u-label"></label>
													<div class="u-form-select-wrapper">
														<form:select path="category.id" id="category"
															name="category" onclick="this.form.submit"
															class="u-border-1 u-border-black u-input u-input-rectangle u-radius-17">
															<c:forEach var="itemca" items="${itemCate }">

																<form:option value="${itemca.id }"> ${itemca.name}</form:option>
																<form:options itemValue="${itemca.id}"></form:options>
															</c:forEach>
														</form:select>
														<svg xmlns="http://www.w3.org/2000/svg" width="14"
															height="12" version="1" class="u-caret">
															<path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
													</div>
												</div>
												<div class="u-form-group u-form-name">
													<label for="name-6a67" class="u-label u-label-1">Product
														ID</label>
													<form:input path="id" type="text" placeholder=" ID"
														id="name-6a67" name="id" value="${ids}"
														class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
														required="required" />
												</div>
												<br>
												<div class="u-form-group">
													<label for="email-6a67"
														class="u-label u-label-2 u-text-white">Product
														Name</label>
													<form:input path="name" type="text"
														placeholder="Enter name" id="email-6a67" name="name"
														value=""
														class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
														required="required" />
												</div>
												<br>

												<div class="u-form-group">
													<label for="email-6a67"
														class="u-label u-label-2 u-text-white">Create Date</label>
													<form:input path="createDate" type="text"
														placeholder="Enter a date" id="email-6a67"
														name="createDate" value=""
														class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
														required="required" />
												</div>
												<br>
												<div class="u-form-group">
													<label for="message-6a67" class="u-label u-label-3">Price</label>
													<form:input path="price" type="number" id="message-6a67"
														name="price" value=""
														class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
														required="required" />
												</div>
												<br>
												<div class="u-form-group u-form-radiobutton u-form-group-4">
													<div class="u-form-radio-button-wrapper">
														<form:radiobutton path="available" name="available"
															value="true" />
														<label class="u-label" for="radiobutton">Available</label>
														<br>
														<form:radiobutton path="available" name="available"
															value="false" />
														<label class="u-label" for="radiobutton">Unavailable</label>
														<br>
													</div>
												</div>

												<div class="custom-file mb-4">
													<label for="image" class="custom-file-label">Image
														<input type="text" name="image1" value="${item.image}"
														readonly="true" style="border: none;">
													</label> 
													<br> 
													<input type="file" accept=".jpg,.png"
														class="u-border-none u-btn u-btn-submit u-button-style u-text-body-alt-color-black  u-btn-1 u-black"
														id="image" name="photo" />

												</div>
												<br>
												<br>
												<div class="u-form-group u-form-message u-form-group-5">
													<label for="message-106f" class="u-label u-label-6">DESCRIPTION</label>
													<form:textarea path="" placeholder="Enter your DESCRIPTION"
														rows="8" cols="50" id="message-106f" name="description"
														class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
														required=""></form:textarea>
												</div>


												<div class="u-align-left u-form-group u-form-submit">
													<button
														class="u-border-none u-btn u-btn-submit u-button-style u-text-body-alt-color-black  u-btn-1 u-black"
														style="color: black; font-weight: bold;"
														formaction="/admin/product/create">Create</button>
													<input type="submit" value="submit"
														class="u-form-control-hidden">
													<button
														class="u-border-none u-btn u-btn-submit u-button-style u-text-body-alt-color-black  u-btn-1 u-black"
														style="color: black; font-weight: bold"
														formaction="/admin/product/update">Update</button>
													<input type="submit" value="submit"
														class="u-form-control-hidden">
													<button
														class="u-border-none u-btn u-btn-submit u-button-style u-text-body-alt-color-black  u-btn-1 u-black"
														style="color: black; font-weight: bold"
														formaction="/admin/product/delete/${item.id}">Delete</button>
													<input type="submit" value="submit"
														class="u-form-control-hidden">
													<button
														class="u-border-none u-btn u-btn-submit u-button-style u-text-body-alt-color-black  u-btn-1 u-black"
														style="color: black; font-weight: bold"
														formaction="/admin/product/index">New</button>
													<input type="submit" value="submit"
														class="u-form-control-hidden">
												</div>
												<c:if test="${not empty error }">
													<div
														style="width: 500px; height: 50px; background-color: rgb(149, 0, 0); color: white; padding: 10px; text-align: center;">*${error }*</div>
												</c:if>
												<input type="hidden" value="" name="recaptchaResponse">
											</form:form>
										</div>
							
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</section>




	<div>
		<jsp:include page="/WEB-INF/views/footer.jsp" />
	</div>
</body>
</html>