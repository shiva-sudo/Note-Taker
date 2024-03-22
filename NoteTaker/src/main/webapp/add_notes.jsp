<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Note</title>
<%@include file="allJsCss.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
	</div>
	<div class="container ">
		<h1>Please Make Your Note Details</h1>
		<br>
		<!-- This is add Form -->
		<form action="SaveNoteServlet" method="post">

			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
					class="form-control" name="title" id="title"
					aria-describedby="notetitle" placeholder="Enter here" required
					type="text" />
			</div>

			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea class="form-control" name="content" id="content"
					style="height: 300px" placeholder="Please enter content here."
					required="required"></textarea>
			</div>
			<div class="continer text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>

		</form>
	</div>




</body>
</html>