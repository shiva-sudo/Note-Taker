<%@page import="org.hibernate.Query"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes : Note Taker</title>
<%@include file="allJsCss.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
	</div>
	<br>
	<h1 class="text-uppercase">All Notes :</h1>
	<div class="row">
		<div class="col-12">
			<%
			Session sesson = FactoryProvider.getFactory().openSession();
			Query query=sesson.createQuery("from Note");
			List<Note> list = query.list();
			for(Note note:list){
			%>
			<div class="card mt-3">
				<img class="card-img-top m-4" style ="max-width:100px"src="img/notepad.png" alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title"><%=note.getTitle() %></h5>
					<p class="card-text"><%=note.getContent() %></p>
					<p><b class = "text-primary"><%=note.getAddedDate() %></b></p>
					
					<div class="container text-center">
						<a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
						<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primaryr">Update</a>
					</div>
				</div>
			</div>

			<% 
			}
			sesson.close();
			%>
		</div>
	</div>


</body>
</html>