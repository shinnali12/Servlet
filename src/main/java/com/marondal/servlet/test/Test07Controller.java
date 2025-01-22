package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String creditcard = request.getParameter("creditcard");
		String price = request.getParameter("price");
		
		
		
		
		out.println(""
				+ "<html>\n"
				+ "		<head><title>주문결과</title></head>\n"
				+ "			<body>\n");
			
		if(!address.contains("서울시")) {
			out.println("			<h3>배달 불가 지역 입니다.</h3>");
		} else if(creditcard.equals("신한카드")) {
			out.println("			<h3>결제 불가 카드 입니다.</h3>");
		} else {
			out.println("			<h3>" + address + "배달 준비중</h3>");
		}
		
		out.println(""				
				+ "				<hr>\n"
				+ "				<div>결제 금액: " + price +"</div>\n"
				+ "			</body>\n"
				+ "</html>");
		
		
		
	}

}
