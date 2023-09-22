package com.Db;
import java.lang.Class;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
	
	private static Connection conn = null;
		
		public static Connection getConn() {
			if(conn==null) {
				try {
					
					Class.forName("com.mysql.cj.jdbc.Driver");
					conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes","root","1234");
					
				} catch (ClassNotFoundException | SQLException  e) {
					e.printStackTrace();
				}
			}
			return conn;
	}
}
