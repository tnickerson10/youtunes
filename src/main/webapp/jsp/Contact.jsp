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

<section class="p-5 text-center text-light bg-dark" >
			<div class="container">
				<div class="d-sm-flex text-left align-items-center ml-3">
					<div class="text-left">
						<h1 class="fw-light">Contact <span class="text-warning">Us</span></h1>
						<i class="bi bi-telephone-forward-fill text-lg text-warning"> Phone</i>
						<p>
			        		555-555-5555
			      		</p>
			      		<i class="bi bi-envelope-check-fill text-lg text-warning"> E-mail</i>
						<p>
			        		youtunes@jamout.com
			      		</p>
						
						
						
					</div>
						<img alt="" src="/youtunes6/images/contact.svg" class="img-fluid w-75 ms-5"/>
					
					
				</div>
			</div>
		</section>



<jsp:include page="Footer.jsp" flush="true" />


</body>
</html>