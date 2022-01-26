<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Sprint 3 -->
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="youtunes.model.Album"%>

<jsp:useBean id="albumDao" scope="application" class="youtunes.service.impl.JdbcAlbumDao" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YouTunes | Welcome</title>
<!--  Bootstrap StyleSheet CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	
	<jsp:include page="TopNav.jsp" flush="true" />
	
	<main>
		<section class="p-5 text-center text-light bg-dark" >
			<div class="container">
				<div class="d-sm-flex align-items-center ml-3">
					<div>
						<h1 class="fw-light">You<span class="text-warning">Tunes</span></h1>
						<p class="text-muted">RE-DISCOVER MUSIC YOUR WAY</p>
						
						<a href="store?action=newAlbum" class="btn btn-primary my-2">Add An Album</a>
						
					</div>
						<img alt="" src="/youtunes6/images/music-hero.svg" class="img-fluid w-50 ms-5"/>
					
					
				</div>
			</div>
		</section>

		<div class="album py-5 bg-light">
			<div class="container">
			<h1 class="fw-medium text-dark text-left" >YOUR JAMS </h1>
				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
				
					<%
						List<Album> albums = albumDao.list();
						Iterator<Album> iterator = albums.iterator();
						while (iterator.hasNext())
						{
							Album album = (Album)iterator.next();
					%>
					
					<div class="col">
						<div class="shadow-md">
							<img src="/youtunes6/images/<%=album.getImgUrl()%>" height="350" class="card-img-top" />

							<div class="card-body bg-primary">
								<p class="card-text text-light">
									<span><%=album.getTitle()%></span>
									<br />
									<small class="text-dark"><em><%=album.getGenre()%></em></small>
								</p>
								
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<a href="store?action=albumDetails&albumId=<%=album.getAlbumId()%>" class="btn btn-sm btn-outline-secondary bg-light">Edit</a>
										<a href="store?action=deleteAlbum&albumId=<%=album.getAlbumId()%>" class="btn btn-sm btn-outline-secondary bg-dark">Delete</a>
									</div>
									<small class="text-dark">$<%=album.getPrice()%></small>
								</div>
							</div>
						</div>
					</div>
					<% } %>
				</div>
			</div>
		</div>
	</main>

	<!-- Page footer -->
	<jsp:include page="Footer.jsp" flush="true" />
	
	<!-- Bootstrap JavaScript  -->
	<jsp:include page="ScriptFooter.jsp" flush="true" />
</body>
</html>