<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<link 
 
    rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" 
    integrity="sha384-EvBWSlnoFgZlXJvpzS+MAUEjvN7+gcCwH+qh7GRFOGgZO0PuwOFro7qPOJnLfe7l" 
    crossorigin="anonymous">

<% 
	int year = Calendar.getInstance().get(Calendar.YEAR);
	
%>
<footer class="text-muted py-5 text-center text-warning bg-dark">
	<div class="container">
		<p class="float-end mb-1">
			<a href="#"> <i class="bi bi-arrow-up-circle text-lg text-primary"></i></a>
		</p>
		
			<p class="px-3 d-inline ms-3">
				<i class="bi bi-facebook"></i>
				<i class="bi bi-instagram"></i>
				<i class="bi bi-linkedin"></i>
				<i class="bi bi-spotify"></i>
			</p>
			<p class="px-3 d-inline">&copy; <%=year%> -  You<span class="text-warning">Tunes</span> </p>
		
		
		
	</div>
</footer>