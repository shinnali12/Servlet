<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post input</title>
</head>
<body>
	<form method="post" action="/jsp/ex/ex03.jsp">
		<lable>닉네임 : </lable><input type="text" name="nickname">
		
		<h3>좋아하는 동물을 하나 고르세요</h3>
		<lable for="dogRadio">강아지</lable><input type="radio" id="dogRadio" value="dog" name="animal"> 
		<lable for="catRadio">고양이</lable><input type="radio" id="catRadio" value="cat" name="animal">
		<lable for="lionRadio">사자</lable><input type="radio" id="lionRadio" value="lion" name="animal">
		
		
		<h3>좋아하는 과일을 하나 고르세요</h3>
		
		
		

		<button type="submit">입력</button>
	</form>
	</body>
</html>