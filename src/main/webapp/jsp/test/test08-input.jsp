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
		List<Map<String, Object>> list = new ArrayList<>();
	    Map<String, Object> map = new HashMap<String, Object>() {
	        { 
	            put("id", 1000);
	            put("title", "아몬드"); 
	            put("author", "손원평"); 
	            put("publisher", "창비");
	            put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9791198363503.jpg");
	        } 
	    };
	    list.add(map);
	
	    map = new HashMap<String, Object>() {
	        { 
	            put("id", 1001);
	            put("title", "사피엔스"); 
	            put("author", "유발 하라리"); 
	            put("publisher", "김영사");
	            put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788934972464.jpg");
	        } 
	    };
	    list.add(map);
	
	    map = new HashMap<String, Object>() {
	        { 
	            put("id", 1002);
	            put("title", "코스모스"); 
	            put("author", "칼 세이건"); 
	            put("publisher", "사이언스북");
	            put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/9788983711892.jpg");
	        } 
	    };
	    list.add(map);
	
	    map = new HashMap<String, Object>() {
	        { 
	            put("id", 1003);
	            put("title", "나미야 잡화점의 기적"); 
	            put("author", "히가시노 게이고"); 
	            put("publisher", "현대문학");
	            put("image", "https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/4808972756194.jpg");
	        } 
	    };
	    list.add(map);
		
		int id = Integer.parseInt(request.getParameter("id"));
		%>		
				
				
		<div class="d-flex">
		<% 	for(Map<String, Object> bookList:list) {
				int bookId = (Integer)bookList.get("id");
				if(bookId == id) { %>
			<div>
				<img name="image" src="<%= bookList.get("image") %>">
			</div>
			
			<div class="mt-3 ml-3">
				<div class="font-weight-bold display-2"><%= bookList.get("title") %></div>
				<div class="text-info display-3"><%= bookList.get("author") %></div>
				<div class="text-secondary display-4"><%= bookList.get("publisher") %></div>
			</div>
		<%		}
			} %>	
		</div>
			
		
		
	</div>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
