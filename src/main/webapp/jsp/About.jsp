<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>YouTunes | About Us</title>
<!--  Bootstrap StyleSheet CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	
<link rel="stylesheet" href="/youtunes/css/site.css" type="text/css" />

</head>
<body>
<jsp:include page="TopNav.jsp" flush="true" />

<section class="p-5 text-center text-light bg-dark" >
			<div class="container">
				<div class="d-sm-flex text-left align-items-center ml-3">
					<div class="text-left">
						<h1 class="fw-light pt-5">You<span class="text-warning">Tunes</span></h1>
						<p class="text-muted">Who We Are</p>
						<p>
			        		YouTunes is a multi-platform web application that is one of the fastest-rising downloads in all of social media. 
			        		Multiple artists have turned to YouTunes as a platform for releasing their newest material with a complete artist-owned 
			        		purchasing model. Users see YouTunes as the first stop to find out announcements, sample tracks and build-your-own 
			        		music bundles for their favorite artists, that they can easily take with them on-the-go by storing those bundles in 
			        		the cloud, or have them downloaded to their favorite device.
			      		</p>
						
						<a href="store?action=newAlbum" class="btn btn-primary my-2">Add An Album</a>
						
					</div>
						<img alt="" src="/youtunes6/images/about.svg" class="img-fluid w-50 ms-5"/>
					
					
				</div>
			</div>
		</section>




<jsp:include page="Footer.jsp" flush="true" />

</body>
</html>