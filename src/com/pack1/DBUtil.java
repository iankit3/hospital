package com.pack1;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBUtil {
 public static Connection conn=null;
	
	public static  Connection getConnect()
	{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String cs="jdbc:oracle:thin:@localhost:1521:XE";
		
		String usr="system";
		String pass="root123";

		try {
			conn=DriverManager.getConnection(cs,usr,pass);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return conn;		
		
	}
	
	public static void closeConn(Connection conn){
		
		if(conn !=null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	}


}
