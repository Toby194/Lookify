<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Song</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="header">
			<a href="/dashboard">Dashboard</a>
		</div>
		<div>
			<form:form action="/songs" method="post" modelAttribute="song">
				<p>
					<form:label path="title">Title</form:label>
					<form:errors path="title" />
					<form:input path="title" />
				</p>
				<p>
					<form:label path="artist">Artist</form:label>
					<form:errors path="artist" />
					<form:input path="artist" />
				</p>
				<p>
					<form:label path="rating">Rating(1-10)</form:label>
					<form:errors path="rating" />
					<form:input path="rating" />
				</p>
				<input type="submit" value="Submit" />
			</form:form>

		</div>
	</div>

</body>
</html>