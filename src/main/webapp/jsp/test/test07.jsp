<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 결과</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

	<% 
		List<Map<String, Object>> list = new ArrayList<>();
	    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	    list.add(map);
	    
	    String menu = request.getParameter("menu");
	    String filter = request.getParameter("filter");
	    
	    // "on" / null 상태 
	    
    %>
    
    
    
    <div class="container">
    
	    <h3 class="text-center">검색 결과</h3>
	    <table class="table text-center">
	    	<thead>
	    		<tr>
	    			<th>메뉴</th>
	    			<th>상호</th>
	    			<th>별점</th>
	    		</tr>
	    	</thead>
	    
	    	<tbody>
	    	<% for(Map<String, Object> objectList:list) {
	    		if(objectList.get("menu").equals(menu)) {
	    			// filter가 null 이면 
	    			// filter가 "on"이면 point가 4초과 | null이 false가 되면 "point > 4"를 확인하는 것은 filter가 on이라는 뜻으로 간결하게 적을수 있다. 
	    			double point = (Double)objectList.get("point");	    			
	    			if(filter == null || (filter.equals("on") && point > 4)) {
	    		%>
	    		<tr>
	    			<td><%= objectList.get("menu") %></td>
					<td><%= objectList.get("name") %></td>
					<td><%= objectList.get("point") %></td>
	    		</tr>
	    	<% 		}
	    		}
	    	
	    	} %>
	    	</tbody>
	    </table>
    </div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>