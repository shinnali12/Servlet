package com.marondal.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/favorite/create")
public class favoriteCreateController extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = new MysqlService();
		
		mysqlService.connect();
		
		String query = "INSERT INTO `favorite` \r\n"
				+ "(`name`, `url`)\r\n"
				+ "VALUES \r\n"
				+ "('" + name + "', '" + url + "');";
		
		int count = mysqlService.update(query);
		
		response.sendRedirect("/db/favorite/list.jsp");
		
	}

}
