<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@page import="youtunes.model.Album"%>
<%@page import="youtunes.model.Artist"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>

<jsp:useBean id="albumDao" scope="application" class="youtunes.service.impl.JdbcAlbumDao" />
<jsp:useBean id="artistDao" scope="application" class="youtunes.service.impl.JdbcArtistDao" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YouTunes | Welcome</title>

<!--  Bootstrap CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	
<link rel="stylesheet" type="text/css" href="css/site.css">	
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
					
					List<Artist> artists = artistDao.list(); 
					Iterator<Artist> iterator = artists.iterator();
					%>
				
					<%
					
						List<Album> albums = albumDao.list();
						Iterator<Album> iterator2 = albums.iterator();
						
						
						while (iterator.hasNext())
						{
							Artist artist = (Artist)iterator.next();
							Album album = (Album)iterator2.next();		
							
					%>
					
					<div class="col">
						<div class="shadow-md">
							<img src="/youtunes6/images/<%=album.getImgUrl()%>" height="275" class="card-img-top " />

							<div class="card-body rounded-3 shadow-md bg-warning">
								<p class="card-text text-light">
									<span><%=artist.getFirstName()%> <%=artist.getLastName()%>:</span>
									<span><%=album.getTitle()%></span>
									<br />
									<small class="text-dark"><em><%=album.getGenre()%></em></small>
									<p>
									<a href="https://open.spotify.com/" target="_blank"> <i class="pe-2 bi bi-play-circle-fill text-lg text-dark"></i></a>
									<a href="https://open.spotify.com/" target="_blank"> <i class="pe-2 bi bi-cloud-download-fill text-lg text-dark"></i></a>
									<a href="https://open.spotify.com/" target="_blank"> <i class="pe-2 bi bi-share-fill text-lg text-dark"></i></a>
									</p>
								
								
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<a href="store?action=albumDetails&albumId=<%=album.getAlbumId()%>" class="btn btn-sm btn-outline-secondary text-dark bg-light">Edit</a>
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
		<section class="bg-primary text-light p-3">
			<div class="container">
				<div class="d-md-flex justify-content-between align-items-center">
					<h3 class="mb-3 mb-md-0">Get The Latest Artist News</h3>
					<div class="input-group news-email">
					  <input type="text" class="form-control" placeholder="Enter Email">
					  <button class="btn btn-dark btn-lg" type="button">Sumbit</button>
					</div>
				</div>
			</div>
		
		</section>
	</main>

	<!-- footer -->
	<jsp:include page="Footer.jsp" flush="true" />
	
	
	<jsp:include page="ScriptFooter.jsp" flush="true" />
</body>
</html>