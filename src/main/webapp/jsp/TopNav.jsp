<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<header>
	<!-- NAVBAR -->
	<nav class="navbar navbar-expand-lg bg-dark fixed-top">
		<div class="container-fluid">
			
			<a class="navbar-brand text-light px-5" href="store?action=showWelcome">You<span class="text-warning">Tunes</span></a> <!-- LOGO -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse d-flex justify-content-end" id="navbarNav">
				<!-- NAV LINKS IN UL -->
				<ul class="navbar-nav px-5">
					<li class="nav-item"><a class="nav-link active text-warning"
						aria-current="page" href="store?action=showArtists">Artists</a></li>
					<li class="nav-item"><a class="nav-link" href="store?action=showAboutUs">About Us</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="store?action=showContactUs">Contact Us</a></li>
				</ul>
			</div>
		</div>
	</nav>
</header>