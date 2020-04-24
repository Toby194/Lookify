<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE>
<head>
<meta charset="YTF-8">
<title>Search</title>
<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"crossorigin="anonymous">
</head>
<body>
	<h1>Top 10 Songs</h1>
	<div class="header">
			<a href="/dashboard">Dashboard</a>
	</div>
	<div class="container">
		<div class="header1"></div>
		<div class="body">
			<table class="body">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Rating</th>
						<th scope="col">Title</th>
						<th scope="col">Artist</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${songs}" var="song">
						<tr>
							<td><c:out value="${song.rating}" /></td>
							<td><c:out value="${song.title}" /></td>
							<td><c:out value="${song.artist}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
