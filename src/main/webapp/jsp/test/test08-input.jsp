<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 세부 페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

	<div class="container">
				
		<%
	    String title = request.getParameter("title");
 		String author = request.getParameter("author");
 		String publisher = request.getParameter("publisher");
 		String image = request.getParameter("image");
		%>		
				
				
		<div class="d-flex">
			<div>
				<img name="image" src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791198363503.jpg"> <!-- src=image ?? -->
			</div>
			
			<div class="mt-3 ml-3">
				<span name="title" class="font-weight-bold display-2"><%= title %></span><br>
				<span name="author" class="text-info display-3"><%= author %></span><br>
				<span name="publisher" class="text-secondary display-4"><%= publisher %></span>
			</div>
		</div>
			
		<div class="d-flex">
			<div>
				<img src="https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788934972464.jpg"> <!-- bookList.get("image")-->
			</div>
			
			<div class="mt-3 ml-3">
				<span name="title" class="font-weight-bold display-2">사피엔스</span><br>
				<span name="author" class="text-info display-3">유발 하라리</span><br>
				<span name="publisher" class="text-secondary display-4">김영사</span>
			</div>
		</div>
		
	</div>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
