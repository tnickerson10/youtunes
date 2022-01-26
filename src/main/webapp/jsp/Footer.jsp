<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<% 
	int year = Calendar.getInstance().get(Calendar.YEAR);
	
%>
<footer class="text-muted py-5 text-center text-warning bg-dark">
	<div class="container">
		<p class="float-end mb-1">
			<a href="#">Back to top</a>
		</p>
		<p>
			&copy; <%=year%> -  You<span class="text-warning">Tunes</span> 
		</p>
	</div>
</footer>