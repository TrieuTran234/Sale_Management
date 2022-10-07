<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Male_Fashion Template">
<meta name="keywords" content="Male_Fashion, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>789DEV | SUPERPHUC</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
	rel="stylesheet">

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

<link rel="stylesheet" href="/client/css/nicepage.css" media="screen">




</head>
<body>

	<div>
		<jsp:include page="/WEB-INF/views/header.jsp" />
	</div>

	<!-- Shop Section Begin -->
	<section class="shop spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="shop__sidebar">
						<div class="shop__sidebar__search">
							<form action="">
								<input type="text" placeholder="Search..." name="keywords">
								<button type="submit">
									<span class="icon_search"></span>
								</button>
							</form>
						</div>
						<div class="shop__sidebar__accordion">
							<div class="accordion" id="accordionExample">
								<div class="card">
									<div class="card-heading">
										<a data-toggle="collapse" data-target="#collapseOne">
											Categories </a>
									</div>
									<div id="collapseOne" class="collapse show "
										data-parent="#accordionExample">
										<div class="card-body">
											<div class="shop__sidebar__categories">

												<ul class="nice-scroll">
													<li><a href="/client/product">ALL</a></li>
													<c:forEach var="itemca" items="${itemCate}">
														<li><a href="/client/product/findbycate/${itemca.id}">${itemca.name }</a></li>
													</c:forEach>
												</ul>

											</div>
										</div>
									</div>
								</div>

								<div class="card">
									<div class="card-heading">
										<a data-toggle="collapse" data-target="#collapseThree">Filter
											Price(Not yet)</a>
									</div>
									<div id="collapseThree" class="collapse "
										data-parent="#accordionExample">
										<div class="card-body">
											<div class="shop__sidebar__price">
												<ul>
													<li><a href="#">$500.00 - $1000.00</a></li>
													<li><a href="#">$1000.00 - $1500.00</a></li>
													<li><a href="#">$1500.00 - $2000.00</a></li>
													<li><a href="#">$2000.00 - $2500.00</a></li>
													<li><a href="#">$2500.00 - $3000.00</a></li>
													<li><a href="#">3000.00+</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-heading">
										<a data-toggle="collapse" data-target="#collapseFour">Size(Not
											yet)</a>
									</div>
									<div id="collapseFour" class="collapse "
										data-parent="#accordionExample">
										<div class="card-body">
											<div class="shop__sidebar__size">
												<label for="xs">xs <input type="radio" id="xs">
												</label> <label for="sm">s <input type="radio" id="sm">
												</label> <label for="md">m <input type="radio" id="md">
												</label> <label for="xl">xl <input type="radio" id="xl">
												</label> <label for="2xl">2xl <input type="radio" id="2xl">
												</label> <label for="xxl">xxl <input type="radio" id="xxl">
												</label> <label for="3xl">3xl <input type="radio" id="3xl">
												</label> <label for="4xl">4xl <input type="radio" id="4xl">
												</label>
											</div>
										</div>
									</div>
								</div>

								<div class="card">
									<div class="card-heading">
										<a data-toggle="collapse" data-target="#collapseFive">Colors(Not
											yet)</a>
									</div>
									<div id="collapseFive" class="collapse "
										data-parent="#accordionExample">
										<div class="card-body">
											<div class="shop__sidebar__color">
												<label class="c-1" for="sp-1"> <input type="radio"
													id="sp-1">
												</label> <label class="c-2" for="sp-2"> <input type="radio"
													id="sp-2">
												</label> <label class="c-3" for="sp-3"> <input type="radio"
													id="sp-3">
												</label> <label class="c-4" for="sp-4"> <input type="radio"
													id="sp-4">
												</label> <label class="c-5" for="sp-5"> <input type="radio"
													id="sp-5">
												</label> <label class="c-6" for="sp-6"> <input type="radio"
													id="sp-6">
												</label> <label class="c-7" for="sp-7"> <input type="radio"
													id="sp-7">
												</label> <label class="c-8" for="sp-8"> <input type="radio"
													id="sp-8">
												</label> <label class="c-9" for="sp-9"> <input type="radio"
													id="sp-9">
												</label>
											</div>
										</div>
									</div>
								</div>
								<!--  
								<div class="card">
									<div class="card-heading">
										<a data-toggle="collapse" data-target="#collapseSix">Tags</a>
									</div>
									<div id="collapseSix" class="collapse show"
										data-parent="#accordionExample">
										<div class="card-body">
											<div class="shop__sidebar__tags">
												<a href="#">Product</a> <a href="#">Bags</a> <a href="#">Bikes</a>
												<a href="#">ACCESSORIES</a> <a href="#">Path</a> <a href="#">Hats</a>
												<a href="#">Accessories</a>
											</div>
										</div>
									</div>
								</div> 
								-->
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="shop__product__option">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="shop__product__option__left">
									<p>Showing 1–12 of 126 results</p>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="shop__product__option__right">
									<p>Sort by ${field}</p>
									<select id="dynamic_select" onclick="this.form.submit">
										<option value="/client/product/?field=price">Sort by
											price</option>
										<option value="/client/product/?field=name">Sort by
											name</option>
										<option>Sort by</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<c:forEach var="item" items="${page.content}">
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
									<div
										style=" background-image: url('/uploads/product/${item.image}');
								background-size: 250px 250px;
								"
										class="product__item__pic ">
										<ul class="product__hover">
											<li><a href="#"><img
													src="/client/img/icon/heart.png" alt=""></a></li>
											<li><a href="#"><img
													src="/client/img/icon/compare.png" alt=""> <span>Compare</span></a>
											</li>
											<li><a href="/client/shopdetail/index/${item.id}"><img
													src="/client/img/icon/search.png" alt=""></a><span>Detail</span></li>
										</ul>
									</div>
									<div class="product__item__text">
										<h6>${item.name}</h6>
										<a href="/client/shoppingcart/add/${item.id}" class="add-cart">+
											Add To Cart</a>
										<div class="rating">
											<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
												class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
												class="fa fa-star-o"></i>
										</div>
										<h5>${item.price}</h5>
										<div class="product__color__select">
											<label for="pc-4"> <input type="radio" id="pc-4">
											</label> <label class="active black" for="pc-5"> <input
												type="radio" id="pc-5">
											</label> <label class="grey" for="pc-6"> <input type="radio"
												id="pc-6">
											</label>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="u-align-left u-form-group u-form-submit">
								<a href="/client/product?p=0"
									class="u-border-none u-btn u-btn-submit u-button-style u-text-body-alt-color-black  u-btn-1 u-black"
									style="color: black; font-weight: bold;">FIRST</a> <input
									type="submit" value="submit" class="u-form-control-hidden">
								<a href="/client/product?p=${page.number-1}"
									class="u-border-none u-btn u-btn-submit u-button-style u-text-body-alt-color-black  u-btn-1 u-black"
									style="color: black; font-weight: bold">PREVIOUS</a> <input
									type="submit" value="submit" class="u-form-control-hidden">
								<a href="/client/product?p=${page.number+1}"
									class="u-border-none u-btn u-btn-submit u-button-style u-text-body-alt-color-black  u-btn-1 u-black"
									style="color: black; font-weight: bold">NEXT</a> <input
									type="submit" value="submit" class="u-form-control-hidden">
								<a href="/client/product?p=${page.totalPages-1}"
									class="u-border-none u-btn u-btn-submit u-button-style u-text-body-alt-color-black  u-btn-1 u-black"
									style="color: black; font-weight: bold">LAST</a> <input
									type="submit" value="submit" class="u-form-control-hidden">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shop Section End -->

	<!-- Footer Section Begin -->
	<div>
		<jsp:include page="/WEB-INF/views/footer.jsp" />
	</div>
	<!-- Footer Section End -->

	<!-- Search Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
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
	<script>
		$(function() {
			// bind change event to select
			$('#dynamic_select').on('change', function() {
				var url = $(this).val(); // get selected value
				if (url) { // require a URL
					window.location = url; // redirect
				}
				return false;
			});
		});
	</script>
</body>
</html>