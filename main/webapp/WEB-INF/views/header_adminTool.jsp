<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<header class="u-clearfix u-header u-header" id="sec-b689">
	<div class="header__top">
		<div class="container" style="max-height: 30px;">
			<div class="row">
				<div class="col-lg-6 col-md-5">
					<div class="header__top__left">
						
					</div>
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
	<div class="u-clearfix u-sheet u-sheet-1">
		<a href="" class="u-image u-logo u-image-1" data-image-width="512"
			data-image-height="512"> </a> <a href="" data-page-id="2560929011"
			class="u-border-active-palette-2-base u-border-hover-palette-1-base u-border-none u-btn u-btn-round u-button-style u-custom-font u-font-roboto u-black u-radius-16 u-text-body-alt-color u-text-hover-grey-50 u-btn-1">ADMINISTATION
			TOOL</a>
		<nav
			class="u-align-left u-dropdown-icon u-menu u-menu-dropdown u-offcanvas u-offcanvas-shift u-menu-1"
			data-responsive-from="XL">
			<div class="menu-collapse" style="font-size: 1rem;">
				<a
					class="u-button-style u-custom-left-right-menu-spacing u-nav-link"
					href="#" style="font-size: calc(1em + 8px);"> <svg
						class="u-svg-link" preserveAspectRatio="xMidYMin slice"
						viewBox="0 0 302 302" style="">
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
							xlink:href="#svg-8a8f"></use></svg> <svg
						xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
						id="svg-8a8f" x="0px" y="0px" viewBox="0 0 302 302"
						style="enable-background: new 0 0 302 302;" xml:space="preserve"
						class="u-svg-content">
							<g>
							<rect y="36" width="302" height="30"></rect>
							<rect y="236" width="302" height="30"></rect>
							<rect y="136" width="302" height="30"></rect>
</g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g></svg>
				</a>
			</div>
			<div class="u-custom-menu u-nav-container">
				<ul class="u-nav u-spacing-2 u-unstyled u-nav-1">
					<li class="u-nav-item"><a
						class="u-active-palette-3-light-1 u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-white u-text-grey-90 u-text-hover-white"
						href="ADMINISTRATION-TOOL.jsp" style="padding: 10px;">ADMIN
							TOOL</a></li>
					<li class="u-nav-item"><a
						class="u-active-palette-3-light-1 u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-white u-text-grey-90 u-text-hover-white"
						href="HOME.jsp" style="padding: 10px;">STAFF</a></li>
					<li class="u-nav-item"><a
						class="u-active-palette-3-light-1 u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-white u-text-grey-90 u-text-hover-white"
						href="#" style="padding: 10px;">PRODUCT</a>
						<div class="u-nav-popup">
							<ul
								class="u-border-1 u-border-palette-3-light-1 u-h-spacing-9 u-nav u-unstyled u-v-spacing-5 u-nav-2">
								<li class="u-nav-item"><a
									class="u-active-black u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-custom-color-2 u-text-hover-white u-white"
									href="/admin/product/edit">PRODUCT EDITION</a></li>
								<li class="u-nav-item"><a
									class="u-active-black u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-custom-color-2 u-text-hover-white u-white"
									href="/admin/product/list">RPODUCT LIST</a></li>
							</ul>
						</div></li>
					<li class="u-nav-item"><a
						class="u-active-palette-3-light-1 u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-white u-text-grey-90 u-text-hover-white"
						href="/admin/user" style="padding: 10px;">USERS</a></li>
					<li class="u-nav-item"><a
						class="u-active-palette-3-light-1 u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-white u-text-grey-90 u-text-hover-white"
						href="/admin/order/index" style="padding: 10px;">ORDER</a></li>
				</ul>
			</div>
			<div class="u-custom-menu u-nav-container-collapse">
				<div
					class="u-align-center u-black u-container-style u-inner-container-layout u-opacity u-opacity-90 u-sidenav">
					<div class="u-inner-container-layout u-sidenav-overflow">
						<div class="u-menu-close"></div>
						<ul
							class="u-align-center u-nav u-popupmenu-items u-spacing-9 u-text-hover-palette-3-light-1 u-unstyled u-nav-3">
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								href="/index" style="padding: 10px;">Trang Chủ</a></li>
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								href="#" style="padding: 10px;">Nhân Viên</a>
								<div class="u-nav-popup">
									<ul
										class="u-border-1 u-border-palette-3-light-1 u-h-spacing-9 u-nav u-unstyled u-v-spacing-5 u-nav-4">
										<li class="u-nav-item"><a
											class="u-button-style u-nav-link" href="/admin/staff/index">Chỉnh Sửa
												</a></li>
										<li class="u-nav-item"><a
											class="u-button-style u-nav-link" href="/admin/staff/list">DS Nhân Viên
												</a></li>
									</ul>
								</div>
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								href="#" style="padding: 10px;">Sản Phẩm</a>
								<div class="u-nav-popup">
									<ul
										class="u-border-1 u-border-palette-3-light-1 u-h-spacing-9 u-nav u-unstyled u-v-spacing-5 u-nav-4">
										<li class="u-nav-item"><a
											class="u-button-style u-nav-link" href="/admin/product/index">Chỉnh Sửa
												</a></li>
										<li class="u-nav-item"><a
											class="u-button-style u-nav-link" href="/admin/product/list">DS Sản Phẩm
												</a></li>
									</ul>
								</div></li>
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								href="/admin/customer/index" style="padding: 10px;">Người Dùng</a></li>
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								href="/admin/order/index" style="padding: 10px;">ORDER</a></li>
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								href="/admin/category/index" style="padding: 10px;">Loại SP</a>
							</li>
							
							<li class="u-nav-item"><a class="u-button-style u-nav-link"
								href="/admin/report/index" style="padding: 10px;">Thống Kê</a></li>
						</ul>
					</div>
				</div>
				<div class="u-menu-overlay"></div>
			</div>
		</nav>
		<form action="#" method="get"
			class="u-border-2 u-border-black-light-1 u-search u-search-left u-white u-search-1">
			<button class="u-search-button" type="submit">
				<span
					class="u-icon-rectangle u-black u-search-icon u-spacing-10 u-text-body-alt-color u-search-icon-1">
					<svg class="u-svg-link" preserveAspectRatio="xMidYMin slice"
						viewBox="0 0 56.966 56.966" style="">
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
							xlink:href="#svg-e236"></use></svg> <svg class="u-svg-content"
						viewBox="0 0 56.966 56.966" x="0px" y="0px" id="svg-e236"
						style="enable-background: new 0 0 56.966 56.966;">
							<path
							d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23
	s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92
	c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17
	s-17-7.626-17-17S14.61,6,23.984,6z"></path></svg>
				</span>
			</button>
			
		</form>

	</div>
</header>