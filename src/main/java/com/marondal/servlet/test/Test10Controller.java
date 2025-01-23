package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet {
	
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};	
	
		
	@Override
	public void doPost(HttpServletRequest reqeust, HttpServletResponse response) throws IOException {

		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String id = reqeust.getParameter("id");
		String password = reqeust.getParameter("password");
		
		String userId = userMap.get("id");
		String userPassword = userMap.get("password");
		String userName = userMap.get("name");
		
		out.println(""
				+ "<html>\n"
				+ "		<head><title>검색결과</title></head>"				
				+ "			<body>\n");
		if(!id.equals(userId)) {
			out.println("		<h4>id가 일치하지 않습니다.</h4>");
		} else if(!password.equals(userPassword)) {
			out.println("		<h4>password가 일치하지 않습니다.</h4>");
		} else {
			out.println("		<h4>" + userName + "님 환영합니다.</h4>");
		}
		
		out.println(""
				+ "			</body>\n"
				+ "</html>");
		
	}

}
