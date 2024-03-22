<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit : Note Taker</title>
<%@include file="allJsCss.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Edit your note</h1>
		<%
			int noteId =Integer.parseInt(request.getParameter("note_id").trim());
			Session s =FactoryProvider.getFactory().openSession();
			Note note = (Note)s.get(Note.class, noteId);
		%>
		<form action="UpdateServlet" method="post">
			<input value="<%=note.getId() %>"name="noteId" type="hidden"/>
			
			<div class="form-group">
				<label for="title">Note Title</label> <input type="text"
					class="form-control" name="title" id="title"
					aria-describedby="notetitle" placeholder="Enter here" required
					type="text" value=<%=note.getTitle() %> />
			</div>

			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea class="form-control" name="content" id="content"
					style="height: 300px" placeholder="Please enter content here."
					required="required"><%=note.getContent() %></textarea>
			</div>
			<div class="continer text-center">
				<button type="submit" class="btn btn-success">Save Note</button>
			</div>

		</form>
		
	</div>

</body>
</html>