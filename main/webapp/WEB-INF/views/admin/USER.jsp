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
    <title>USER</title>
    <link rel="stylesheet" href="/admin/nicepage.css" media="screen">
<link rel="stylesheet" href="/admin/REPORTS.css" media="screen">
<link rel="stylesheet" href="/admin/REGISTRATION.css" media="screen">
    <script class="u-script" type="text/javascript" src="/admin/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="/admin/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.3.3, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i">
    
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
  
  
  
    <section class="u-align-center u-clearfix u-gradient u-section-1" id="carousel_0e48" style=" background-color: #000000;
background-image: linear-gradient(355deg, #000000 20%, #ffffff 74%);
       ">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-expanded-width u-tab-links-align-justify u-tabs u-tabs-1">
          <ul class="u-border-2 u-border-palette-2-base u-spacing-10 u-tab-list u-unstyled" role="tablist">
            <li class="u-tab-item" role="presentation">
              <a class="active u-active-black u-button-style u-tab-link u-text-active-white u-text-hover-palette-2-base u-tab-link-1" id="link-tab-0da5" href="#tab-0da5" role="tab" aria-controls="tab-0da5" aria-selected="true" style="">USER EDITION</a>
            </li>
            <li class="u-tab-item" role="presentation">
              <a  class="u-active-black u-button-style u-tab-link u-text-active-white u-text-hover-palette-2-base u-tab-link-2" id="link-tab-14b7" href="#tab-14b7" role="tab" aria-controls="tab-14b7" aria-selected="false" >USER LIST</a>
            </li>
            
          </ul>
          <div class="u-tab-content">
            <div class="u-container-style u-tab-active u-tab-pane u-white u-tab-pane-1" id="tab-0da5" role="tabpanel" aria-labelledby="link-tab-0da5">
              <div class="u-container-layout u-container-layout-1">
                <div class="u-container-style u-expanded-width u-group u-group-1">
                  <div class="u-container-layout">
                    <div class="u-form u-form-1">
                      <form action="#" method="POST" class="u-clearfix u-form-horizontal u-form-spacing-15 u-inner-form" style="padding: 15px;" source="custom">
                       
                       
                        <div class="u-form-send-message u-form-send-success">#FormSendSuccess</div>
                        <div class="u-form-send-error u-form-send-message">#FormSendError</div>
                        <input type="hidden" value="" name="recaptchaResponse">
                      </form>
                    </div>
                   <div class="u-align-left u-container-style  u-layout-cell u-shape-rectangle u-size-30-xl u-size-33-lg u-size-33-md u-size-33-sm u-size-33-xs u-layout-cell-2 " style="width: 1090px;" >
                    <div class="u-container-layout u-valign-middle u-container-layout-1" >
                     <div class="u-form u-form-1">
                    <form:form action="/admin/customer/index" method="POST" modelAttribute="item" enctype="multipart/form-data" class="" style="padding: 0px;height: 850px;width: 800px ;background-color: white;" source="custom" name="form">
                      <div class="u-form-group u-form-name" >
                        <label for="name-3b9a" class="u-form-control-hidden u-label" wfd-invisible="true">ID</label>
                        <form:input path="id" type="text" placeholder="ID" id="name-3b9a" name="fullname" value="" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-black u-input u-input-rectangle u-text-black u-input-1" required=""/>
                      </div>
                     
                      <br>
                      <div class="u-form-group u-form-group-1" >
                        <label for="text-160a" class="u-form-control-hidden u-label"></label>
                        <form:input type="password" path="password" id="text-160a" name="password" value="" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-black u-input u-input-rectangle u-text-black u-input-3" placeholder="Password"/>
                      </div>
                      <br>
                      <div class="u-form-group u-form-name">
                        <label for="name-3b9a" class="u-form-control-hidden u-label" wfd-invisible="true">Name</label>
                        <form:input type="text" path="fullname" placeholder="Name" id="name-3b9a" name="fullname" value="" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-black u-input u-input-rectangle u-text-black u-input-1" required=""/>
                      </div>
                      <br>
                      <div class="u-form-email u-form-group-2" >
                        <label for="email-3b9a" class="u-form-control-hidden u-label" wfd-invisible="true">Email</label>
                        <form:input path="email" type="email" placeholder="Email" id="email-3b9a" name="email" value="" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-black u-input u-input-rectangle u-text-black u-input-2" required=""/>
                      </div>
                       
                      <br>
                      <div class="u-form-group u-form-group-3" >
                        <label for="phone-3b9a" class="u-form-control-hidden u-label" wfd-invisible="true">Phone</label>
                        <form:input path="phone" type="number" placeholder="Phone" id="phone-3b9a" name="phone" value="" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-black u-input u-input-rectangle u-text-black u-input-2" required=""/>
                      </div>
                      <br>
                      <div class="u-form-group u-form-group-4" >
                        <label for="date-3b9a" class="u-form-control-hidden u-label" wfd-invisible="true">Dateofbirth</label>
                        <form:input path="dateofBirth" type="date" placeholder="Date of birth" id="phone-3b9a" name="dateofBirth" value="" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-black u-input u-input-rectangle u-text-black u-input-2" required=""/>
                      </div>
                      <br>
                       <div class="u-form-group u-form-group-5" >
                        <label for="text-160a" class=" u-label">Image <input type="text" name="image1" value="${item.image}" readonly="true" style="border: none;"></label>
                        <input type="file" id="text-160a" name="photo" value="" class="u-border-2 u-border-no-left u-border-no-right u-border-no-top u-border-black u-input u-input-rectangle u-text-black u-input-3" placeholder="Password">
                      </div>
                      <br>
                      <div > <b>Active&emsp;&emsp;</b>
						<form:radiobutton path="active"  name="active" 
							class="input-check"  value="true"/> &nbsp;YES &ensp; <form:radiobutton path="active" 
							 name="active" class="input-check"
							 value="false"/> &nbsp;NO
						</div>
                      <br>
                     
                      <br>
                     	<div class="u-form-group u-form-message u-form-group-6">
                            <label for="message-106f" class="u-label u-label-6">Address</label>
                            <form:textarea path="address" placeholder="Enter your ADDRESS" rows="4" cols="50" id="message-106f" name="address"  class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white" required=""></form:textarea>
                          </div>
                      <br>
                       <div class="u-align-left u-form-group u-form-submit" style="position: absolute;left: 10px;width: 40%">
                        <button   class="u-active-palette-2-light-3 u-border-none u-btn u-btn-submit u-button-style u-hover-palette-2-light-3 u-text-active-black u-text-hover-black u-text-palette-2-base u-black u-btn-2" formaction="/admin/customer/create">Create<br>
                        </button>
                        <input type="submit" value="create" class="u-form-control-hidden" wfd-invisible="true">
                      </div>
                        <div class="u-align-left u-form-group u-form-submit" style="position:absolute ;width: 40%;margin-left: 250px">
                        <button  class="u-active-palette-2-light-3 u-border-none u-btn u-btn-submit u-button-style u-hover-palette-2-light-3 u-text-active-black u-text-hover-black u-text-palette-2-base u-black u-btn-2" formaction="/admin/customer/update">Update<br>
                        </button>
                        <input type="submit" value="update" class="u-form-control-hidden" wfd-invisible="true">
                      </div>
                        <div class="u-align-left u-form-group u-form-submit" style="position:absolute ;width: 40%;margin-left: 500px">
                        <button  class="u-active-palette-2-light-3 u-border-none u-btn u-btn-submit u-button-style u-hover-palette-2-light-3 u-text-active-black u-text-hover-black u-text-palette-2-base u-black u-btn-2" formaction="/admin/customer/delete/${item.id }">Delete<br>
                        </button>
                        <input type="submit" value="delete" class="u-form-control-hidden" wfd-invisible="true">
                      </div>
                        <div class="u-align-left u-form-group u-form-submit" style="width: 18%;margin-left: 750px">
                        <button  class="u-active-palette-2-light-3 u-border-none u-btn u-btn-submit u-button-style u-hover-palette-2-light-3 u-text-active-black u-text-hover-black u-text-palette-2-base u-black u-btn-2" formaction="/admin/customer/index">New<br>
                        </button>
                        <input type="submit" value="new" class="u-form-control-hidden" wfd-invisible="true">
                      </div>
                     
                      <c:if test="${not empty error }">
									<div style="width: 850px; height: 50px; background-color:rgb(149, 0, 0); color:  white;padding: 10px;text-align: center;">*${error }*</div>
									</c:if>
                      <input type="hidden" value="" name="recaptchaResponse" wfd-invisible="true">
                    </form:form>
                  	 </div>
                    </div>
                   </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-align-left u-container-style u-tab-pane u-white u-tab-pane-2" id="tab-14b7" role="tabpanel" aria-labelledby="link-tab-14b7">
              <div class="u-container-layout u-valign-top u-container-layout-3">
                <div class="u-container-style u-expanded-width u-group u-group-2">
                  <div class="u-container-layout">
                    <div class="u-form u-form-2">
                      <form action="#" method="POST" class="u-clearfix u-form-horizontal u-form-spacing-15 u-inner-form" style="padding: 15px;" source="custom">
                      
                      
                        <div class="u-form-send-message u-form-send-success">#FormSendSuccess</div>
                        <div class="u-form-send-error u-form-send-message">#FormSendError</div>
                        <input type="hidden" value="" name="recaptchaResponse">
                      </form>
                    <div class="u-expanded-width u-table ">
                    <form action="/admin/customer/list" method="get" >
                   
                      <table  class="u-table-entity">
                      
                        <colgroup>
                          <col width="25%">
                          <col width="25%">
                          <col width="25%">
                          <col width="25%">
                        </colgroup>
                        <thead  class="u-custom-font u-heading-font u-table-header u-table-header-3">
                          <tr style="height: 47px;">
                          	<th class="u-border-2 u-border-black u-table-cell">Image</th>
                            <th class="u-border-2 u-border-black u-table-cell">Id</th>
                            <th class="u-border-2 u-border-black u-table-cell">FULLname</th>
                            <th class="u-border-2 u-border-black u-table-cell">password</th>
                            <th class="u-border-2 u-border-black u-table-cell">Birthday</th>
                            <th class="u-border-2 u-border-black u-table-cell">Active</th>
                            <th class="u-border-2 u-border-black u-table-cell">phone</th>
                            <th class="u-border-2 u-border-black u-table-cell">address</th>
                             <th class="u-border-2 u-border-black u-table-cell">edit</th>
                          </tr>
                        </thead>
                        <tbody class="u-table-body">
                         <c:forEach var="item" items="${items}">
                          <tr style="height: 47px;">
                            <td class="u-border-2 u-border-grey-90 u-table-cell u-table-cell-21"><img alt="" src="/uploads/${item.image }" style="width: 70px; height: 70px"></td>
                            <td class="u-border-2 u-border-grey-90 u-palette-1-light-3 u-table-cell u-table-cell-22">${item.id }</td>
                            <td class="u-border-2 u-border-grey-90 u-palette-1-light-3 u-table-cell u-table-cell-23"> ${item.fullname }</td>
                            <td class="u-border-2 u-border-grey-90 u-palette-1-light-3 u-table-cell u-table-cell-24"> ${item.password }</td>
                            <td class="u-border-2 u-border-grey-90 u-palette-1-light-3 u-table-cell u-table-cell-25"> ${item.dateofBirth }</td>
                            <td class="u-border-2 u-border-grey-90 u-palette-1-light-3 u-table-cell u-table-cell-26">${item.active?'yes':'no'}</td>
                            <td class="u-border-2 u-border-grey-90 u-palette-1-light-3 u-table-cell u-table-cell-27">${item.phone}</td>
                            <td class="u-border-2 u-border-grey-90 u-palette-1-light-3 u-table-cell u-table-cell-28">${item.address}</td>
                          	<td class="u-border-2 u-border-grey-90 u-palette-1-light-3 u-table-cell u-table-cell-29"> <button formaction="/admin/customer/edit/${item.id}" style="width:50px ;height:40px;background-color:black ; color:white ;">Edit</button> </td>
                          	<td class="u-border-2 u-border-grey-90 u-palette-1-light-3 u-table-cell u-table-cell-30"> <button formaction="/admin/customer/delete/${item.id}" style="width:50px ;height:40px;background-color:black ; color:white ;">Del</button> </td>
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
            </div>
            <div class="u-container-style u-tab-pane u-white u-tab-pane-3" id="tab-2917" role="tabpanel" aria-labelledby="link-tab-2917">
              <div class="u-container-layout u-valign-top u-container-layout-5">
                <div class="u-container-style u-expanded-width u-group u-group-3">
                  <div class="u-container-layout">
                    <div class="u-form u-form-3">
                      <form action="#" method="POST" class="u-clearfix u-form-horizontal u-form-spacing-15 u-inner-form" style="padding: 15px;" source="custom">
                        <div class="u-form-group u-form-select u-label-none u-form-group-5">
                          <label for="select-9c6f" class="u-form-control-hidden u-label"></label>
                          <div class="u-form-select-wrapper">
                            <select id="select-9c6f" name="select" class="u-border-1 u-border-black u-input u-input-rectangle u-radius-17">
                              <option value="Item 1">Item 1</option>
                              <option value="Item 2">Item 2</option>
                              <option value="Item 3">Item 3</option>
                            </select>
                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                          </div>
                        </div>
                        <div class="u-form-group u-form-submit">
                          <a href="#" class="u-border-none u-btn u-btn-submit u-button-style u-hover-grey-90 u-palette-3-base u-text-white u-btn-3">Submit</a>
                          <input type="submit" value="submit" class="u-form-control-hidden">
                        </div>
                        <div class="u-form-send-message u-form-send-success">#FormSendSuccess</div>
                        <div class="u-form-send-error u-form-send-message">#FormSendError</div>
                        <input type="hidden" value="" name="recaptchaResponse">
                      </form>
                    </div>
                    <div class="u-expanded-width u-table u-table-responsive u-table-3">
                      <table class="u-table-entity">
                        <colgroup>
                          <col width="25%">
                          <col width="25%">
                          <col width="25%">
                          <col width="25%">
                        </colgroup>
                        <thead class="u-custom-font u-heading-font u-table-header u-table-header-3">
                          <tr style="height: 47px;">
                            <th class="u-border-2 u-border-black u-table-cell">sender name</th>
                            <th class="u-border-2 u-border-black u-table-cell">sender email</th>
                            <th class="u-border-2 u-border-black u-table-cell">receiver email</th>
                            <th class="u-border-2 u-border-black u-table-cell">sent date</th>
                          </tr>
                        </thead>
                        <tbody class="u-table-body">
                          <tr style="height: 47px;">
                            <td class="u-border-2 u-border-grey-90 u-table-cell u-table-cell-37">....</td>
                            <td class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-38">....</td>
                            <td class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-39"> ....</td>
                            <td class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-40"></td>
                          </tr>
                          <tr style="height: 47px;">
                            <td class="u-border-2 u-border-grey-90 u-table-cell"> ....</td>
                            <td class="u-border-2 u-border-grey-90 u-table-cell"> ....</td>
                            <td class="u-border-2 u-border-grey-90 u-table-cell"> ....</td>
                            <td class="u-border-2 u-border-grey-90 u-table-cell"></td>
                          </tr>
                          <tr style="height: 47px;">
                            <td class="u-border-2 u-border-grey-90 u-table-cell"> ....</td>
                            <td class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-46"> ....</td>
                            <td class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-47"> ....</td>
                            <td class="u-border-2 u-border-grey-90 u-palette-3-light-3 u-table-cell u-table-cell-48"></td>
                          </tr>
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
    
    
    
  </body>
</html>