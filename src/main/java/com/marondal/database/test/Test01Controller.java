package com.marondal.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/db/test01")
public class Test01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			String url = "jdbc:mysql://localhost:3306/shinnali";
			String id = "root";
			String password = "root";
			
			Connection connection = DriverManager.getConnection(url, id, password);
			
			// 쿼리
			
//			String query = "INSERT INTO `real_estate`\r\n"
//					+ "(`realtorId`, `address`,  `area`, `type`, `price`)\r\n"
//					+ "VALUES\r\n"
//					+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000);";
//			
//			Statement statement = connection.createStatement();
//			
//			int count = statement.executeUpdate(query);
//			
//			out.println("삽입 결과 : " + count);
//			
//			statement.close();
			
			// 매물 주소, 면적, 타입
			String query = "SELECT `address`, `area`, `type`\r\n"
					+ "FROM `real_estate`\r\n"
					+ "ORDER BY `id` DESC LIMIT 10;";
			
			Statement statement = connection.createStatement();
			
			ResultSet resultSet = statement.executeQuery(query);
		
						
			while(resultSet.next()) {
				
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				
				out.println("매물주소 : " + address + " 면적 : " + area + " 타입 : " + type);
				
			};
			
			statement.close(); // 하나의 쿼리가 수행되면 무조건 끝내는 메소드 적기!!!!
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
}
