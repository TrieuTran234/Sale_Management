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
<title>789DEV | SUPERBIKE</title>

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

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<div>
		<jsp:include page="/WEB-INF/views/header.jsp" />
	</div>


	<!-- Banner Section Begin -->
	<section class="banner spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-4">
					<div class="banner__item">
						<div class="banner__item__pic">
							<img src="/client/img/banner/banner-1.jpg" alt="">
						</div>
						<div class="banner__item__text">
							<h2>Côn tay</h2>
							<a href="/client/product/findbycate/RS">Mua ngay</a>
						</div>
					</div>
				</div>
				<div class="col-lg-5">
					<div class="banner__item banner__item--middle">
						<div class="banner__item__pic">
							<img src="/client/img/banner/banner-2.jpg" alt="">
						</div>
						<div class="banner__item__text">
							<h2>Hiệu năng cao</h2>
							<a href="/client/product/findbycate/SS">Mua ngay</a>
						</div>
					</div>
				</div>
				<div class="col-lg-7">
					<div class="banner__item banner__item--last">
						<div class="banner__item__pic">
							<img src="/client/img/banner/banner-3.jpg" alt="">
						</div>
						<div class="banner__item__text">
							<h2>Phổ thông</h2>
							<a href="/client/product/findbycate/ZS">Mua ngay</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Banner Section End -->

	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="filter__controls">
						<li class="active" data-filter="*">Best Sellers</li>
						<li data-filter=".new-arrivals">New Arrivals</li>
						<li data-filter=".hot-sales">Hot Sales</li>
					</ul>
				</div>
			</div>
		<!-- =====PRODUCT======class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals"> de loc sp new-arrivals-->			
			<div class="row product__filter">
				<c:forEach var="item" items="${itemdate.content}">
					<div
						class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
						<div class="product__item">
							<div class="product__item__pic "
								style=" background-image: url('/uploads/product/${item.image}');
								background-size: 250px 250px;
								">
								<span class="label">New</span>
								<ul class="product__hover">
									<li><a href="#"><img src="/client/img/icon/heart.png"
											alt=""></a></li>
									<li><a href="#"><img
											src="/client/img/icon/compare.png" alt=""> <span>Compare</span></a></li>
									<li><a href="#"><img src="/client/img/icon/search.png"
											alt=""></a></li>
								</ul>
							</div>
							<div class="product__item__text">
								<h6>${item.name }</h6>
								<a href="/client/shoppingcart/add/${item.id}" class="add-cart">+
									Add To Cart</a>
								<div class="rating">
									<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
										class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
										class="fa fa-star-o"></i>
								</div>
								<h5>$ ${item.price }</h5>
								<div class="product__color__select">
									<label for="pc-1"> <input type="radio" id="pc-1">
									</label> <label class="active black" for="pc-2"> <input
										type="radio" id="pc-2">
									</label> <label class="grey" for="pc-3"> <input type="radio"
										id="pc-3">
									</label>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
	
		<!-- =====PRODUCT======class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales"> de loc sp hot-sales-->		
				<c:forEach var="item" items="${items}">
					<div
						class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales">
						<div class="product__item sale">
							<div class="product__item__pic "
								style=" background-image: url('/uploads/product/${item.image}');
								background-size: 250px 250px;
								">
								<span class="label">SALE</span>
								<ul class="product__hover">
									<li><a href="#"><img src="/client/img/icon/heart.png"
											alt=""></a></li>
									<li><a href="#"><img
											src="/client/img/icon/compare.png" alt=""> <span>Compare</span></a></li>
									<li><a href="#"><img src="/client/img/icon/search.png"
											alt=""></a></li>
								</ul>
							</div>
							<div class="product__item__text">
								<h6>${item.name }</h6>
								<a href="/client/shoppingcart/add/${item.id}" class="add-cart">+
									Thêm giỏ hàng.</a>
								<div class="rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-o"></i>
								</div>
								<h5> ${item.price } VND</h5>
								<div class="product__color__select">
									<label for="pc-16"> <input type="radio" id="pc-16">
									</label> <label class="active black" for="pc-17"> <input
										type="radio" id="pc-17">
									</label> <label class="grey" for="pc-18"> <input type="radio"
										id="pc-18">
									</label>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
	<!-- =========================================PRODUCT===================================================== -->	
			</div>
		</div>
	</section>
	<!-- Product Section End -->


	<!-- Instagram Section Begin -->
	<section class="instagram spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="instagram__pic">
						<div class="instagram__pic__item set-bg"
							data-setbg="/client/img/instagram/instagram-1.jpg"></div>
						<div class="instagram__pic__item set-bg"
							data-setbg="/client/img/instagram/instagram-2.jpg"></div>
						<div class="instagram__pic__item set-bg"
							data-setbg="/client/img/instagram/instagram-3.jpg"></div>
						<div class="instagram__pic__item set-bg"
							data-setbg="/client/img/instagram/instagram-4.jpg"></div>
						<div class="instagram__pic__item set-bg"
							data-setbg="/client/img/instagram/instagram-5.jpg"></div>
						<div class="instagram__pic__item set-bg"
							data-setbg="/client/img/instagram/instagram-6.jpg"></div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="instagram__text">
						<h2>Instagram</h2>
						<p>Đơn giản chỉ là dạo qua thứ được gọi là ước mơ hay là thứ sẽ trở thành sự thật! Lựa chọn giữa phương tiện và thứ gọi là dame mê :) kkk.</p>
						<h3>SuperTeam</h3>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Instagram Section End -->
	<br><br><br><br>


	<div>
		<jsp:include page="/WEB-INF/views/footer.jsp" />
	</div>


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
</body>
</html>