<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
</head>
<body>

		<div>
			<a href="/dashboard">Dashboard</a>
		</div>
	<div class="body">
		<p>Title: <c:out value="${song.title}"/>
		</p>
		<p>Artist:<c:out value="${song.artist}"/>
		</p>
		<p>Ratings:<c:out value="${song.rating}"/>
		</p>
		
		<div>
			<a href="/songs/${song.id}/destroy">delete</a>
		</div>
		
		
		
		
	</div>
</body>
</html>