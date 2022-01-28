<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YouTunes | Contact Us</title>
<!--  Bootstrap StyleSheet CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	
<link 
 
    rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" 
    integrity="sha384-EvBWSlnoFgZlXJvpzS+MAUEjvN7+gcCwH+qh7GRFOGgZO0PuwOFro7qPOJnLfe7l" 
    crossorigin="anonymous">
    
<link rel="stylesheet" href="/youtunes/css/site.css" type="text/css" />
    
</head>
    
</head>
<body>
<jsp:include page="TopNav.jsp" flush="true" />

<section class="p-5 text-left text-light bg-dark" >
			<div class="container">
				<div class="d-sm-flex align-items-bottom ">
					<div class="shadow-lg mt-5 mb-5 bg-dark rounded w-75">
						<h1 class="ms-3 mb-5 fw-light pt-4 text-lg">Contact <span class="text-warning">Us</span></h1>
						<i class="ms-3 bi bi-telephone-forward-fill text-lg text-warning pt-5"> Phone</i>
						<p class="ms-3 pt-3">
			        		555-555-5555
			      		</p>
			      		<i class="ms-3 bi bi-envelope-check-fill text-lg pt-5 text-warning"> E-mail</i>
						<p class="ms-3 pt-3">
			        		youtunes@jamout.com
			      		</p>
						<i class="ms-3 bi bi-house-fill text-lg pt-5 text-warning"> Address</i>
						<p class="ms-3 pt-3">
			        		1234 Rockin Dr. Somewhere, Someplace 8675309
			      		</p>
			      		
						
						
					</div>
						<img alt="" src="/youtunes6/images/contact.svg" class="img-fluid w-50 ms-5 pt-5"/>
					
					
				</div>
			</div>
		</section>



<jsp:include page="Footer.jsp" flush="true" />


</body>
</html>