<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산 계산 결과</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	
	<%
		// 두 수와 연산자를 입력 받아서 계산해주는 기능
		// 연산자는 +, -, X, ÷ 사칙연산 중에 하나를 선택
		
		String number1String = request.getParameter("number1");
		String number2String = request.getParameter("number2");
		String arithmetic = request.getParameter("arithmetic");
		
		int number1 = Integer.parseInt(number1String);
		int number2 = Integer.parseInt(number2String);
		
		double total= 0;
		
		if(arithmetic.equals("＋")) {
			total = (double)number1 + number2;
		} else if(arithmetic.equals("－")) {
			total = (double)number1 - number2;
		} else if(arithmetic.equals("×")) {
			total = (double)number1 * number2;
		} else if(arithmetic.equals("÷")) {
			total = (double)number1 / number2;
		}
	
	
	%>

	<div class="container">
		<h2>계산 결과</h2>
		
		<div class="display-3"><%= number1 %> <%= arithmetic %> <%= number2 %> = <span class="text-primary"><%= total %></span> </div>
	</div>
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>