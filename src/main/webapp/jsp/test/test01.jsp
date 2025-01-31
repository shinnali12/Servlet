<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>    
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>

	<%--
		1. 점수들의 평균 구하기
		스크립틀릿(scriptlet) <% %> 문법을 사용해서 주어진 점수들의 평균을 구하세요.
		int[] scores = {80, 90, 100, 95, 80};
		2. 채점 결과
		아래 채점표로 시험점수가 몇점인지 구하세요.
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		3. 1부터 n까지의 합계를 구하는 함수
		jsp의 선언문 <%! %> 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요.
		만든 함수를 이용해서 50까지의 합의 결과를 출력하세요.
		4. 나이 구하기
		주어진 생년월일을 가진 사람의 나이를 구하세요.
		String birthDay = "20010820";
		
	 --%>
	 
	 <h3>1. 점수들의 평균 구하기</h3>
	 <% 
	 	int[] scores = {80, 90, 100, 95, 80};
	 	int sum = 0;	
	 
	 	for(int i = 0; i < scores.length; i++) {
	 		sum += scores[i];
	 	}
	 	
	 	double average = sum / (double)scores.length;
	 %>
	 
	 <h3>점수 평균은 <%= average %> 입니다.</h3>
	 
	 <h3>2. 채점 결과</h3>
	 
	 <%
	 	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	 	
		int sum2 = 0;
		for(int i = 0; i < scoreList.size(); i++) {
			if(scoreList.get(i).equals("O")) {
				sum2 += 10;  
			}
		}
		
//		int score = 100;
//		for(String answer:scoreList) {
//			if(answer.equals("X")) {
//				score -= 10;
//			}
//		}
		
	 	 
	 %>
	 
	 <h3>채점 결과는 <%= sum2 %>점 입니다.</h3>
	 
	 <h3>3. 1부터 n까지의 합계를 구하는 함수</h3>
	 
	 <%!
	 	
	 	int number = 50;
	 	int numbersSum = addNumbers(number);
	 	
	 	public static int addNumbers(int number) {
	 		int sum3 = 0;
	 		
	 		for(int i = 1; i <= number; i++) {
				sum3 += i;
			}
			
			return sum3;			
	 	}
	 
	 %>
	 
	 <h3>1에서 <%= number %>까지의 합은 <%= numbersSum %></h3>	 
	 
	 <h3>4. 나이 구하기</h3>
	 <%
	 	String birthDay = "20010820";
	 	int year = Integer.parseInt(birthDay.substring(0, 4));
	 	
	 	int age = 2025 - year - 1;
	 	
	 %>
	 
	 <h3><%= birthDay %>의 나이는 <%= age %>살 입니다.</h3>

</body>
</html>