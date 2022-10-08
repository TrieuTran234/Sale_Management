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
  <body class="u-body">
   
   	<div>
		<jsp:include page="/WEB-INF/views/header_adminTool.jsp" />
	</div>
  
   
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
    
    
        
    <div>
		<jsp:include page="/WEB-INF/views/footer.jsp" />
	</div>
    
  
  </body>
</html>