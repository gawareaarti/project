package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconnection {
	private static Connection conn;
	 
	 public static Connection getConn()
	 {
		 try {
			 Class.forName("oracle.jdbc.driver.OracleDriver");
				 conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","system","aaru1");
		 
		 }catch(Exception e) {
			 System.out.println(e);
		 }
		 return conn;
		 
	 }
}
