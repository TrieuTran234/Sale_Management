<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<header class="header">
	<div class="header__top" >
		<div class="container" style="max-height: 30px;">
			<div class="row">
				<div class="col-lg-6 col-md-5">
				</div>

				<div class="col-lg-6 col-md-5">
					<div class="header__top__right">
						<div class="header__top__links">
							<a href="#">FAQS</a>

						</div>

						<div class="header__top__hover">
							<span>${name} </span>
							<c:if test="${empty name}">
								<span>Account? </span>
							</c:if>

							<c:choose>
								<c:when test="${name eq 'Account?'}">
									<ul>
										<li><a style="font-size: 20px;" href="/account/login"
											class="text-dark">Sign&nbsp;in</a></li>
										<li><a style="font-size: 20px;"
											href="/account/register/index" class="text-dark">Register</a></li>
										<li><a style="font-size: 20px;"
											href="/account/forgot/index" class="text-dark">Forgot&nbsp;password</a></li>
									</ul>

								</c:when>

								<c:otherwise>
									<ul>
										<c:if test="${not empty admin}">
											<li><a style="font-size: 20px;"
												href="/admin/product/list" class="text-dark">ADMIN&nbsp;TOOL</a></li>
										</c:if>

										<li><a style="font-size: 20px;" href="/account/logout"
											class="text-dark">Sign&nbsp;out</a></li>

										<li><a style="font-size: 20px;"
											href="/account/change/index" class="text-dark">Change&nbsp;password</a></li>

										<c:if test="${ empty admin}">
											<li><a style="font-size: 20px;"
												href="/account/editprofile/index" class="text-dark">Edit&nbsp;profile</a></li>
										</c:if>
									</ul>
								</c:otherwise>
							</c:choose>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3">
				<div class="header__logo">
					<a href="/index"><img src="/client/img/logo.png" alt=""></a>
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<nav class="header__menu mobile-menu">
					<ul>
						<li class="active"><a href="/index">Trang Chủ</a></li>
						<li><a href="/client/product">Sản Phẩm</a></li>
						
						<li><a href="/contact">Liên Hệ</a></li><li>
						<li><a href="/client/shoppingcart/index">Giỏ Hàng</a></li>
					</ul>
				</nav>
			</div>
			<div class="col-lg-3 col-md-3">
				<div class="header__nav__option">
					<a href="#" class="search-switch"><img
						src="/client/img/icon/search.png" alt=""></a> <a href="#"><img
						src="/client/img/icon/heart.png" alt=""></a> <a
						href="/client/shoppingcart/index"><img
						src="/client/img/icon/cart.png" alt=""> <span>${count }</span></a>
					<div class="price">$VND</div>
				</div>
			</div>
		</div>
		<div class="canvas__open">
			<i class="fa fa-bars"></i>
		</div>
	</div>
</header>