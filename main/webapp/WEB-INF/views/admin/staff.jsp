<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="INTUITIVE">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>STAFF EDIT</title>
    <link rel="stylesheet" href="/admin/nicepage.css" media="screen">
<link rel="stylesheet" href="/admin/REPORTS.css" media="screen">
<link rel="stylesheet" href="/admin/staff.css" media="screen">

    <script class="u-script" type="text/javascript" src="/admin/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="/admin/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.3.3, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i">
    
    
    
    
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
  <body class="u-body"><header class="u-clearfix u-header u-header" id="sec-b689"><div class="u-clearfix u-sheet u-sheet-1">
        <a href="https://nicepage.com" class="u-image u-logo u-image-1" data-image-width="512" data-image-height="512">
          <img src="/PS15061_TranLeHongPhuc_Assignment_SOF301_Java4/views/ADMINSTATION_TOOL/images/unnamed.png" class="u-logo-image u-logo-image-1">
        </a>
        <a href="ADMINISTRATION-TOOL.jsp" data-page-id="2560929011" class="u-border-active-palette-2-base u-border-hover-palette-1-base u-border-none u-btn u-btn-round u-button-style u-black u-custom-font u-font-roboto u-palette-3-light-1 u-radius-16 u-text-body-alt-color u-text-hover-black u-btn-1">ADMINISTATION TOOL</a>
        <nav class="u-align-left u-dropdown-icon u-menu u-menu-dropdown u-offcanvas u-offcanvas-shift u-menu-1" data-responsive-from="XL">
          <div class="menu-collapse" style="font-size: 1rem;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-nav-link" href="#" style="font-size: calc(1em + 8px);">
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 302 302" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-8a8f"></use></svg>
              <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-8a8f" x="0px" y="0px" viewBox="0 0 302 302" style="enable-background:new 0 0 302 302;" xml:space="preserve" class="u-svg-content"><g><rect y="36" width="302" height="30"></rect><rect y="236" width="302" height="30"></rect><rect y="136" width="302" height="30"></rect>
</g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-spacing-2 u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-white u-text-grey-90 u-text-hover-white" href="ADMINISTRATION-TOOL.jsp" style="padding: 10px;">ADMINISTRATION TOOL</a>
</li><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-white u-text-grey-90 u-text-hover-white" href="HOME.jsp" style="padding: 10px;">STAFF</a>
</li><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-white u-text-grey-90 u-text-hover-white" href="#" style="padding: 10px;">PRODUCT</a><div class="u-nav-popup"><ul class="u-border-1 u-border-palette-3-light-1 u-h-spacing-9 u-nav u-unstyled u-v-spacing-5 u-nav-2"><li class="u-nav-item"><a class="u-active-black u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-custom-color-2 u-text-hover-white u-white" href="/admin/product/edit">PRODUCT EDITION</a>
</li><li class="u-nav-item"><a class="u-active-black u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-custom-color-2 u-text-hover-white u-white" href="/admin/product/list">RPODUCT LIST</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-white u-text-grey-90 u-text-hover-white" href="/admin/user" style="padding: 10px;">USERS</a>
</li><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-white u-text-grey-90 u-text-hover-white" href="/admin/order" style="padding: 10px;">ORDER</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-align-center u-black u-container-style u-inner-container-layout u-opacity u-opacity-90 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-spacing-9 u-text-hover-palette-3-light-1 u-unstyled u-nav-3"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/index" style="padding: 10px;">USER TOOL</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#" style="padding: 10px;">STAFF</a><div class="u-nav-popup"><ul class="u-border-1 u-border-palette-3-light-1 u-h-spacing-9 u-nav u-unstyled u-v-spacing-5 u-nav-4"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/admin/staff/index">STAFF EDITION</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/admin/staff/list">STAFF LIST</a>
</li></ul>
</div><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#" style="padding: 10px;">PRODUCT</a><div class="u-nav-popup"><ul class="u-border-1 u-border-palette-3-light-1 u-h-spacing-9 u-nav u-unstyled u-v-spacing-5 u-nav-4"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/admin/product/index">PRODUCT EDITION</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/admin/product/list">PRODUCT LIST</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/admin/customer/index" style="padding: 10px;">USERS</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/admin/order/index" style="padding: 10px;">ORDER</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/admin/category/index" style="padding: 10px;">CATEGORY</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/admin/promotion/index" style="padding: 10px;">PROMOTION</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="/admin/report/index" style="padding: 10px;">REPORT</a>
</li></ul>
              </div>
            </div>
            <div class="u-menu-overlay"></div>
          </div>
        </nav>
        <form action="#" method="get" class="u-border-2 u-border-black u-search u-search-left u-white u-search-1">
          <button class="u-search-button" type="submit">
            <span class="u-icon-rectangle u-black u-search-icon u-spacing-10 u-text-body-alt-color u-search-icon-1">
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 56.966 56.966" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-e236"></use></svg>
              <svg class="u-svg-content" viewBox="0 0 56.966 56.966" x="0px" y="0px" id="svg-e236" style="enable-background:new 0 0 56.966 56.966;"><path d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23
	s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92
	c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17
	s-17-7.626-17-17S14.61,6,23.984,6z"></path></svg>
            </span>
          </button>
          <input class="u-search-input" type="search" name="search" value="" placeholder="Search">
        </form>
        <div class="u-social-icons u-spacing-10 u-social-icons-1">
          <a class="u-social-url" title="facebook" target="_blank" href=""><span class="u-icon u-social-facebook u-social-icon u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-a715"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-a715"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M73.5,31.6h-9.1c-1.4,0-3.6,0.8-3.6,3.9v8.5h12.6L72,58.3H60.8v40.8H43.9V58.3h-8V43.9h8v-9.2
            c0-6.7,3.1-17,17-17h12.5v13.9H73.5z"></path></svg></span>
          </a>
          <a class="u-social-url" title="twitter" target="_blank" href=""><span class="u-icon u-social-icon u-social-twitter u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-b9eb"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-b9eb"><circle fill="currentColor" class="st0" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M83.8,47.3c0,0.6,0,1.2,0,1.7c0,17.7-13.5,38.2-38.2,38.2C38,87.2,31,85,25,81.2c1,0.1,2.1,0.2,3.2,0.2
            c6.3,0,12.1-2.1,16.7-5.7c-5.9-0.1-10.8-4-12.5-9.3c0.8,0.2,1.7,0.2,2.5,0.2c1.2,0,2.4-0.2,3.5-0.5c-6.1-1.2-10.8-6.7-10.8-13.1
            c0-0.1,0-0.1,0-0.2c1.8,1,3.9,1.6,6.1,1.7c-3.6-2.4-6-6.5-6-11.2c0-2.5,0.7-4.8,1.8-6.7c6.6,8.1,16.5,13.5,27.6,14
            c-0.2-1-0.3-2-0.3-3.1c0-7.4,6-13.4,13.4-13.4c3.9,0,7.3,1.6,9.8,4.2c3.1-0.6,5.9-1.7,8.5-3.3c-1,3.1-3.1,5.8-5.9,7.4
            c2.7-0.3,5.3-1,7.7-2.1C88.7,43,86.4,45.4,83.8,47.3z"></path></svg></span>
          </a>
          <a class="u-social-url" title="instagram" target="_blank" href=""><span class="u-icon u-social-icon u-social-instagram u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-0ccc"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-0ccc"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M55.9,38.2c-9.9,0-17.9,8-17.9,17.9C38,66,46,74,55.9,74c9.9,0,17.9-8,17.9-17.9C73.8,46.2,65.8,38.2,55.9,38.2
            z M55.9,66.4c-5.7,0-10.3-4.6-10.3-10.3c-0.1-5.7,4.6-10.3,10.3-10.3c5.7,0,10.3,4.6,10.3,10.3C66.2,61.8,61.6,66.4,55.9,66.4z"></path><path fill="#FFFFFF" d="M74.3,33.5c-2.3,0-4.2,1.9-4.2,4.2s1.9,4.2,4.2,4.2s4.2-1.9,4.2-4.2S76.6,33.5,74.3,33.5z"></path><path fill="#FFFFFF" d="M73.1,21.3H38.6c-9.7,0-17.5,7.9-17.5,17.5v34.5c0,9.7,7.9,17.6,17.5,17.6h34.5c9.7,0,17.5-7.9,17.5-17.5V38.8
            C90.6,29.1,82.7,21.3,73.1,21.3z M83,73.3c0,5.5-4.5,9.9-9.9,9.9H38.6c-5.5,0-9.9-4.5-9.9-9.9V38.8c0-5.5,4.5-9.9,9.9-9.9h34.5
            c5.5,0,9.9,4.5,9.9,9.9V73.3z"></path></svg></span>
          </a>
        </div>
      </div></header>
      <section class="u-clearfix u-palette-3-light-1 u-section-1" id="carousel_1dbd" style="background: linear-gradient( rgba(0, 0, 0, 0.7), 
        rgba(0, 0, 0, 0.7)),url(/admin/img/staff.png) ">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-text u-text-default u-text-1 u-text-white">STAFF PROFILE</h1>
        <div class="u-align-left u-container-style u-expanded-width-xs u-group u-white u-group-1">
          <div class="u-container-layout u-valign-top-md u-valign-top-sm u-valign-top-xs u-container-layout-1">
            <div class="u-align-left u-form u-form-1" >
              <form:form action="/admin/staff/index" modelAttribute="item" method="POST" enctype="multipart/form-data" class=" " style="padding: 10px" source="custom"  name="form" >
                <div class="u-form-group u-form-name u-form-group-1">
                  <label for="name-5a14" class="u-label" >ID</label>
                  <form:input type="text" path="id" placeholder="Enter your Name" id="name-5a14" name="id" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" required=""/>
                </div> <br>
                <div class="u-form-group u-form-group-2">
                  <label for="name-5a14" class="u-label" >FULLNAME</label>
                  <form:input type="text" path="fullname" placeholder="Enter your full name" id="email-5a14" name="fullname" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" required="required"/>
                </div><br>
                <div class="u-form-group u-form-group-3">
                  <label for="text-a33d" class="u-label">PASSWORD</label>
                  <form:input type="password" path="password" placeholder="Enter your password" id="text-a33d" name="password" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white"/>
                </div><br>
                <div class="u-form-email u-form-group u-form-group-4">
                  <label for="text-014f" class="u-label">EMAIL</label>
                  <form:input type="email" path="email" id="text-014f"  class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" placeholder="Enter a valid email address"/>
                </div><br>
                 <div class="u-form-group u-form-group-5">
                  <label for="number-5a14" class="u-label" >Numberphone</label>
                  <form:input type="number" path="phone" placeholder="Enter your numberphone" id="number-5a14" name="phone" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" required="required"/>
                </div><br>
                <div class="u-form-group u-form-group-6" >
                    <label for="date-3b9a" class=" u-label" >Dateofbirth</label>
                    <form:input type="date" path="dateofbirth" placeholder="Date of birth" id="phone-3b9a" name="dateofbirth" value="" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-black u-input u-input-rectangle u-text-black u-input-2" required=""/>
                </div><br>
                <div class="u-form-group u-form-group-7" >
                    <label for="text-160a" class=" u-label">Image <input type="text" name="image1" value="${item.image}" readonly="true" style="border: none;"></label>
                     <input type="file"  id="text-160a" name="photo"  accept="image/png, image/jpg, image/jpge" value=""  class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-black u-input u-input-rectangle u-text-black u-input-3" placeholder="Password"/>
                </div><br>
                <div class="u-form-group u-form-group-8"> <b>ROLE&emsp;&emsp;</b>
					<form:radiobutton   name="admin" path="admin"
							class="input-check"  value="true"/> &nbsp;Admin &ensp; <form:radiobutton path="admin"  
							 name="admin" class="input-check"
							 value="false"/> &nbsp;User
				</div><br>
                <div class="u-form-group u-form-group-9"><b>GENDER&ensp;</b>
					<form:radiobutton  path="gender" name="gender" 
							class="input-check"  value="true"/> &nbsp;Male &ensp; <form:radiobutton 
							 name="gender" path="gender" class="input-check"
							 value="false"/> &nbsp;Female
				</div><br>
                      
                 <div class="u-form-group u-form-group-10">
                  <label for="text-a33d" class="u-label" >Address</label>
                  <form:input path="address" type="text" placeholder="Enter your address" id="text-a33d" name="address" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" required="required"/>
                </div><br>
                <div class="  u-form-group u-form-submit" style="width: 80%">
                  <button formaction="/admin/staff/create" class="u-border-2 u-border-black u-btn u-btn-submit u-button-style u-hover-black u-none u-text-black u-text-hover-white u-btn-1">create<br>
                  </button>
                  <input type="submit" value="submit" class="u-form-control-hidden" >&emsp;&emsp;&emsp;
                  <button formaction="/admin/staff/update"  class="u-border-2 u-border-black u-btn u-btn-submit u-button-style u-hover-black u-none u-text-black u-text-hover-white u-btn-1">update<br>
                  </button>
                  <input type="submit" value="submit" class="u-form-control-hidden" >
                  <button formaction="/admin/staff/delete/${item.id}" class="u-border-2 u-border-black u-btn u-btn-submit u-button-style u-hover-black u-none u-text-black u-text-hover-white u-btn-1">delete<br>
                  </button>
                  <input type="submit" value="submit" class="u-form-control-hidden" >&emsp;&emsp;&emsp;
                     <button formaction="/admin/staff/index" class="u-border-2 u-border-black u-btn u-btn-submit u-button-style u-hover-black u-none u-text-black u-text-hover-white u-btn-1" style="width: 135px">new<br>
                  </button>
                  <input type="submit" value="submit" class="u-form-control-hidden" >
                </div>
                 <c:if test="${not empty error }">
									<div style="width: 550px; height: 50px; background-color:rgb(149, 0, 0); color:  white;padding: 10px;text-align: center;">*${error }*</div>
				 </c:if>
               
                
                <input type="hidden" value="" name="recaptchaResponse" >
              </form:form>
            </div>
          </div>
        </div>
        <div class="u-expanded-width-xs u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-container-style u-list-item u-palette-5-dark-3 u-repeater-item u-list-item-1">
              <div class="u-container-layout u-similar-container u-container-layout-2">
                <h5 class="u-text u-text-2">số điện thoại</h5><span class="u-icon u-icon-circle u-text-palette-1-base u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 405.333 405.333" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-3427"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 405.333 405.333" x="0px" y="0px" id="svg-3427" style="enable-background:new 0 0 405.333 405.333;"><g><g><path d="M373.333,266.88c-25.003,0-49.493-3.904-72.725-11.584c-11.328-3.904-24.171-0.896-31.637,6.699l-46.016,34.752    c-52.779-28.16-86.571-61.931-114.389-114.368l33.813-44.928c8.512-8.533,11.563-20.971,7.915-32.64    C142.592,81.472,138.667,56.96,138.667,32c0-17.643-14.357-32-32-32H32C14.357,0,0,14.357,0,32    c0,205.845,167.488,373.333,373.333,373.333c17.643,0,32-14.357,32-32V298.88C405.333,281.237,390.976,266.88,373.333,266.88z     M384,373.333c0,5.888-4.8,10.667-10.667,10.667c-194.091,0-352-157.909-352-352c0-5.888,4.8-10.667,10.667-10.667h74.667    c5.867,0,10.667,4.779,10.667,10.667c0,27.243,4.267,53.995,12.629,79.36c1.237,3.989,0.235,8.107-3.669,12.16l-38.827,51.413    c-2.453,3.264-2.837,7.637-0.981,11.264c31.637,62.144,70.059,100.587,132.651,132.651c3.605,1.877,8.021,1.493,11.285-0.981    l52.523-39.808c2.859-2.816,7.061-3.797,10.859-2.539c25.515,8.427,52.267,12.693,79.531,12.693    c5.867,0,10.667,4.779,10.667,10.667V373.333z"></path>
</g>
</g></svg></span>
                <p class="u-text u-text-3">0962463995 (Mr Phuc) - 01674871177 (Mr Tien)</p>
              </div>
            </div>
            <div class="u-container-style u-list-item u-palette-5-dark-3 u-repeater-item u-list-item-2">
              <div class="u-container-layout u-similar-container u-container-layout-3">
                <h5 class="u-text u-text-4">địa chỉ</h5><span class="u-icon u-icon-circle u-text-palette-1-base u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-ed0b"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" id="svg-ed0b" style="enable-background:new 0 0 512 512;"><g><g><path d="M256,0C156.748,0,76,80.748,76,180c0,33.534,9.289,66.26,26.869,94.652l142.885,230.257    c2.737,4.411,7.559,7.091,12.745,7.091c0.04,0,0.079,0,0.119,0c5.231-0.041,10.063-2.804,12.75-7.292L410.611,272.22    C427.221,244.428,436,212.539,436,180C436,80.748,355.252,0,256,0z M384.866,256.818L258.272,468.186l-129.905-209.34    C113.734,235.214,105.8,207.95,105.8,180c0-82.71,67.49-150.2,150.2-150.2S406.1,97.29,406.1,180    C406.1,207.121,398.689,233.688,384.866,256.818z"></path>
</g>
</g><g><g><path d="M256,90c-49.626,0-90,40.374-90,90c0,49.309,39.717,90,90,90c50.903,0,90-41.233,90-90C346,130.374,305.626,90,256,90z     M256,240.2c-33.257,0-60.2-27.033-60.2-60.2c0-33.084,27.116-60.2,60.2-60.2s60.1,27.116,60.1,60.2    C316.1,212.683,289.784,240.2,256,240.2z"></path>
</g>
</g></svg></span>
                <p class="u-text u-text-5">92/1A Nguyễn Văn Quá , tổ 9, khu phố 2A , phường Đông Hưng Thuận, Quận 12, HCM&nbsp;</p>
              </div>
            </div>
            <div class="u-container-style u-list-item u-palette-5-dark-3 u-repeater-item u-list-item-3">
              <div class="u-container-layout u-similar-container u-container-layout-4">
                <h5 class="u-text u-text-6">GIỜ LÀM VIỆC</h5><span class="u-icon u-icon-circle u-text-palette-1-base u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512.00042 512" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-f65a"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 512.00042 512" id="svg-f65a"><path d="m172.578125 310.394531v2.308594h67.191406c6.414063 0 12.054688 7.953125 12.054688 17.183594 0 9.234375-5.640625 17.695312-12.054688 17.695312h-91.300781c-7.183594 0-17.441406-4.871093-17.441406-12.308593v-24.878907c0-40.265625 80.789062-63.347656 80.789062-95.917969 0-8.207031-5.128906-18.210937-19.492187-18.210937-10.257813 0-19.234375 5.128906-19.234375 19.238281 0 7.4375-7.953125 14.617188-21.03125 14.617188-10.257813 0-17.953125-4.617188-17.953125-20.773438 0-31.289062 28.726562-49.242187 57.960937-49.242187 29.753906 0 59.757813 18.722656 59.757813 53.089843 0 55.652344-79.246094 73.863282-79.246094 97.199219zm216.199219-20.773437c0-9.230469-4.101563-18.464844-12.308594-18.464844h-11.027344v-17.953125c0-8.460937-10.003906-12.054687-20.007812-12.054687-10 0-20.003906 3.59375-20.003906 12.054687v17.953125h-22.054688l45.394531-91.046875c.769531-1.792969 1.28125-3.332031 1.28125-4.871094 0-9.234375-13.078125-15.132812-20.003906-15.132812-6.414063 0-12.824219 2.820312-16.671875 10.257812l-59.242188 116.183594c-1.539062 2.820313-2.054687 5.640625-2.054687 7.691406 0 8.976563 5.898437 13.851563 13.335937 13.851563h60.015626v27.183594c0 8.207031 10.003906 12.3125 20.003906 12.3125 10.003906 0 20.007812-4.105469 20.007812-12.3125v-27.183594h11.027344c6.15625 0 12.308594-9.234375 12.308594-18.46875zm-48.105469 167.53125c-17.921875 7.503906-36.804687 12.554687-56.128906 15.003906-10.957031 1.390625-18.710938 11.402344-17.320313 22.359375 1.386719 10.925781 11.367188 18.714844 22.355469 17.324219 22.90625-2.90625 45.292969-8.894532 66.546875-17.792969 10.1875-4.269531 14.988281-15.984375 10.71875-26.171875-4.265625-10.1875-15.980469-14.992188-26.171875-10.722656zm116.710937-72.226563c-8.769531-6.710937-21.324218-5.039062-28.039062 3.730469-11.757812 15.367188-25.519531 29.113281-40.898438 40.855469-8.78125 6.699219-10.464843 19.25-3.765624 28.03125 6.714843 8.792969 19.269531 10.453125 28.035156 3.761719 18.199218-13.894532 34.484375-30.15625 48.398437-48.339844 6.710938-8.773438 5.039063-21.324219-3.730469-28.039063zm37.125-117.773437c-10.949218-1.386719-20.964843 6.371094-22.351562 17.328125-2.445312 19.320312-7.484375 38.199219-14.980469 56.121093-4.261719 10.1875.542969 21.90625 10.730469 26.167969 10.148438 4.246094 21.890625-.496093 26.171875-10.730469 8.886719-21.253906 14.863281-43.636718 17.761719-66.535156 1.386718-10.957031-6.371094-20.964844-17.332032-22.351562zm-265.167968 205.003906c-107.941406-13.691406-189.339844-106.214844-189.339844-215.210938 0-119.894531 97.023438-216.945312 216.941406-216.945312 108.996094 0 201.511719 81.398438 215.207032 189.34375 1.390624 10.957031 11.414062 18.714844 22.355468 17.324219 10.957032-1.390625 18.714844-11.398438 17.324219-22.359375-16.101563-126.933594-124.492187-224.308594-254.886719-224.308594-142.003906 0-256.941406 114.921875-256.941406 256.945312 0 130.527344 97.496094 238.804688 224.304688 254.894532 10.929687 1.382812 20.964843-6.335938 22.359374-17.324219 1.390626-10.957031-6.367187-20.96875-17.324218-22.359375zm0 0"></path></svg></span>
                <p class="u-text u-text-7">T2 – T6 …… 7 am – 17 am, T7 7 am - 11am, Sun ....… Closed</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    
    
    <footer class="u-align-center-sm u-align-center-xs u-clearfix u-footer u-grey-80" id="sec-a58a"><div class="u-clearfix u-sheet u-sheet-1">
        <a href="https://nicepage.com" class="u-image u-logo u-image-1" data-image-width="512" data-image-height="512">
          <img src="/PS15061_TranLeHongPhuc_Assignment_SOF301_Java4/views/ADMINSTATION_TOOL/images/unnamed.png" class="u-logo-image u-logo-image-1">
        </a>
        <div class="u-clearfix u-expanded-width u-gutter-30 u-layout-wrap u-layout-wrap-1">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-row">
              <div class="u-align-center-sm u-align-center-xs u-align-left-lg u-align-left-md u-align-left-xl u-container-style u-layout-cell u-left-cell u-size-20 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1"><!--position-->
                  <div data-position="" class="u-position u-position-1"><!--block-->
                    <div class="u-block">
                      <div class="u-block-container u-clearfix"><!--block_header-->
                        <h5 class="u-block-header u-text"><!--block_header_content-->Địa chỉ Email<!--/block_header_content--></h5><!--/block_header--><!--block_content-->
                        <div class="u-block-content u-text"><!--block_content_content-->1. tranlehongphuc2001@gmail.com<br>2. phuctlhps15061@fpt.edu.vn<!--/block_content_content-->
                        </div><!--/block_content-->
                      </div>
                    </div><!--/block-->
                  </div><!--/position-->
                  <h5 class="u-text u-text-default u-text-3">Số điện thoại :</h5>
                  <p class="u-text u-text-4">0962463995</p>
                </div>
              </div>
              <div class="u-align-center-sm u-align-center-xs u-align-left-lg u-align-left-md u-align-left-xl u-container-style u-layout-cell u-size-20 u-layout-cell-2">
                <div class="u-container-layout u-valign-top u-container-layout-2"><!--position-->
                  <div data-position="" class="u-position u-position-2"><!--block-->
                    <div class="u-block">
                      <div class="u-block-container u-clearfix"><!--block_header-->
                        <h5 class="u-block-header u-text"><!--block_header_content-->Địa chỉ làm việc :<!--/block_header_content--></h5><!--/block_header--><!--block_content-->
                        <div class="u-block-content u-text"><!--block_content_content-->&nbsp;92/1A đường Nguyễn Văn Quá , tổ 9, khu phố 2A , phường Đông Hưng Thuận , Quận 12 , Thành phố Hồ Chí Minh<!--/block_content_content--></div><!--/block_content-->
                      </div>
                    </div><!--/block-->
                  </div><!--/position-->
                </div>
              </div>
              <div class="u-align-center-sm u-align-center-xs u-align-left-lg u-align-left-md u-align-left-xl u-container-style u-layout-cell u-size-20 u-layout-cell-3">
                <div class="u-container-layout u-valign-top u-container-layout-3"><!--position-->
                  <div data-position="" class="u-position"><!--block-->
                    <div class="u-block">
                      <div class="u-block-container u-clearfix"><!--block_header-->
                        <h5 class="u-block-header u-text"><!--block_header_content-->Giờ làm việc :<!--/block_header_content--></h5><!--/block_header--><!--block_content-->
                        <div class="u-block-content u-text"><!--block_content_content-->&nbsp;Sáng : 7AM =&gt; 11AM<br>&nbsp;Chiều : 13AM =&gt;17AM<br>&nbsp;Thứ bảy làm buổi sáng.<br>&nbsp;Chủ nhật nghỉ.&nbsp;<!--/block_content_content-->
                        </div><!--/block_content-->
                      </div>
                    </div><!--/block-->
                  </div><!--/position-->
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="u-social-icons u-spacing-20 u-social-icons-1">
          <a class="u-social-url" title="facebook" target="_blank" href=""><span class="u-icon u-social-facebook u-social-icon u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-a2c0"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-a2c0"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M73.5,31.6h-9.1c-1.4,0-3.6,0.8-3.6,3.9v8.5h12.6L72,58.3H60.8v40.8H43.9V58.3h-8V43.9h8v-9.2
            c0-6.7,3.1-17,17-17h12.5v13.9H73.5z"></path></svg></span>
          </a>
          <a class="u-social-url" title="twitter" target="_blank" href=""><span class="u-icon u-social-icon u-social-twitter u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-88cf"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-88cf"><circle fill="currentColor" class="st0" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M83.8,47.3c0,0.6,0,1.2,0,1.7c0,17.7-13.5,38.2-38.2,38.2C38,87.2,31,85,25,81.2c1,0.1,2.1,0.2,3.2,0.2
            c6.3,0,12.1-2.1,16.7-5.7c-5.9-0.1-10.8-4-12.5-9.3c0.8,0.2,1.7,0.2,2.5,0.2c1.2,0,2.4-0.2,3.5-0.5c-6.1-1.2-10.8-6.7-10.8-13.1
            c0-0.1,0-0.1,0-0.2c1.8,1,3.9,1.6,6.1,1.7c-3.6-2.4-6-6.5-6-11.2c0-2.5,0.7-4.8,1.8-6.7c6.6,8.1,16.5,13.5,27.6,14
            c-0.2-1-0.3-2-0.3-3.1c0-7.4,6-13.4,13.4-13.4c3.9,0,7.3,1.6,9.8,4.2c3.1-0.6,5.9-1.7,8.5-3.3c-1,3.1-3.1,5.8-5.9,7.4
            c2.7-0.3,5.3-1,7.7-2.1C88.7,43,86.4,45.4,83.8,47.3z"></path></svg></span>
          </a>
          <a class="u-social-url" title="instagram" target="_blank" href=""><span class="u-icon u-social-icon u-social-instagram u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-e082"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-e082"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M55.9,38.2c-9.9,0-17.9,8-17.9,17.9C38,66,46,74,55.9,74c9.9,0,17.9-8,17.9-17.9C73.8,46.2,65.8,38.2,55.9,38.2
            z M55.9,66.4c-5.7,0-10.3-4.6-10.3-10.3c-0.1-5.7,4.6-10.3,10.3-10.3c5.7,0,10.3,4.6,10.3,10.3C66.2,61.8,61.6,66.4,55.9,66.4z"></path><path fill="#FFFFFF" d="M74.3,33.5c-2.3,0-4.2,1.9-4.2,4.2s1.9,4.2,4.2,4.2s4.2-1.9,4.2-4.2S76.6,33.5,74.3,33.5z"></path><path fill="#FFFFFF" d="M73.1,21.3H38.6c-9.7,0-17.5,7.9-17.5,17.5v34.5c0,9.7,7.9,17.6,17.5,17.6h34.5c9.7,0,17.5-7.9,17.5-17.5V38.8
            C90.6,29.1,82.7,21.3,73.1,21.3z M83,73.3c0,5.5-4.5,9.9-9.9,9.9H38.6c-5.5,0-9.9-4.5-9.9-9.9V38.8c0-5.5,4.5-9.9,9.9-9.9h34.5
            c5.5,0,9.9,4.5,9.9,9.9V73.3z"></path></svg></span>
          </a>
          <a class="u-social-url" title="linkedin" target="_blank" href=""><span class="u-icon u-social-icon u-social-linkedin u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-8d8f"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-8d8f"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M41.3,83.7H27.9V43.4h13.4V83.7z M34.6,37.9L34.6,37.9c-4.6,0-7.5-3.1-7.5-7c0-4,3-7,7.6-7s7.4,3,7.5,7
            C42.2,34.8,39.2,37.9,34.6,37.9z M89.6,83.7H76.2V62.2c0-5.4-1.9-9.1-6.8-9.1c-3.7,0-5.9,2.5-6.9,4.9c-0.4,0.9-0.4,2.1-0.4,3.3v22.5
            H48.7c0,0,0.2-36.5,0-40.3h13.4v5.7c1.8-2.7,5-6.7,12.1-6.7c8.8,0,15.4,5.8,15.4,18.1V83.7z"></path></svg></span>
          </a>
        </div>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="" target="_blank">
        <span>Website Builder Software</span>
      </a>. 
    </section>
    
       
    
    
   
  </body>
</html>