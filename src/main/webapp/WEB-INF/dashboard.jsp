<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Lookify</title>

</head>
<body>
	<div class="container">
		<div class="header">
			<a href="/songs/new">Add New</a> 
			<a href="/search/topTen">Top 10 Songs</a>

			<form method="POST" action="/songs/search">
				<label>Search: <input type="text" name="searchQuery"></label>

				<input type="submit" value="Search">
			</form>


		</div>		
		<div class = "body">
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Artist</th>
						<th scope="col">Title</th>
						<th scope="col">Rating</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
			<tbody>
				<c:forEach items="${songs}" var="song">
				<tr>
					<td><c:out value="${song.id}" /></td>
					<td><c:out value="${song.artist}" /></td>
					<td><a href="/songs/${song.id}">${song.title}</a></td>
					<td><c:out value="${song.rating}" /></td>
					<td><a href="/songs/${song.id}/destroy">delete</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	  </div>
	</div>
</body>
</html>