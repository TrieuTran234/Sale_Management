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
<title>PRODUCT LIST</title>

<link rel="stylesheet" href="/admin/nicepage.css" media="screen">
<link rel="stylesheet" href="/admin/VIDEO-LIST.css" media="screen">


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
		"logo": "/admin/img/logo.png",
		"sameAs": []
}</script>
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="VIDEO LIST">
<meta property="og:description" content="">
<meta property="og:type" content="website">
</head>
<body class="u-body">

	<div>
		<jsp:include page="/WEB-INF/views/header_adminTool.jsp" />
	</div>

	<section class="u-clearfix  u-section-1" id="carousel_c874"
		style="background-color: #000000; background-image: url('/admin/img/backroundsuper73.jpg'); background-repeat: no-repeat;">
		<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
			<div class="u-expanded-width u-table u-table-responsive u-table-1">

				<form action="/admin/product/list" method="POST">

					<input name="keywords" value="${keywords}"
						placeholder="Product Name Key words?" style="width: 70%">

					<button>Search</button>
					<br>

					<p>Sort by ${field}</p>
					<table class="u-table-entity">
						<colgroup>
							<col width="20%">
							<col width="20%">
							<col width="20%">
							<col width="10%">
							<col width="10%">
							<col width="20%">
						</colgroup>
						<thead
							class="u-align-center u-black u-custom-font u-heading-font u-table-header u-table-valign-top u-table-header-1">
							<tr style="height: 45px;">
								<th class="u-table-cell u-border-2"><a
									href="/admin/product/list/?field=id" class="u-text-white">PRODUCT
										ID</a></th>
								<th class="u-table-cell u-border-2"><a
									href="/admin/product/list/?field=name" class="u-text-white">PRODUCT
										NAME</a></th>
								<th class="u-table-cell u-border-2"><a
									href="/admin/product/list/?field=price" class="u-text-white">PRICE</a></th>
								<th class="u-table-cell u-border-2">AVAILABEL</th>
								<th class="u-table-cell u-border-2">CATEGORY ID</th>
								<th class="u-table-cell u-border-2">IMAGE</th>

							</tr>
						</thead>
						<tbody class="u-align-center u-table-body">
							<c:forEach var="item" items="${page.content}">
								<tr style="height: 78px;">
									<td
										class="u-border-2 u-border-grey-75 u-first-column u-table-cell u-white">${item.id }</td>
									<td
										class="u-border-2 u-border-grey-75 u-table-cell u-text-white">${item.name }</td>
									<td
										class="u-border-2 u-border-grey-75 u-white u-table-cell u-table-cell-12">${item.price}</td>
									<td class="u-border-2 u-border-grey-75 u-table-cell">
										${item.available }</td>
									<td
										class="u-border-2 u-border-grey-75 u-table-cell u-text-white">
										${item.category.id }</td>
									<td class="u-border-2 u-border-grey-75 u-table-cell"><img
										alt="" src="/uploads/product/${item.image}"
										style="width: 80px; height: 80px"></td>
									<td class="u-border-2 u-border-grey-75 u-white u-table-cell-13"><button
											formaction="/admin/product/edit/${item.id}"
											style="width: 50px; height: 40px; background-color: black; color: white; font-weight: bolder;">Edit</button></td>
									<td class="u-border-2 u-border-grey-75 u-white u-table-cell-13"><button
											formaction="/admin/product/delete/${item.id}"
											style="width: 50px; height: 40px; background-color: black; color: white; font-weight: bolder;">Del</button></td>
								</tr>
							</c:forEach>





						</tbody>
					</table>
					<div class="row">
						<div class="col-lg-12">
							<div class="u-align-left u-form-group u-form-submit">
								<a href="/admin/product/list?p=0&field=${field}"
									class="u-border-none u-btn u-btn-submit u-button-style u-text-body-alt-color-black  u-btn-1 u-black"
									style="color: black; font-weight: bold;">FIRST</a> <input
									type="submit" value="submit" class="u-form-control-hidden">
								<a href="/admin/product/list?p=${page.number-1}&field=${field}"
									class="u-border-none u-btn u-btn-submit u-button-style u-text-body-alt-color-black  u-btn-1 u-black"
									style="color: black; font-weight: bold">PREVIOUS</a> <input
									type="submit" value="submit" class="u-form-control-hidden">
								<a href="/admin/product/list?p=${page.number+1}&field=${field}"
									class="u-border-none u-btn u-btn-submit u-button-style u-text-body-alt-color-black  u-btn-1 u-black"
									style="color: black; font-weight: bold">NEXT</a> <input
									type="submit" value="submit" class="u-form-control-hidden">
								<a
									href="/admin/product/list?p=${page.totalPages-1}&field=${field}"
									class="u-border-none u-btn u-btn-submit u-button-style u-text-body-alt-color-black  u-btn-1 u-black"
									style="color: black; font-weight: bold">LAST</a> <input
									type="submit" value="submit" class="u-form-control-hidden">
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
	
	<div>
		<jsp:include page="/WEB-INF/views/footer.jsp" />
	</div>

</body>
</html>