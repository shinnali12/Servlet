<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환 결과</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	
	
	<%
		// cm 단위의 길이를 입력 받고, 인치, 야드, 피트 미터 단위로 변환하는 기능
		// 길이를 입력 받는 input 과 원하는 단위를 선택할 수 있는 checkbox
		
		String cmString = request.getParameter("centimeter");
			
		int centimeter = Integer.parseInt(cmString);
		
		String[] units = request.getParameterValues("unit");
		String result = "";
		
		for(int i = 0; i < units.length; i++) {
		if(units[i].equals("inch")) {
			double inch = centimeter * 0.39;
			result += inch + "in<br>";
		} else if(units[i].equals("feet")) {
			double feet = centimeter * 0.032808399;
			result += feet + "ft<br>";
		} else if(units[i].equals("yard")) {
			double yard = centimeter * 0.010936133;
			result += yard + "yd<br>";
		} else if(units[i].equals("meter")) {
			double meter = centimeter / 100.0;
			result += meter + "m<br>";
		}
			
		}
		
		
	%>
	<div class="container">
		<h3>변환 결과</h3>
		<h3><%= centimeter %> cm</h3>
		<hr>
		<h3>
			<%= result %><br>
		</h3>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>