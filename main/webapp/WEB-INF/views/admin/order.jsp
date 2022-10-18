<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="INTUITIVE">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>ORDER</title>
<link rel="stylesheet" href="/admin/nicepage.css" media="screen">
<link rel="stylesheet" href="/admin/REPORTS.css" media="screen">

<script class="u-script" type="text/javascript" src="/admin/jquery.js"
	defer=""></script>
<script class="u-script" type="text/javascript" src="/admin/nicepage.js"
	defer=""></script>
<meta name="generator" content="Nicepage 4.3.3, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
<link id="u-page-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>


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
<meta property="og:title" content="REPORTS">
<meta property="og:description" content="">
<meta property="og:type" content="website">
</head>
<body class="u-body">
	<div>
		<jsp:include page="/WEB-INF/views/header_adminTool.jsp" />
	</div>

	<section class="u-align-center u-clearfix u-gradient u-section-1"
		id="carousel_0e48">
		<div class="u-clearfix u-sheet u-valign-middle u-sheet-1"
			style="width: 80%">
			<div
				class="u-expanded-width u-tab-links-align-justify u-tabs u-tabs-1 ">
				<ul
					class="u-border-2 u-border-palette-2-base u-spacing-10 u-tab-list u-unstyled"
					role="tablist">
					<li class="u-tab-item" role="presentation"><a
						class="active u-active-black u-button-style u-tab-link u-text-active-white u-text-hover-palette-2-base u-tab-link-1"
						id="link-tab-0da5" href="#tab-0da5" role="tab"
						aria-controls="tab-0da5" aria-selected="true">ORDER Pending</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-active-black u-button-style u-tab-link u-text-active-white u-text-hover-palette-2-base u-tab-link-2"
						id="link-tab-14b7" href="#tab-14b7" role="tab"
						aria-controls="tab-14b7" aria-selected="false">ORDER are being
							delivered</a></li>
					<li class="u-tab-item" role="presentation"><a
						class="u-active-black u-button-style u-tab-link u-text-active-white u-text-hover-palette-2-base u-tab-link-3"
						id="link-tab-2917" href="#tab-2917" role="tab"
						aria-controls="tab-2917" aria-selected="false">Successful
							Delivery</a></li>
				</ul>
				<div class="u-tab-content">
					<div
						class="u-container-style u-tab-active u-tab-pane u-white u-tab-pane-1"
						id="tab-0da5" role="tabpanel" aria-labelledby="link-tab-0da5">
						<div class="u-container-layout u-container-layout-1">
							<div class="u-container-style u-expanded-width u-group u-group-1">
								<div class="u-container-layout">

									<div class="u-expanded-width u-table ">


										<table class="u-table-entity">
											<colgroup>
												<col width="5%">
												<col width="20%">
												<col width="10%">
												<col width="25%">
											</colgroup>
											<thead
												class="u-custom-font u-heading-font u-table-header u-table-header-1">

												<tr style="height: 47px;">
													<th class="u-border-2 u-border-black u-table-cell">Bill
														id</th>
													<th class="u-border-2 u-border-black u-table-cell">FULL
														NAME</th>

													<th class="u-border-2 u-border-black u-table-cell">DATE</th>
													<th class="u-border-2 u-border-black u-table-cell">ADDRESS
													</th>
													<th class="u-border-2 u-border-black u-table-cell">PRICE
													</th>
													<th class="u-border-2 u-border-black u-table-cell">PHONE</th>
													<th class="u-border-2 u-border-black u-table-cell">Status</th>
													<th class="u-border-2 u-border-black u-table-cell">Customer
														id</th>
												</tr>
											</thead>
											<tbody class="u-table-body">
												<c:forEach var="item" items="${items}">
													<tr style="height: 47px;">
														<td
															class="u-border-2 u-border-grey-90 u-table-cell u-table-cell-5">${item.id}</td>
														<td class="u-border-2 u-border-grey-90 u-table-cell">${item.nameRe}</td>
														<td
															class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
															${item.createDate}</td>

														<td
															class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
															${item.address}</td>
														<td
															class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
															${item.price}</td>
														<td
															class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
															${item.phoneRe}</td>
														<td
															class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
															${item.orderstatus.name}</td>
														<td
															class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
															${item.customer.id}</td>
														<td class="u-border-2 u-border-grey-90 u-table-cell">
															<a href="/admin/orderdetail/${item.id}"
															class="u-align-right u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn   u-palette-4-base u-none u-text-black u-btn-23"><span
																class="u-file-icon u-icon u-icon-16"><img
																	src="images/10591571.png" alt=""></span>&nbsp;DETAIL </a>
														</td>
														<td class="u-border-2 u-border-grey-90 u-table-cell">
															<a href="/admin/orderupdate/dg/${item.id }"
															class="u-align-right u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn  u-palette-4-base u-none u-text-black u-btn-23"><span
																class="u-file-icon u-icon u-icon-16"><img
																	src="images/10591571.png" alt=""></span>&nbsp;Delivery </a>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>


									</div>
								</div>
							</div>
						</div>
					</div>
					<div
						class="u-align-left u-container-style u-tab-pane u-white u-tab-pane-2"
						id="tab-14b7" role="tabpanel" aria-labelledby="link-tab-14b7">
						<div class="u-container-layout u-valign-top u-container-layout-3">
							<div class="u-container-style u-expanded-width u-group u-group-2">
								<div class="u-container-layout">
									<div class="u-form u-form-2">
										<form
											action="/PS15061_TranLeHongPhuc_Assignment_SOF301_Java4/ReportManagementServlet"
											method="POST">
											<div
												class="u-form-group u-form-select u-label-none u-form-group-3">
												<label for="select-9c6f"
													class="u-form-control-hidden u-label"></label>
												<div class="u-form-select-wrapper">
													<select id="videotitle" name="videotitle"
														onclick="this.form.submit"
														class="u-border-1 u-border-black u-input u-input-rectangle u-radius-17">
														<c:forEach var="item" items="${videos }">
															<option value=" ${item.title}">${item.title}</option>
														</c:forEach>
													</select>
													<svg xmlns="http://www.w3.org/2000/svg" width="14"
														height="12" version="1" class="u-caret">
														<path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
												</div>
											</div>
											<div class="u-form-group u-form-submit">
												<a href="#"
													class="u-border-none u-btn u-btn-submit u-button-style u-hover-grey-90 u-black u-text-white u-btn-2">Submit</a>
												<input type="submit" value="submit"
													class="u-form-control-hidden">
											</div>
											<div class="u-form-send-message u-form-send-success">#FormSendSuccess</div>
											<div class="u-form-send-error u-form-send-message">#FormSendError</div>
											<input type="hidden" value="" name="recaptchaResponse">
										</form>
									</div>
									<div class="u-expanded-width u-table u-table-responsive ">
										<form
											action="/PS15061_TranLeHongPhuc_Assignment_SOF301_Java4/ReportManagementServlet"
											method="get">

											<table class="u-table-entity">
												<colgroup>
													<col width="5%">
													<col width="20%">
													<col width="10%">
													<col width="25%">
												</colgroup>
												<thead
													class="u-custom-font u-heading-font u-table-header u-table-header-2">
													<tr style="height: 47px;">
														<th class="u-border-2 u-border-black u-table-cell">Bill
															id</th>
														<th class="u-border-2 u-border-black u-table-cell">FULL
															NAME</th>

														<th class="u-border-2 u-border-black u-table-cell">DATE</th>
														<th class="u-border-2 u-border-black u-table-cell">ADDRESS
														</th>
														<th class="u-border-2 u-border-black u-table-cell">PRICE
														</th>
														<th class="u-border-2 u-border-black u-table-cell">PHONE</th>
														<th class="u-border-2 u-border-black u-table-cell">Status</th>
														<th class="u-border-2 u-border-black u-table-cell">Customer
															id</th>
													</tr>
												</thead>
												<tbody class="u-table-body">
												<tbody class="u-table-body">
													<c:forEach var="item" items="${itemsDG}">
														<tr style="height: 47px;">
															<td
																class="u-border-2 u-border-grey-90 u-table-cell u-table-cell-5">${item.id}</td>
															<td class="u-border-2 u-border-grey-90 u-table-cell">${item.nameRe}</td>
															<td
																class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
																${item.createDate}</td>

															<td
																class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
																${item.address}</td>
															<td
																class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
																${item.price}</td>
															<td
																class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
																${item.phoneRe}</td>
															<td
																class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
																${item.orderstatus.name}</td>
															<td
																class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
																${item.customer.id}</td>
															<td class="u-border-2 u-border-grey-90 u-table-cell">
																<a href="/admin/orderdetail/${item.id}"
																class="u-align-right u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn   u-palette-4-base u-none u-text-black u-btn-23"><span
																	class="u-file-icon u-icon u-icon-16"><img
																		src="images/10591571.png" alt=""></span>&nbsp;DETAIL </a>
															</td>
															<td class="u-border-2 u-border-grey-90 u-table-cell">
																<a href="/admin/orderupdate/tc/${item.id }"
																class="u-align-right u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn  u-palette-4-base u-none u-text-black u-btn-23"><span
																	class="u-file-icon u-icon u-icon-16"><img
																		src="images/10591571.png" alt=""></span>&nbsp;Success </a>
															</td>
														</tr>
													</c:forEach>
												</tbody>


											</table>

										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="u-container-style u-tab-pane u-white u-tab-pane-3"
						id="tab-2917" role="tabpanel" aria-labelledby="link-tab-2917">
						<div class="u-container-layout u-valign-top u-container-layout-5">
							<div class="u-container-style u-expanded-width u-group u-group-3">
								<div class="u-container-layout">
									<div class="u-form u-form-3">
										<form action="#" method="POST"
											class="u-clearfix u-form-horizontal u-form-spacing-15 u-inner-form"
											style="padding: 15px;" source="custom">
											<div
												class="u-form-group u-form-select u-label-none u-form-group-5">
												<label for="select-9c6f"
													class="u-form-control-hidden u-label"></label>
												<div class="u-form-select-wrapper">
													<select id="select-9c6f" name="select"
														class="u-border-1 u-border-black u-input u-input-rectangle u-radius-17">
														<option value="Item 1">Item 1</option>
														<option value="Item 2">Item 2</option>
														<option value="Item 3">Item 3</option>
													</select>
													<svg xmlns="http://www.w3.org/2000/svg" width="14"
														height="12" version="1" class="u-caret">
														<path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
												</div>
											</div>
											<div class="u-form-group u-form-submit">
												<a href="#"
													class="u-border-none u-btn u-btn-submit u-button-style u-hover-grey-90 u-black u-text-white u-btn-3">Submit</a>
												<input type="submit" value="submit"
													class="u-form-control-hidden">
											</div>
											<div class="u-form-send-message u-form-send-success">#FormSendSuccess</div>
											<div class="u-form-send-error u-form-send-message">#FormSendError</div>
											<input type="hidden" value="" name="recaptchaResponse">
										</form>
									</div>
									<div class="u-expanded-width u-table u-table-responsive ">
										<table class="u-table-entity">
											<colgroup>
												<col width="5%">
												<col width="20%">
												<col width="10%">
												<col width="25%">
											</colgroup>
											<thead
												class="u-custom-font u-heading-font u-table-header u-table-header-2">
												<tr style="height: 47px;">
													<th class="u-border-2 u-border-black u-table-cell">Bill
														id</th>
													<th class="u-border-2 u-border-black u-table-cell">FULL
														NAME</th>

													<th class="u-border-2 u-border-black u-table-cell">DATE</th>
													<th class="u-border-2 u-border-black u-table-cell">ADDRESS
													</th>
													<th class="u-border-2 u-border-black u-table-cell">PRICE
													</th>
													<th class="u-border-2 u-border-black u-table-cell">PHONE</th>
													<th class="u-border-2 u-border-black u-table-cell">Status</th>
													<th class="u-border-2 u-border-black u-table-cell">Customer
														id</th>
												</tr>
											</thead>
											<tbody class="u-table-body">
											<tbody class="u-table-body">
												<c:forEach var="item" items="${itemsTC}">
													<tr style="height: 47px;">
														<td
															class="u-border-2 u-border-grey-90 u-table-cell u-table-cell-5">${item.id}</td>
														<td class="u-border-2 u-border-grey-90 u-table-cell">${item.nameRe}</td>
														<td
															class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
															${item.createDate}</td>

														<td
															class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
															${item.address}</td>
														<td
															class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
															${item.price}</td>
														<td
															class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
															${item.phoneRe}</td>
														<td
															class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
															${item.orderstatus.name}</td>
														<td
															class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-7">
															${item.customer.id}</td>
														<td class="u-border-2 u-border-grey-90 u-table-cell">
															<a href="/admin/orderdetail/${item.id}"
															class="u-align-right u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn   u-palette-4-base u-none u-text-black u-btn-23"><span
																class="u-file-icon u-icon u-icon-16"><img
																	src="images/10591571.png" alt=""></span>&nbsp;DETAIL </a>
														</td>
														<td class="u-border-2 u-border-grey-90 u-table-cell">
															<a href="/admin/orderupdate/tc/${item.id }"
															class="u-align-right u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn  u-palette-4-base u-none u-text-black u-btn-23"><span
																class="u-file-icon u-icon u-icon-16"><img
																	src="images/10591571.png" alt=""></span>&nbsp;Success </a>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
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
	<style>
.u-section-5 {
	min-height: 826px;
}

.u-section-5 .u-image-1 {
	width: 836px;
	height: 812px;
	box-shadow: 9px 9px 4px 0 rgba(0, 0, 0, 0.2);
	background-image: url("/admin/img/order.JPG");
	background-position: 50% 50%;
	margin: 83px auto 60px calc((( 100% - 1140px)/2)+ 217px);
	overflow-y: auto;
}

.u-section-5 .u-container-layout-1 {
	padding: 39px 41px 40px;
}

.u-section-5 .u-text-1 {
	text-transform: uppercase;
	font-size: 3.75rem;
	font-weight: 700;
	font-family: Oswald, sans-serif;
	margin: 9px 9px 0;
}

.u-section-5 .u-form-1 {
	height: 161px;
	margin: 32px 9px 0;
}

.u-section-5 .u-input-1 {
	background-image: none;
	font-size: 1.25rem;
}

.u-section-5 .u-btn-1 {
	border-style: solid;
	background-image: none;
	font-size: 1.25rem;
	letter-spacing: 3px;
	text-transform: uppercase;
	font-weight: 400;
	padding-left: 50px;
	padding-right: 50px;
}

.u-section-5 .u-icon-1 {
	height: 40px;
	width: 100px;
	color: rgb(235, 186, 22) !important;
	margin: auto;
}

.u-section-5 .u-icon-2 {
	width: 27px;
	height: 27px;
	left: auto;
	top: 17px;
	position: absolute;
	right: 16px;
}

@media ( max-width : 1199px) {
	.u-section-5 .u-image-1 {
		height: auto;
		margin-left: calc((( 100% - 940px)/2)+ 217px);
	}
	.u-section-5 .u-form-1 {
		margin-right: initial;
		margin-left: initial;
	}
}

@media ( max-width : 991px) {
	.u-section-5 .u-image-1 {
		margin-left: calc((( 100% - 720px)/2)+ 84px);
	}
	.u-section-5 .u-container-layout-1 {
		padding: 30px 50px;
	}
}

@media ( max-width : 767px) {
	.u-section-5 .u-image-1 {
		width: 540px;
		min-height: 615px;
		margin-left: auto;
	}
	.u-section-5 .u-container-layout-1 {
		padding-top: 45px;
		padding-left: 45px;
		padding-right: 45px;
	}
	.u-section-5 .u-text-1 {
		margin-top: 0;
		margin-left: 0;
		margin-right: 0;
	}
	.u-section-5 .u-icon-1 {
		margin-top: 5px;
	}
}

@media ( max-width : 575px) {
	.u-section-5 .u-image-1 {
		width: 340px;
		min-height: 600px;
	}
	.u-section-5 .u-container-layout-1 {
		padding: 50px 25px 26px;
	}
	.u-section-5 .u-text-1 {
		font-size: 2.25rem;
	}
	.u-section-5 .u-btn-1 {
		width: 100%;
	}
	.u-section-5 .u-icon-1 {
		margin-top: 0;
	}
}
</style>
</body>
</html>