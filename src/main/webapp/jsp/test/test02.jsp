<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 측정 결과</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

	<%
		// 키와 몸무게를 입력 받아서 BMI 수치를 계산하고 비만도를 표시하는 기능
		
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		
		int height1 = Integer.parseInt(height);
		int weight1 = Integer.parseInt(weight);
		
		double bmi =  weight1 / ((height1 / 100.0) * (height1 / 100.0));
		
//		18.5 미만	저체중
//		18.5 이상 ~ 25 미만	정상
//		25 이상 ~ 30 미만	과체중
//		30 이상	비만

		String result = null;		

		if(bmi < 18.5) {
			result = "저체중";
		} else if(bmi < 25) {
			result = "정상";			
		} else if(bmi < 30) {
			result = "과체중";
		} else {
			result = "비만";
		}
	
	
	%>

	<h3> BMI 측정결과 </h3>
	<div class="d-flext display-3">당신은 <span class="text-info"> <%= result %></span> 입니다.</div>
	<div class="mt-3">BMI 수치 : <%= bmi %></div>
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	

</body>
</html>