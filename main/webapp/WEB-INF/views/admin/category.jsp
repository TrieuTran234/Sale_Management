<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="INTUITIVE">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>CATEGORY </title>
    <link rel="stylesheet" href="/admin/productedit.css" media="screen">
    <link rel="stylesheet" href="/admin/nicepage.css" media="screen">
<link rel="stylesheet" href="/admin/VIDEO-LIST.css" media="screen">
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
    <meta property="og:title" content="VIDEO LIST">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body"><header class="u-clearfix u-header u-header" id="sec-b689"><div class="u-clearfix u-sheet u-sheet-1">
        <a href="https://nicepage.com" class="u-image u-logo u-image-1" data-image-width="512" data-image-height="512">
          <img src="/PS15061_TranLeHongPhuc_Assignment_SOF301_Java4/views/ADMINSTATION_TOOL/images/unnamed.png" class="u-logo-image u-logo-image-1">
        </a>
        <a href="ADMINISTRATION-TOOL.jsp" data-page-id="2560929011" class="u-border-active-palette-2-base u-border-hover-palette-1-base u-border-none u-btn u-btn-round u-button-style u-custom-font u-font-roboto u-black u-radius-16 u-text-body-alt-color u-text-hover-grey-50 u-btn-1">ADMINISTATION TOOL</a>
        <nav class="u-align-left u-dropdown-icon u-menu u-menu-dropdown u-offcanvas u-offcanvas-shift u-menu-1" data-responsive-from="XL">
          <div class="menu-collapse" style="font-size: 1rem;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-nav-link" href="#" style="font-size: calc(1em + 8px);">
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 302 302" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-8a8f"></use></svg>
              <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-8a8f" x="0px" y="0px" viewBox="0 0 302 302" style="enable-background:new 0 0 302 302;" xml:space="preserve" class="u-svg-content"><g><rect y="36" width="302" height="30"></rect><rect y="236" width="302" height="30"></rect><rect y="136" width="302" height="30"></rect>
</g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-spacing-2 u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-white u-text-grey-90 u-text-hover-white" href="/PS15061_TranLeHongPhuc_Assignment_SOF301_Java4/Home/admin" style="padding: 10px;">ADMINISTRATION TOOL</a>
</li><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-white u-text-grey-90 u-text-hover-white" href="/PS15061_TranLeHongPhuc_Assignment_SOF301_Java4/views/ADMINSTATION_TOOL/HOME.jsp" style="padding: 10px;">HOME</a>
</li><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-white u-text-grey-90 u-text-hover-white" href="#" style="padding: 10px;">VIDEO</a><div class="u-nav-popup"><ul class="u-border-1 u-border-palette-3-light-1 u-h-spacing-9 u-nav u-unstyled u-v-spacing-5 u-nav-2"><li class="u-nav-item"><a class="u-active-black u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-custom-color-2 u-text-hover-white u-white" href="VIDEO.jsp">VIDEO EDITION</a>
</li><li class="u-nav-item"><a class="u-active-black u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-custom-color-2 u-text-hover-white u-white" href="VIDEO-LIST.jsp">VIDEO LIST</a>
</li></ul>
</div>
</li><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-white u-text-grey-90 u-text-hover-white" href="/PS15061_TranLeHongPhuc_Assignment_SOF301_Java4/UsersManagementServlet" style="padding: 10px;">USERS</a>
</li><li class="u-nav-item"><a class="u-active-palette-3-light-1 u-button-style u-hover-palette-3-light-1 u-nav-link u-text-active-white u-text-grey-90 u-text-hover-white" href="REPORTS.jsp" style="padding: 10px;">REPORTS</a>
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
        <form action="#" method="get" class="u-border-2 u-border-black-light-1 u-search u-search-left u-white u-search-1">
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
    <section class="u-clearfix  u-section-1" id="carousel_c874" style="background-color: #000000;
background-image:url('/admin/img/backroundsuper73.jpg');background-repeat: no-repeat;
    ">
    <div class="u-clearfix u-sheet u-sheet-1" style="margin-left: 27%">
    	
    	<form:form
				action="/admin/category/index"  modelAttribute="item"
				method="POST" enctype="multipart/form-data" class="" source="custom"
				name="form" style="padding: 34px; width: 750px; height:300px;">
				<div class="u-form-group u-form-name">
					<label for="name-6a67" class="u-label u-label-1">CATEGORY ID</label> 
					<form:input
						path="id" name="id" type="text" placeholder="Enter category id?"  id="name-6a67" 
						
						class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
						required=""/>
				</div>
				<br>
				<div class="u-form-group">
					<label for="email-6a67" class="u-label u-label-2 u-text-white">CATEGORY NAME
						</label> <form:input path="name" type="text" placeholder="Enter category name" id="email-6a67"
						 
						class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white"
						required="required"/>
				</div>
				
		
		
				<div class="u-align-left u-form-group u-form-submit">
					<button
						class="u-border-none u-btn u-btn-submit u-button-style u-text-body-alt-color-black  u-btn-1 u-black"
						style="color: black; font-weight: bold;"
						formaction="/admin/category/create">Create</button>
					<input type="submit" value="submit" class="u-form-control-hidden">
					<button
						class="u-border-none u-btn u-btn-submit u-button-style u-text-body-alt-color-black  u-btn-1 u-black"
						style="color: black; font-weight: bold"
						formaction="/admin/category/update">Update</button>
					<input type="submit" value="submit" class="u-form-control-hidden">
					<button
						class="u-border-none u-btn u-btn-submit u-button-style u-text-body-alt-color-black  u-btn-1 u-black"
						style="color: black; font-weight: bold"
						formaction="/admin/category/delete/${item.id}">Delete</button>
					<input type="submit" value="submit" class="u-form-control-hidden">
					<button
						class="u-border-none u-btn u-btn-submit u-button-style u-text-body-alt-color-black  u-btn-1 u-black"
						style="color: black; font-weight: bold"
						formaction="/admin/category/index">New</button>
					<input type="submit" value="submit" class="u-form-control-hidden">
				</div>
				  <c:if test="${not empty error }">
						<div style="width: 500px; height: 50px; background-color:rgb(149, 0, 0); color:  white;padding: 10px;text-align: center;">*${error }*</div>
				  </c:if>
		                         
		                        
				<input type="hidden" value="" name="recaptchaResponse">
	 </form:form>
      
        <div class="u-expanded-width u-table u-table-responsive u-table-1">
       
        
          <table class="u-table-entity">
            <colgroup>
              <col width="20%">
              <col width="20%">
              <col width="20%">
              <col width="20%">
              <col width="20%">
            </colgroup>
            <thead class="u-align-center u-black u-custom-font u-heading-font u-table-header u-table-valign-top u-table-header-1">
              <tr style="height: 45px;">
                <th class="u-table-cell u-border-2"> ID</th>
                <th class="u-table-cell u-border-2">NAME </th>
                <th class="u-table-cell u-border-2"> EDIT</th>
                <th class="u-table-cell u-border-2">DELETE</th>
              </tr>
            </thead>
            <tbody class="u-align-center u-table-body">
             <c:forEach var="item" items="${items}">
              <tr style="height: 78px;">
                <td class="u-border-2 u-border-grey-75 u-first-column u-table-cell u-white">${item.id }</td>
                <td class="u-border-2 u-border-grey-75 u-table-cell "> <b> ${item.name }</b></td>
               
                <td class="u-border-2 u-border-grey-75 u-white u-table-cell-13" ><div style="width:70px ;height:50px;background-color:black ;margin: auto;"> <a href="/admin/category/edit/${item.id}" style="color: white;font-weight: bolder;" >Edit</a></div></td>
                <td class="u-border-2 u-border-grey-75 u-white u-table-cell-13"><div style="width:70px ;height:50px;background-color:black ;margin: auto;"><a href="/admin/category/delete/${item.id}" style="color:white ;font-weight: bolder;">Delete</a></div></td>
              </tr>
              
             
             </c:forEach>
            </tbody>
          </table>
          
          
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